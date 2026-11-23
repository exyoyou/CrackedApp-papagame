package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.DownloadFileTable;

/* JADX INFO: loaded from: classes3.dex */
public class j extends q5.b<DownloadFileTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static j f97090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<DownloadFileTable, Integer> f97091c;

    private j() {
        super(f97091c);
    }

    public static j n() {
        if (f97090b == null) {
            f97091c = q5.e.d(null).c().y();
            f97090b = new j();
        }
        return f97090b;
    }
}
