package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.VideoWatchLogTable;

/* JADX INFO: loaded from: classes3.dex */
public class o0 extends q5.b<VideoWatchLogTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static o0 f97111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<VideoWatchLogTable, Integer> f97112c;

    private o0() {
        super(f97112c);
    }

    public static o0 n() {
        if (f97111b == null) {
            f97112c = q5.e.d(null).c().D0();
            f97111b = new o0();
        }
        return f97111b;
    }
}
