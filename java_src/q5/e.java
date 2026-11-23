package q5;

import android.content.Context;
import com.MApplication;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import com.join.android.app.common.db.DatabaseHelper;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static e f96540c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f96541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DatabaseHelper f96542b = null;

    private e(Context context) {
        this.f96541a = context;
    }

    private void a() {
        if (this.f96541a == null) {
            this.f96541a = MApplication.f3182z;
        }
    }

    public static e d(Context context) {
        if (f96540c == null) {
            f96540c = new e(context);
        }
        return f96540c;
    }

    public synchronized void b(String dbName) {
        if (this.f96542b != null) {
            if (DatabaseHelper.b().equals(dbName)) {
                return;
            }
            OpenHelperManager.releaseHelper();
            this.f96542b = null;
        }
        if (this.f96542b == null || !DatabaseHelper.b().equals(dbName)) {
            a();
            DatabaseHelper.H0(dbName);
            this.f96542b = (DatabaseHelper) OpenHelperManager.getHelper(this.f96541a, DatabaseHelper.class);
        }
    }

    public synchronized DatabaseHelper c() {
        DatabaseHelper databaseHelper = this.f96542b;
        if (databaseHelper == null) {
            a();
            this.f96542b = (DatabaseHelper) OpenHelperManager.getHelper(this.f96541a, DatabaseHelper.class);
        } else {
            try {
                if (!databaseHelper.isOpen()) {
                    this.f96542b = null;
                    a();
                    this.f96542b = (DatabaseHelper) OpenHelperManager.getHelper(this.f96541a, DatabaseHelper.class);
                }
            } catch (Exception unused) {
                this.f96542b = null;
                a();
                this.f96542b = (DatabaseHelper) OpenHelperManager.getHelper(this.f96541a, DatabaseHelper.class);
            }
        }
        return this.f96542b;
    }

    public synchronized void e() {
        if (this.f96542b != null) {
            OpenHelperManager.releaseHelper();
            this.f96542b = null;
        }
    }
}
