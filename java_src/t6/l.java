package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.DownloadUrlTable;

/* JADX INFO: loaded from: classes3.dex */
public class l extends q5.b<DownloadUrlTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static l f97098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<DownloadUrlTable, Integer> f97099c;

    private l() {
        super(f97099c);
    }

    public static l n() {
        if (f97098b == null) {
            f97099c = q5.e.d(null).c().I();
            f97098b = new l();
        }
        return f97098b;
    }
}
