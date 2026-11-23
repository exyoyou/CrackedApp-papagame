package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.DownlodTaskCopyTable;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class n extends q5.b<DownlodTaskCopyTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static n f97105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<DownlodTaskCopyTable, Integer> f97106c;

    private n() {
        super(f97106c);
    }

    public static n o() {
        if (f97105b == null) {
            f97106c = q5.e.d(null).c().J();
            f97105b = new n();
        }
        return f97105b;
    }

    public DownlodTaskCopyTable n(String gameId) {
        HashMap map = new HashMap();
        map.put("gameId", gameId);
        List<DownlodTaskCopyTable> listQueryForFieldValues = f97106c.queryForFieldValues(map);
        if (listQueryForFieldValues == null || listQueryForFieldValues.size() <= 0) {
            return null;
        }
        return listQueryForFieldValues.get(0);
    }
}
