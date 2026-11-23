package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.JoystickTable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a0 extends q5.b<JoystickTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a0 f97056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<JoystickTable, Integer> f97057c;

    public a0() {
        super(f97057c);
    }

    public static a0 o() {
        if (f97056b == null) {
            f97057c = q5.e.d(null).c().g0();
            f97056b = new a0();
        }
        return f97056b;
    }

    public JoystickTable n(String mac) {
        try {
            List<JoystickTable> listQuery = f97057c.queryBuilder().orderBy("time", false).where().eq("mac", mac).query();
            if (listQuery == null || listQuery.size() <= 0) {
                return null;
            }
            return listQuery.get(0);
        } catch (Exception unused) {
            return null;
        }
    }
}
