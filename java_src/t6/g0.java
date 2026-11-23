package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.RewardBananaTable;
import com.umeng.umcrash.UMCrash;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class g0 extends q5.b<RewardBananaTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static g0 f97080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<RewardBananaTable, Integer> f97081c;

    public g0() {
        super(f97081c);
    }

    public static g0 q() {
        if (f97080b == null) {
            f97081c = q5.e.d(null).c().u0();
            f97080b = new g0();
        }
        return f97080b;
    }

    public RewardBananaTable n(String gameId) {
        List<RewardBananaTable> listQuery;
        new HashMap().put("gameId", gameId);
        try {
            listQuery = f97081c.queryBuilder().orderBy(UMCrash.SP_KEY_TIMESTAMP, false).where().eq("gameId", gameId).query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            listQuery = null;
        }
        if (listQuery == null || listQuery.size() <= 0) {
            return null;
        }
        return listQuery.get(0);
    }

    public RewardBananaTable o(String uniqueId) {
        List<RewardBananaTable> listQuery;
        new HashMap().put("uniqueId", uniqueId);
        try {
            listQuery = f97081c.queryBuilder().orderBy(UMCrash.SP_KEY_TIMESTAMP, false).where().eq("uniqueId", uniqueId).query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            listQuery = null;
        }
        if (listQuery == null || listQuery.size() <= 0) {
            return null;
        }
        return listQuery.get(0);
    }

    public List<RewardBananaTable> p(int type) {
        List<RewardBananaTable> listQuery;
        try {
            listQuery = f97081c.queryBuilder().orderBy(UMCrash.SP_KEY_TIMESTAMP, false).where().eq("type", Integer.valueOf(type)).and().ne("status", 1).query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            listQuery = null;
        }
        if (listQuery == null || listQuery.size() <= 0) {
            return null;
        }
        return listQuery;
    }
}
