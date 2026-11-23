package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.EMUUpdateTable;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class q extends q5.b<EMUUpdateTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static q f97117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<EMUUpdateTable, Integer> f97118c;

    private q() {
        super(f97118c);
    }

    public static q o() {
        if (f97117b == null) {
            f97118c = q5.e.d(null).c().K();
            f97117b = new q();
        }
        return f97117b;
    }

    public EMUUpdateTable n(String gameId) {
        HashMap map = new HashMap();
        map.put("crc_sign_id", gameId);
        List<EMUUpdateTable> listH = h(map);
        if (listH == null || listH.size() <= 0) {
            return null;
        }
        return listH.get(0);
    }
}
