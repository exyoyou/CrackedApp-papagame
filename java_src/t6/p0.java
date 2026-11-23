package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.WarMatchAndLocalTable;

/* JADX INFO: loaded from: classes3.dex */
public class p0 extends q5.b<WarMatchAndLocalTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static p0 f97115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<WarMatchAndLocalTable, Integer> f97116c;

    private p0() {
        super(f97116c);
    }

    public static p0 n() {
        if (f97115b == null) {
            f97116c = q5.e.d(null).c().E0();
            f97115b = new p0();
        }
        return f97115b;
    }
}
