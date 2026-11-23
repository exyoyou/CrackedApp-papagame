package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Chapter;

/* JADX INFO: loaded from: classes5.dex */
public class c extends b<Chapter> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f96536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<Chapter, Integer> f96537c;

    private c() {
        super(f96537c);
    }

    public static c n() {
        if (f96536b == null) {
            f96537c = e.d(null).c().o();
            f96536b = new c();
        }
        return f96536b;
    }
}
