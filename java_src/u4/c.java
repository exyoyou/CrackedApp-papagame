package u4;

import android.content.Context;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import com.join.android.app.common.db.DatabaseHelper;
import com.join.mgps.enums.Dtype;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import q5.e;
import q5.f;

/* JADX INFO: loaded from: classes9.dex */
public class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DatabaseHelper f97439a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f97440b;

    public c(Context context) {
        this.f97440b = context;
    }

    private DatabaseHelper f() {
        if (this.f97439a == null) {
            this.f97439a = e.d(this.f97440b).c();
        }
        return this.f97439a;
    }

    @Override // u4.b
    public DownloadTask a(DownloadTask task) throws SQLException {
        if (task == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("url", task.getUrl());
        List<DownloadTask> listH = f.M().h(map);
        if (listH == null || listH.size() <= 0) {
            return null;
        }
        return listH.get(0);
    }

    @Override // u4.b
    public void b(DownloadTask task) throws SQLException {
        if (task == null) {
            return;
        }
        if (TextUtils.isEmpty(task.getFileType())) {
            task.setFileType((task.getFileType() == null || task.getFileType().equals(Dtype.apk.name())) ? Dtype.apk.name() : task.getFileType());
        }
        if (task.getStatus() != 7) {
            f.M().m(task);
        }
    }

    @Override // u4.b
    public void c(DownloadTask task) throws SQLException {
        if (task == null) {
            return;
        }
        f.M().n(task.getCrc_link_type_val());
    }

    @Override // u4.b
    public void d(DownloadTask task) throws SQLException {
        if (task == null || a(task) == null) {
            return;
        }
        f.M().update(task);
    }

    public void e() {
        if (this.f97439a != null) {
            OpenHelperManager.releaseHelper();
            this.f97439a = null;
        }
    }
}
