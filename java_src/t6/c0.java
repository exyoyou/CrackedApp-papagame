package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.ModleBeanTable;

/* JADX INFO: loaded from: classes3.dex */
public class c0 extends q5.b<ModleBeanTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c0 f97064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<ModleBeanTable, Integer> f97065c;

    private c0() {
        super(f97065c);
    }

    public static c0 n() {
        if (f97064b == null) {
            f97065c = q5.e.d(null).c().l0();
            f97064b = new c0();
        }
        return f97064b;
    }
}
