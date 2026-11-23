package ma;

import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.l;
import com.xinzhu.overmind.server.os.MindDeviceInfo;

/* JADX INFO: loaded from: classes8.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f94215b = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.xinzhu.overmind.server.os.a f94216a;

    public static c a() {
        return f94215b;
    }

    private com.xinzhu.overmind.server.os.a c() {
        com.xinzhu.overmind.server.os.a aVar = this.f94216a;
        if (aVar != null && aVar.asBinder().isBinderAlive()) {
            return this.f94216a;
        }
        this.f94216a = com.xinzhu.overmind.server.os.a.b.asInterface(Overmind.get().getService(l.f89699m));
        return c();
    }

    public MindDeviceInfo b(int i10) {
        try {
            if (!Overmind.get().isVirtualProcess()) {
                return c().getDeviceInfo(i10);
            }
            String vPackageName = com.xinzhu.overmind.client.f.getVPackageName();
            int userId = com.xinzhu.overmind.client.f.getUserId();
            if (vPackageName == null || Overmind.get().ifDisableVirtualDeviceForPackage(vPackageName, userId)) {
                return null;
            }
            return c().getDeviceInfo(i10);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void d(boolean z10) {
        try {
            c().setVirtualDeviceStatus(z10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void e(int i10, MindDeviceInfo mindDeviceInfo) {
        try {
            c().updateMindDeviceInfo(i10, mindDeviceInfo);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }
}
