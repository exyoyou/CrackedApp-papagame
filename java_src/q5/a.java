package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Account;

/* JADX INFO: loaded from: classes5.dex */
public class a extends b<Account> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f96533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<Account, Integer> f96534c;

    private a() {
        super(f96534c);
    }

    public static a n() {
        if (f96533b == null) {
            f96534c = e.d(null).c().d();
            f96533b = new a();
        }
        return f96533b;
    }
}
