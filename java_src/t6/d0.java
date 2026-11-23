package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.PlayGameTimeTable;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d0 extends q5.b<PlayGameTimeTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static d0 f97068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<PlayGameTimeTable, Integer> f97069c;

    private d0() {
        super(f97069c);
    }

    public static d0 n() {
        if (f97068b == null) {
            f97069c = q5.e.d(null).c().p0();
            f97068b = new d0();
        }
        return f97068b;
    }

    public List<PlayGameTimeTable> o(String uId, String gameId) {
        if (uId == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("uId", uId);
        map.put("gameId", gameId);
        return f97069c.queryForFieldValues(map);
    }
}
