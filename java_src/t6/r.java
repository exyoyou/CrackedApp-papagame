package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.FightMainTable;

/* JADX INFO: loaded from: classes3.dex */
public class r extends q5.b<FightMainTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static r f97119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<FightMainTable, Integer> f97120c;

    private r() {
        super(f97120c);
    }

    public static r n() {
        if (f97119b == null) {
            f97120c = q5.e.d(null).c().O();
            f97119b = new r();
        }
        return f97119b;
    }
}
