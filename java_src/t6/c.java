package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.AppMoreBeanTable;

/* JADX INFO: loaded from: classes3.dex */
public class c extends q5.b<AppMoreBeanTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f97062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<AppMoreBeanTable, Integer> f97063c;

    private c() {
        super(f97063c);
    }

    public static c n() {
        if (f97062b == null) {
            f97063c = q5.e.d(null).c().g();
            f97062b = new c();
        }
        return f97062b;
    }
}
