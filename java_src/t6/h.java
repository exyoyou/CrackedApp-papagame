package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.CloudBackupsDataTable;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h extends q5.b<CloudBackupsDataTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h f97082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<CloudBackupsDataTable, Integer> f97083c;

    private h() {
        super(f97083c);
    }

    public static h o() {
        if (f97082b == null) {
            f97083c = q5.e.d(null).c().q();
            f97082b = new h();
        }
        return f97082b;
    }

    public CloudBackupsDataTable n(String gameId) {
        HashMap map = new HashMap();
        map.put("gameId", gameId);
        List<CloudBackupsDataTable> listH = o().h(map);
        if (listH == null || listH.size() <= 0) {
            return null;
        }
        return listH.get(0);
    }
}
