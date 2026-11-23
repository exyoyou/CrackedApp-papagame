package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.t2;
import com.join.mgps.db.tables.CacheTable;
import com.join.mgps.dto.GameWorldGlobalData;
import com.join.mgps.dto.GameWorldRealTimeWorshipBean;
import com.join.mgps.dto.GameWorldUserInfoWrap;
import com.join.mgps.dto.GradeListInfoData;
import java.sql.SQLException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e extends q5.b<CacheTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f97070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<CacheTable, Integer> f97071c;

    private e() {
        super(f97071c);
    }

    public static e r() {
        if (f97070b == null) {
            f97071c = q5.e.d(null).c().k();
            f97070b = new e();
        }
        return f97070b;
    }

    public void n(long gameId) {
        DeleteBuilder<CacheTable, Integer> deleteBuilder = f97071c.deleteBuilder();
        Where<CacheTable, Integer> where = deleteBuilder.where();
        try {
            where.eq("type", Integer.valueOf(CacheTable.TYPE_GAME_WORLD_GLOBAL_DATA)).and();
            where.eq("gameId", Long.valueOf(gameId));
            deleteBuilder.setWhere(where);
            f97071c.delete(deleteBuilder.prepare());
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
    }

    public void o(long gameId) {
        DeleteBuilder<CacheTable, Integer> deleteBuilder = f97071c.deleteBuilder();
        Where<CacheTable, Integer> where = deleteBuilder.where();
        try {
            where.eq("type", Integer.valueOf(CacheTable.TYPE_GAME_WORLD_GRADE)).and();
            where.eq("gameId", Long.valueOf(gameId));
            deleteBuilder.setWhere(where);
            f97071c.delete(deleteBuilder.prepare());
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
    }

    public void p(String uid, long gameId) {
        DeleteBuilder<CacheTable, Integer> deleteBuilder = f97071c.deleteBuilder();
        Where<CacheTable, Integer> where = deleteBuilder.where();
        try {
            where.eq("type", Integer.valueOf(CacheTable.TYPE_GAME_WORLD_USER_INFO)).and();
            if (t2.i(uid)) {
                where.eq("uid", uid).and();
            }
            where.eq("gameId", Long.valueOf(gameId));
            deleteBuilder.setWhere(where);
            f97071c.delete(deleteBuilder.prepare());
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
    }

    public void q(long gameId) {
        DeleteBuilder<CacheTable, Integer> deleteBuilder = f97071c.deleteBuilder();
        Where<CacheTable, Integer> where = deleteBuilder.where();
        try {
            where.eq("type", Integer.valueOf(CacheTable.TYPE_GAME_WORLD_WORSHIP)).and();
            where.eq("gameId", Long.valueOf(gameId));
            deleteBuilder.setWhere(where);
            f97071c.delete(deleteBuilder.prepare());
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
    }

    public void s(long gameId, GameWorldGlobalData data) {
        CacheTable cacheTable = new CacheTable();
        cacheTable.setGameId(gameId);
        cacheTable.setType(CacheTable.TYPE_GAME_WORLD_GLOBAL_DATA);
        cacheTable.setData(JsonMapper.getInstance().toJson(data));
        k(cacheTable);
    }

    public void t(long gameId, List<GradeListInfoData> data) {
        CacheTable cacheTable = new CacheTable();
        cacheTable.setGameId(gameId);
        cacheTable.setType(CacheTable.TYPE_GAME_WORLD_GRADE);
        cacheTable.setData(JsonMapper.getInstance().toJson(data));
        k(cacheTable);
    }

    public void u(String uid, long gameId, GameWorldUserInfoWrap data) {
        CacheTable cacheTable = new CacheTable();
        cacheTable.setGameId(gameId);
        cacheTable.setUid(uid);
        cacheTable.setType(CacheTable.TYPE_GAME_WORLD_USER_INFO);
        cacheTable.setData(JsonMapper.getInstance().toJson(data));
        k(cacheTable);
    }

    public void v(long gameId, List<GameWorldRealTimeWorshipBean> data) {
        CacheTable cacheTable = new CacheTable();
        cacheTable.setGameId(gameId);
        cacheTable.setType(CacheTable.TYPE_GAME_WORLD_WORSHIP);
        cacheTable.setData(JsonMapper.getInstance().toJson(data));
        k(cacheTable);
    }
}
