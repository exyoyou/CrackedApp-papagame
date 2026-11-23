package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.mgps.Util.t2;
import com.join.mgps.db.tables.UserLocalRecordTable;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes3.dex */
public class m0 extends q5.b<UserLocalRecordTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f97102b = 7776000000L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static m0 f97103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static RuntimeExceptionDao<UserLocalRecordTable, Integer> f97104d;

    private m0() {
        super(f97104d);
    }

    public static m0 p() {
        if (f97103c == null) {
            f97104d = q5.e.d(null).c().B0();
            f97103c = new m0();
        }
        return f97103c;
    }

    private static String q(String extraKey) {
        return extraKey == null ? "" : extraKey;
    }

    public int n(String uid) {
        if (t2.h(uid)) {
            return 0;
        }
        try {
            DeleteBuilder<UserLocalRecordTable, Integer> deleteBuilder = f97104d.deleteBuilder();
            deleteBuilder.where().eq("uid", uid);
            return f97104d.delete(deleteBuilder.prepare());
        } catch (SQLException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public int o(String bizType, String uid, long beforeTimestamp) {
        if (!t2.h(bizType) && !t2.h(uid)) {
            try {
                DeleteBuilder<UserLocalRecordTable, Integer> deleteBuilder = f97104d.deleteBuilder();
                Where<UserLocalRecordTable, Integer> where = deleteBuilder.where();
                where.eq("bizType", bizType).and().eq("uid", uid).and().lt("updatedAt", Long.valueOf(beforeTimestamp));
                deleteBuilder.setWhere(where);
                return f97104d.delete(deleteBuilder.prepare());
            } catch (SQLException e10) {
                e10.printStackTrace();
            }
        }
        return 0;
    }

    public UserLocalRecordTable query(String bizType, String uid, String scopeKey, String extraKey) {
        if (!t2.h(bizType) && !t2.h(uid) && !t2.h(scopeKey)) {
            try {
                QueryBuilder<UserLocalRecordTable, Integer> queryBuilder = f97104d.queryBuilder();
                queryBuilder.where().eq("bizType", bizType).and().eq("uid", uid).and().eq("scopeKey", scopeKey).and().eq("extraKey", q(extraKey));
                return queryBuilder.queryForFirst();
            } catch (SQLException e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public void r(UserLocalRecordTable record) {
        if (record == null || t2.h(record.getBizType()) || t2.h(record.getUid()) || t2.h(record.getScopeKey())) {
            return;
        }
        record.setExtraKey(q(record.getExtraKey()));
        long jCurrentTimeMillis = System.currentTimeMillis();
        UserLocalRecordTable userLocalRecordTableQuery = query(record.getBizType(), record.getUid(), record.getScopeKey(), record.getExtraKey());
        if (userLocalRecordTableQuery == null) {
            if (record.getCreatedAt() <= 0) {
                record.setCreatedAt(jCurrentTimeMillis);
            }
            record.setUpdatedAt(jCurrentTimeMillis);
            f97104d.create(record);
            return;
        }
        record.setId(userLocalRecordTableQuery.getId());
        record.setCreatedAt(userLocalRecordTableQuery.getCreatedAt() > 0 ? userLocalRecordTableQuery.getCreatedAt() : jCurrentTimeMillis);
        record.setUpdatedAt(jCurrentTimeMillis);
        f97104d.update(record);
    }
}
