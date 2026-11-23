package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Reference;

/* JADX INFO: loaded from: classes5.dex */
public class k extends b<Reference> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static k f96554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<Reference, Integer> f96555c;

    private k() {
        super(f96555c);
    }

    public static k n() {
        if (f96554b == null) {
            f96555c = e.d(null).c().s0();
            f96554b = new k();
        }
        return f96554b;
    }
}
