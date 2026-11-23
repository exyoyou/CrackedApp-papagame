package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.ForumSearchRecordTable;

/* JADX INFO: loaded from: classes3.dex */
public class s extends q5.b<ForumSearchRecordTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static s f97121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<ForumSearchRecordTable, Integer> f97122c;

    private s() {
        super(f97122c);
    }

    public static s n() {
        if (f97121b == null) {
            f97122c = q5.e.d(null).c().P();
            f97121b = new s();
        }
        return f97121b;
    }
}
