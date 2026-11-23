package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.TokenTable;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l0 extends q5.b<TokenTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static l0 f97100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<TokenTable, Integer> f97101c;

    private l0() {
        super(f97101c);
    }

    public static l0 p() {
        if (f97100b == null) {
            f97101c = q5.e.d(null).c().A0();
            f97100b = new l0();
        }
        return f97100b;
    }

    public String n(long uid) {
        HashMap map = new HashMap(0);
        map.put("uid", Long.valueOf(uid));
        List<TokenTable> listH = h(map);
        if (listH == null || listH.size() == 0) {
            return null;
        }
        return listH.get(0).getToken();
    }

    public TokenTable o(long uid) {
        HashMap map = new HashMap(0);
        map.put("uid", Long.valueOf(uid));
        List<TokenTable> listH = h(map);
        if (listH == null || listH.size() == 0) {
            return null;
        }
        return listH.get(0);
    }
}
