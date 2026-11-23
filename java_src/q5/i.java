package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Notice;

/* JADX INFO: loaded from: classes5.dex */
public class i extends b<Notice> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i f96550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<Notice, Integer> f96551c;

    private i() {
        super(f96551c);
    }

    public static i n() {
        if (f96550b == null) {
            f96551c = e.d(null).c().m0();
            f96550b = new i();
        }
        return f96550b;
    }
}
