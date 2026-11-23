package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.LocalCourse;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class h extends b<LocalCourse> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h f96548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<LocalCourse, Integer> f96549c;

    private h() {
        super(f96549c);
    }

    public static h o() {
        if (f96548b == null) {
            f96549c = e.d(null).c().k0();
            f96548b = new h();
        }
        return f96548b;
    }

    public List<LocalCourse> n(String courseId) {
        HashMap map = new HashMap(0);
        map.put("courseId", courseId);
        return h(map);
    }
}
