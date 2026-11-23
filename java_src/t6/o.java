package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.Util.BeanUtils;
import com.join.mgps.Util.t2;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class o extends q5.b<EMUApkArenaTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static o f97109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<EMUApkArenaTable, Integer> f97110c;

    private o() {
        super(f97110c);
    }

    public static o o() {
        if (f97109b == null) {
            f97110c = q5.e.d(null).c().L();
            f97109b = new o();
        }
        return f97109b;
    }

    public EMUApkTable n(String tag_id) {
        try {
            if (t2.h(tag_id)) {
                return null;
            }
            HashMap map = new HashMap();
            map.put("tag_id", tag_id);
            List<EMUApkArenaTable> listH = h(map);
            if (listH != null && listH.size() > 0) {
                EMUApkTable eMUApkTable = (EMUApkTable) BeanUtils.g(listH.get(0), EMUApkTable.class);
                eMUApkTable.setArena(true);
                return eMUApkTable;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }
}
