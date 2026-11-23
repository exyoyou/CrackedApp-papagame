package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.AppBeanMainTable;

/* JADX INFO: loaded from: classes3.dex */
public class a extends q5.b<AppBeanMainTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f97054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<AppBeanMainTable, Integer> f97055c;

    private a() {
        super(f97055c);
    }

    public static a n() {
        if (f97054b == null) {
            f97055c = q5.e.d(null).c().e();
            f97054b = new a();
        }
        return f97054b;
    }
}
