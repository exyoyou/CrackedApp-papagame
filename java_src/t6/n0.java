package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.mgps.db.tables.UserPurchaseInfo;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class n0 extends q5.b<UserPurchaseInfo> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static n0 f97107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<UserPurchaseInfo, Integer> f97108c;

    private n0() {
        super(f97108c);
    }

    public static n0 p() {
        if (f97107b == null) {
            f97108c = q5.e.d(null).c().C0();
            f97107b = new n0();
        }
        return f97107b;
    }

    public void delete(String uid) {
        DeleteBuilder<UserPurchaseInfo, Integer> deleteBuilder = f97108c.deleteBuilder();
        Where<UserPurchaseInfo, Integer> where = deleteBuilder.where();
        try {
            where.eq("uid", uid);
            deleteBuilder.setWhere(where);
            f97108c.delete(deleteBuilder.prepare());
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
    }

    public List<UserPurchaseInfo> n(String uid) {
        HashMap map = new HashMap(0);
        map.put("uid", uid);
        return h(map);
    }

    public List<UserPurchaseInfo> o(String uid, String gameId) {
        if (gameId == null) {
            return null;
        }
        HashMap map = new HashMap(0);
        map.put("uid", uid);
        map.put("game_id", gameId);
        return h(map);
    }
}
