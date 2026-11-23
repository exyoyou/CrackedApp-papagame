package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i0 extends q5.b<ShowViewDataBeanTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i0 f97088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<ShowViewDataBeanTable, Integer> f97089c;

    private i0() {
        super(f97089c);
    }

    public static i0 o() {
        if (f97088b == null) {
            f97089c = q5.e.d(null).c().w0();
            f97088b = new i0();
        }
        return f97088b;
    }

    public List<ShowViewDataBeanTable> n() {
        QueryBuilder<ShowViewDataBeanTable, Integer> queryBuilder = f97089c.queryBuilder();
        try {
            Where<ShowViewDataBeanTable, Integer> where = queryBuilder.where();
            where.ne("tag_show", 2);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return new ArrayList();
        }
    }
}
