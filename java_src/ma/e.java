package ma;

import android.app.job.JobInfo;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.JobRecord;
import com.xinzhu.overmind.server.l;

/* JADX INFO: loaded from: classes8.dex */
public class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f94220b = new e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.xinzhu.overmind.server.am.e f94221a;

    public static e c() {
        return f94220b;
    }

    private com.xinzhu.overmind.server.am.e d() {
        com.xinzhu.overmind.server.am.e eVar = this.f94221a;
        if (eVar != null && eVar.asBinder().isBinderAlive()) {
            return this.f94221a;
        }
        this.f94221a = com.xinzhu.overmind.server.am.e.b.asInterface(Overmind.get().getService(l.f89690d));
        return d();
    }

    public int a(String str, int i10) {
        try {
            return d().cancel(str, i10, com.xinzhu.overmind.client.f.getUserId());
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public void b(String str) {
        try {
            d().cancelAll(str, com.xinzhu.overmind.client.f.getUserId());
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public JobRecord e(String str, int i10) {
        try {
            return d().queryJobRecord(str, i10, com.xinzhu.overmind.client.f.getUserId());
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public JobInfo f(JobInfo jobInfo) {
        try {
            return d().schedule(jobInfo, com.xinzhu.overmind.client.f.getUserId());
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
