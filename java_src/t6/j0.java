package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.StatisticTable;

/* JADX INFO: loaded from: classes3.dex */
public class j0 extends q5.b<StatisticTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static j0 f97092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<StatisticTable, Integer> f97093c;

    private j0() {
        super(f97093c);
    }

    public static j0 n() {
        if (f97092b == null) {
            f97093c = q5.e.d(null).c().x0();
            f97092b = new j0();
        }
        return f97092b;
    }
}
