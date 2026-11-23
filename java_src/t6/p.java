package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.EMUApkTable;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class p extends q5.b<EMUApkTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static p f97113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<EMUApkTable, Integer> f97114c;

    private p() {
        super(f97114c);
    }

    public static p o() {
        if (f97113b == null) {
            f97114c = q5.e.d(null).c().M();
            f97113b = new p();
        }
        return f97113b;
    }

    public EMUApkTable n(String tag_id) {
        HashMap map = new HashMap();
        map.put("tag_id", tag_id);
        List<EMUApkTable> listH = h(map);
        if (listH == null || listH.size() <= 0) {
            return null;
        }
        return listH.get(0);
    }
}
