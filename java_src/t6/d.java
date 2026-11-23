package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.BannerAndTablesTable;

/* JADX INFO: loaded from: classes3.dex */
public class d extends q5.b<BannerAndTablesTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static d f97066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<BannerAndTablesTable, Integer> f97067c;

    private d() {
        super(f97067c);
    }

    public static d n() {
        if (f97066b == null) {
            f97067c = q5.e.d(null).c().j();
            f97066b = new d();
        }
        return f97066b;
    }
}
