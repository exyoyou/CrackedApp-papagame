package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.AppBeanTable;

/* JADX INFO: loaded from: classes3.dex */
public class b extends q5.b<AppBeanTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f97058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<AppBeanTable, Integer> f97059c;

    private b() {
        super(f97059c);
    }

    public static b n() {
        if (f97058b == null) {
            f97059c = q5.e.d(null).c().f();
            f97058b = new b();
        }
        return f97058b;
    }
}
