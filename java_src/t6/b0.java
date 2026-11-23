package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.join.mgps.db.tables.LatestGameFileTable;
import java.sql.SQLException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b0 extends q5.b<LatestGameFileTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b0 f97060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<LatestGameFileTable, Integer> f97061c;

    private b0() {
        super(f97061c);
    }

    public static b0 n() {
        if (f97060b == null) {
            f97061c = q5.e.d(null).c().i0();
            f97060b = new b0();
        }
        return f97060b;
    }

    public List<LatestGameFileTable> o() {
        QueryBuilder<LatestGameFileTable, Integer> queryBuilder = f97061c.queryBuilder();
        try {
            queryBuilder.orderBy("createTime", false);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
