/*
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package jp.l1j.server.datatables;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import jp.l1j.server.model.L1UltimateBattle;
import jp.l1j.server.utils.L1DatabaseFactory;
import jp.l1j.server.utils.SqlUtil;

public class UbTable {
	private static Logger _log = Logger.getLogger(UbTable.class.getName());

	private static UbTable _instance = new UbTable();

	private HashMap<Integer, L1UltimateBattle> _ub = new HashMap<Integer, L1UltimateBattle>();

	public static UbTable getInstance() {
		return _instance;
	}

	private UbTable() {
		loadTable();
	}

	private void loadTable() {

		java.sql.Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {

			con = L1DatabaseFactory.getInstance().getConnection();
			pstm = con.prepareStatement("SELECT * FROM ub_settings");
			rs = pstm.executeQuery();

			while (rs.next()) {

				L1UltimateBattle ub = new L1UltimateBattle();
				ub.setUbId(rs.getInt("ub_id"));
				ub.setMapId(rs.getShort("ub_map_id"));
				ub.setLocX1(rs.getInt("ub_area_x1"));
				ub.setLocY1(rs.getInt("ub_area_y1"));
				ub.setLocX2(rs.getInt("ub_area_x2"));
				ub.setLocY2(rs.getInt("ub_area_y2"));
				ub.setMinLevel(rs.getInt("min_level"));
				ub.setMaxLevel(rs.getInt("max_level"));
				ub.setMaxPlayer(rs.getInt("max_player"));
				ub.setEnterRoyal(rs.getBoolean("enter_royal"));
				ub.setEnterKnight(rs.getBoolean("enter_knight"));
				ub.setEnterMage(rs.getBoolean("enter_mage"));
				ub.setEnterElf(rs.getBoolean("enter_elf"));
				ub.setEnterDarkelf(rs.getBoolean("enter_darkelf"));
				ub.setEnterDragonKnight(rs.getBoolean("enter_dragonknight"));
				ub.setEnterIllusionist(rs.getBoolean("enter_illusionist"));
				ub.setEnterMale(rs.getBoolean("enter_male"));
				ub.setEnterFemale(rs.getBoolean("enter_female"));
				ub.setUsePot(rs.getBoolean("use_pot"));
				ub.setHpr(rs.getInt("hpr_bonus"));
				ub.setMpr(rs.getInt("mpr_bonus"));
				ub.resetLoc();

				_ub.put(ub.getUbId(), ub);
			}
		} catch (SQLException e) {
			_log.warning("ubsettings couldnt be initialized:" + e);
		} finally {
			SqlUtil.close(rs);
			SqlUtil.close(pstm);
		}

		// ub_managers load
		try {
			pstm = con.prepareStatement("SELECT * FROM ub_managers");
			rs = pstm.executeQuery();

			while (rs.next()) {
				L1UltimateBattle ub = getUb(rs.getInt("ub_id"));
				if (ub != null) {
					ub.addManager(rs.getInt("ub_manager_npc_id"));
				}
			}
		} catch (SQLException e) {
			_log.warning("ub_managers couldnt be initialized:" + e);
		} finally {
			SqlUtil.close(rs);
			SqlUtil.close(pstm);
		}

		// ub_times load
		try {
			pstm = con.prepareStatement("SELECT * FROM ub_times");
			rs = pstm.executeQuery();

			while (rs.next()) {
				L1UltimateBattle ub = getUb(rs.getInt("ub_id"));
				if (ub != null) {
					ub.addUbTime(rs.getInt("ub_time"));
				}
			}
		} catch (SQLException e) {
			_log.warning("ub_times couldnt be initialized:" + e);
		} finally {
			SqlUtil.close(rs, pstm, con);
		}
		_log.config("UBリスト " + _ub.size() + "件ロード");
	}

	public L1UltimateBattle getUb(int ubId) {
		return _ub.get(ubId);
	}

	public Collection<L1UltimateBattle> getAllUb() {
		return Collections.unmodifiableCollection(_ub.values());
	}

	public L1UltimateBattle getUbForNpcId(int npcId) {
		for (L1UltimateBattle ub : _ub.values()) {
			if (ub.containsManager(npcId)) {
				return ub;
			}
		}
		return null;
	}

	/**
	 * 指定されたUBIDに対するパターンの最大数を返す。
	 * 
	 * @param ubId
	 *            調べるUBID。
	 * @return パターンの最大数。
	 */
	public int getMaxPattern(int ubId) {
		int n = 0;
		java.sql.Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		try {
			con = L1DatabaseFactory.getInstance().getConnection();
			pstm = con
					.prepareStatement("SELECT MAX(pattern) FROM spawn_ub WHERE ub_id=?");
			pstm.setInt(1, ubId);
			rs = pstm.executeQuery();
			if (rs.next()) {
				n = rs.getInt(1);
			}
		} catch (SQLException e) {
			_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
		} finally {
			SqlUtil.close(rs);
			SqlUtil.close(pstm);
			SqlUtil.close(con);
		}
		return n;
	}

}
