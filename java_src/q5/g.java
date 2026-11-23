package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Live;

/* JADX INFO: loaded from: classes5.dex */
public class g extends b<Live> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static g f96546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<Live, Integer> f96547c;

    private g() {
        super(f96547c);
    }

    public static g n() {
        if (f96546b == null) {
            f96547c = e.d(null).c().j0();
            f96546b = new g();
        }
        return f96546b;
    }
}
