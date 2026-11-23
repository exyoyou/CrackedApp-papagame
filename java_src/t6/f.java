package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.CategoryRecordTable;

/* JADX INFO: loaded from: classes3.dex */
public class f extends q5.b<CategoryRecordTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static f f97074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<CategoryRecordTable, Integer> f97075c;

    private f() {
        super(f97075c);
    }

    public static f n() {
        if (f97074b == null) {
            f97075c = q5.e.d(null).c().l();
            f97074b = new f();
        }
        return f97074b;
    }
}
