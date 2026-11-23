package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.JPushRecordTable;

/* JADX INFO: loaded from: classes3.dex */
public class z extends q5.b<JPushRecordTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static z f97135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<JPushRecordTable, Integer> f97136c;

    private z() {
        super(f97136c);
    }

    public static z n() {
        if (f97135b == null) {
            f97136c = q5.e.d(null).c().f0();
            f97135b = new z();
        }
        return f97135b;
    }
}
