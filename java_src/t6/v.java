package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.mgps.db.tables.GamePaiWeiUpTaskTable;
import java.sql.SQLException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class v extends q5.b<GamePaiWeiUpTaskTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static v f97127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<GamePaiWeiUpTaskTable, Integer> f97128c;

    private v() {
        super(f97128c);
    }

    public static v n() {
        if (f97127b == null) {
            f97128c = q5.e.d(null).c().a0();
            f97127b = new v();
        }
        return f97127b;
    }

    public List<GamePaiWeiUpTaskTable> o(String uid) {
        if (uid == null) {
            return null;
        }
        return f97128c.queryForEq("userId", uid);
    }

    public List<GamePaiWeiUpTaskTable> p(String uid) {
        if (uid == null) {
            return null;
        }
        QueryBuilder<GamePaiWeiUpTaskTable, Integer> queryBuilder = f97128c.queryBuilder();
        try {
            Where<GamePaiWeiUpTaskTable, Integer> where = queryBuilder.where();
            where.eq("userId", uid).and();
            where.eq("isUped", Boolean.FALSE);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
