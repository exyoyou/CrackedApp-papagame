package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.TipBeanTable;

/* JADX INFO: loaded from: classes3.dex */
public class k0 extends q5.b<TipBeanTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static k0 f97096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<TipBeanTable, Integer> f97097c;

    private k0() {
        super(f97097c);
    }

    public static k0 n() {
        if (f97096b == null) {
            f97097c = q5.e.d(null).c().z0();
            f97096b = new k0();
        }
        return f97096b;
    }
}
