package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.mgps.db.tables.CloudArchiveTable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class g extends q5.b<CloudArchiveTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static g f97078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<CloudArchiveTable, Integer> f97079c;

    private g() {
        super(f97079c);
    }

    public static g t() {
        if (f97078b == null) {
            f97079c = q5.e.d(null).c().p();
            f97078b = new g();
        }
        return f97078b;
    }

    public void n(String packageName) {
        Map<String, Object> map = new HashMap<>(0);
        map.put("packageName", packageName);
        List listH = h(map);
        if (listH == null || listH.size() == 0) {
            return;
        }
        delete((Collection) listH);
    }

    public void o(String packageName, String archiveId) {
        Map<String, Object> map = new HashMap<>(0);
        map.put("packageName", packageName);
        map.put("archiveId", archiveId);
        List listH = h(map);
        if (listH == null || listH.size() == 0) {
            return;
        }
        delete((Collection) listH);
    }

    public CloudArchiveTable p(String archiveId) {
        if (archiveId == null) {
            return null;
        }
        HashMap map = new HashMap(0);
        map.put("archiveId", archiveId);
        List<CloudArchiveTable> listH = h(map);
        if (listH == null || listH.size() == 0) {
            return null;
        }
        return listH.get(0);
    }

    public List<CloudArchiveTable> q(String gameId) {
        QueryBuilder<CloudArchiveTable, Integer> queryBuilder = f97079c.queryBuilder();
        queryBuilder.orderBy("id", false);
        try {
            Where<CloudArchiveTable, Integer> where = queryBuilder.where();
            where.eq("gameId", gameId);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return new ArrayList();
        }
    }

    public CloudArchiveTable r(String gameId, String archiveId) {
        HashMap map = new HashMap(0);
        map.put("gameId", gameId);
        map.put("archiveId", archiveId);
        List<CloudArchiveTable> listH = h(map);
        if (listH == null || listH.size() == 0) {
            return null;
        }
        return listH.get(0);
    }

    public CloudArchiveTable s(String gameId, int userId) {
        HashMap map = new HashMap(0);
        map.put("gameId", gameId);
        map.put("userId", Integer.valueOf(userId));
        List<CloudArchiveTable> listH = h(map);
        if (listH == null || listH.size() == 0) {
            return null;
        }
        return listH.get(0);
    }
}
