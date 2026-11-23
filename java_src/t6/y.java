package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.HeadPortraitTable;

/* JADX INFO: loaded from: classes3.dex */
public class y extends q5.b<HeadPortraitTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static y f97133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<HeadPortraitTable, Integer> f97134c;

    private y() {
        super(f97134c);
    }

    public static y n() {
        if (f97133b == null) {
            f97134c = q5.e.d(null).c().d0();
            f97133b = new y();
        }
        return f97133b;
    }
}
