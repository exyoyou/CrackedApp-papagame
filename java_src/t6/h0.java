package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.SearchRecordTable;

/* JADX INFO: loaded from: classes3.dex */
public class h0 extends q5.b<SearchRecordTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h0 f97084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<SearchRecordTable, Integer> f97085c;

    private h0() {
        super(f97085c);
    }

    public static h0 n() {
        if (f97084b == null) {
            f97085c = q5.e.d(null).c().v0();
            f97084b = new h0();
        }
        return f97084b;
    }
}
