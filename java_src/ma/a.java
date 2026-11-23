package ma;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.am.MindTaskInfo;
import com.xinzhu.overmind.server.l;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f94211b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.xinzhu.overmind.server.am.d f94212a;

    public static a d() {
        return f94211b;
    }

    private com.xinzhu.overmind.server.am.d i() {
        com.xinzhu.overmind.server.am.d dVar = this.f94212a;
        if (dVar != null && dVar.asBinder().isBinderAlive()) {
            return this.f94212a;
        }
        this.f94212a = com.xinzhu.overmind.server.am.d.b.asInterface(Overmind.get().getService(l.f89689c));
        return i();
    }

    public int A(String str, int i10) {
        try {
            i().stopPackage(str, i10);
            return 0;
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public void B(IBinder iBinder) throws RemoteException {
        try {
            i().unregisterPendingIntent(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public IBinder a(ProviderInfo providerInfo) {
        try {
            return i().acquireContentProviderClient(providerInfo);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public PendingIntentRecord b(IBinder iBinder) throws RemoteException {
        try {
            return i().findPendingIntent(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Intent bindService(Intent intent, IBinder iBinder, String str, int i10, int i11) {
        try {
            return i().bindService(intent, iBinder, str, i10, i11);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public ProcessRecord c(int i10) throws RemoteException {
        try {
            return i().findProcessRecordByPid(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public ComponentName e(IBinder iBinder) {
        try {
            return i().getCallingActivity(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String f(IBinder iBinder) {
        try {
            return i().getCallingPackage(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String g(IBinder iBinder) {
        try {
            return i().getLaunchedFromPackage(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int h(IBinder iBinder) {
        try {
            return i().getLaunchedFromUid(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public MindTaskInfo j(int i10) throws RemoteException {
        try {
            return i().getTaskInfo(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public ClientConfig k(String str, String str2, int i10) {
        try {
            return i().initProcess(str, str2, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void l(int i10, IBinder iBinder, IBinder iBinder2) {
        try {
            i().onActivityCreated(i10, iBinder, iBinder2);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void m(IBinder iBinder) {
        try {
            i().onActivityDestroyed(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void n(IBinder iBinder) {
        try {
            i().onActivityResumed(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void o(IBinder iBinder) {
        try {
            i().onFinishActivity(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void p(IBinder iBinder) {
        try {
            i().onFinishActivityAffinity(iBinder);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void q(Intent intent, int i10) {
        try {
            i().onServiceDestroy(intent, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public UnbindRecord r(Intent intent, int i10) {
        try {
            return i().onServiceUnbind(intent, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void s(Intent intent, int i10) {
        try {
            i().onStartCommand(intent, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void startActivity(Intent intent, int i10) {
        try {
            i().startActivity(intent, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public Intent startService(Intent intent, String str, int i10, int i11) {
        try {
            return i().startService(intent, str, i10, i11);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Intent stopService(Intent intent, String str, int i10) {
        try {
            return i().stopService(intent, str, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public IBinder t(Intent intent, String str, int i10) {
        try {
            return i().peekService(intent, str, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void u(PendingIntentRecord pendingIntentRecord) throws RemoteException {
        try {
            i().registerPendingIntent(pendingIntentRecord);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void unbindService(IBinder iBinder, int i10) {
        try {
            i().unbindService(iBinder, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void v(String str, String str2, int i10) {
        try {
            i().restartProcess(str, str2, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public Intent w(Intent intent, String str, int i10) {
        try {
            return i().sendBroadcast(intent, str, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int x(int i10, String str, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) {
        try {
            return i().startActivities(i10, str, intentArr, strArr, iBinder, bundle);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public int y(int i10, String str, Intent intent, String str2, IBinder iBinder, String str3, int i11, int i12, Bundle bundle) {
        try {
            return i().startActivityAms(i10, str, intent, str2, iBinder, str3, i11, i12, bundle);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public void z(Intent intent, int i10) {
        try {
            i().startActivityFromExistTask(intent, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }
}
