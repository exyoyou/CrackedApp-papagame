package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.PurchasedListTable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e0 extends q5.b<PurchasedListTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e0 f97072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<PurchasedListTable, Integer> f97073c;

    private e0() {
        super(f97073c);
    }

    public static e0 o() {
        if (f97072b == null) {
            f97073c = q5.e.d(null).c().q0();
            f97072b = new e0();
        }
        return f97072b;
    }

    public synchronized PurchasedListTable n(String game_id) {
        try {
            List<PurchasedListTable> listQuery = f97073c.queryBuilder().where().eq("game_id", game_id).query();
            if (listQuery != null && listQuery.size() > 0) {
                return listQuery.get(0);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public boolean p(String game_id) {
        try {
            List<PurchasedListTable> listQuery = f97073c.queryBuilder().where().eq("game_id", game_id).query();
            return listQuery != null && listQuery.size() > 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
