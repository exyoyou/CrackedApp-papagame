package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Course;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class d extends b<Course> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static d f96538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<Course, Integer> f96539c;

    private d() {
        super(f96539c);
    }

    public static d o() {
        if (f96538b == null) {
            f96539c = e.d(null).c().v();
            f96538b = new d();
        }
        return f96538b;
    }

    public Course n(long courseId) {
        HashMap map = new HashMap(0);
        map.put("courseId", Long.valueOf(courseId));
        List<Course> listH = h(map);
        if (listH == null || listH.size() <= 0) {
            return null;
        }
        return listH.get(0);
    }
}
