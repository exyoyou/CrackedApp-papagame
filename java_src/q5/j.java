package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Order;

/* JADX INFO: loaded from: classes5.dex */
public class j extends b<Order> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static j f96552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<Order, Integer> f96553c;

    private j() {
        super(f96553c);
    }

    public static j n() {
        if (f96552b == null) {
            f96553c = e.d(null).c().n0();
            f96552b = new j();
        }
        return f96552b;
    }
}
