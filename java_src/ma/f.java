package ma;

import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.l;

/* JADX INFO: loaded from: classes8.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static f f94222b = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.xinzhu.overmind.server.os.c f94223a;

    public static f a() {
        return f94222b;
    }

    private com.xinzhu.overmind.server.os.c b() {
        com.xinzhu.overmind.server.os.c cVar = this.f94223a;
        if (cVar != null && cVar.asBinder().isBinderAlive()) {
            return this.f94223a;
        }
        this.f94223a = com.xinzhu.overmind.server.os.c.b.asInterface(Overmind.get().getService(l.f89691e));
        return b();
    }

    public String c(String str, int i10, int i11, String str2) {
        try {
            return b().solveAddNotification(str, i10, i11, str2);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void d(String str, int i10) {
        try {
            b().solveCancelAllNotifications(str, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public String e(String str, int i10, int i11, String str2) {
        try {
            return b().solveCancelNotification(str, i10, i11, str2);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
