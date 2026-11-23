package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.GameMainTable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class u extends q5.b<GameMainTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static u f97125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<GameMainTable, Integer> f97126c;

    private u() {
        super(f97126c);
    }

    public static u n() {
        if (f97125b == null) {
            f97126c = q5.e.d(null).c().R();
            f97125b = new u();
        }
        return f97125b;
    }

    public GameMainTable o(String gameId) {
        List<GameMainTable> listQueryForEq;
        if (gameId == null || (listQueryForEq = f97126c.queryForEq("gameid", gameId)) == null || listQueryForEq.size() <= 0) {
            return null;
        }
        return listQueryForEq.get(0);
    }
}
