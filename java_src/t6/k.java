package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.join.mgps.db.tables.DownloadHistoryTable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class k extends q5.b<DownloadHistoryTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static k f97094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<DownloadHistoryTable, Integer> f97095c;

    private k() {
        super(f97095c);
    }

    public static k n() {
        if (f97094b == null) {
            f97095c = q5.e.d(null).c().z();
            f97094b = new k();
        }
        return f97094b;
    }

    public List<DownloadHistoryTable> o() {
        QueryBuilder<DownloadHistoryTable, Integer> queryBuilder = f97095c.queryBuilder();
        try {
            queryBuilder.orderBy("create_time", false);
            return queryBuilder.query();
        } catch (Exception unused) {
            return null;
        }
    }

    public DownloadHistoryTable p(String gameId) {
        List<DownloadHistoryTable> listQueryForEq;
        if (gameId == null || (listQueryForEq = f97095c.queryForEq("crc_link_type_val", gameId)) == null || listQueryForEq.size() <= 0) {
            return null;
        }
        return listQueryForEq.get(0);
    }
}
