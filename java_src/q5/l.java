package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.ResourceShare;

/* JADX INFO: loaded from: classes5.dex */
public class l extends b<ResourceShare> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static l f96556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<ResourceShare, Integer> f96557c;

    private l() {
        super(f96557c);
    }

    public static l n() {
        if (f96556b == null) {
            f96557c = e.d(null).c().t0();
            f96556b = new l();
        }
        return f96556b;
    }
}
