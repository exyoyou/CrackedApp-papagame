package com.xinzhu.overmind.client.hook.delegate;

import android.app.IServiceConnection;
import android.content.ComponentName;
import android.os.IBinder;
import android.os.RemoteException;
import com.xinzhu.haunted.android.app.s;
import com.xinzhu.overmind.utils.e;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class c extends IServiceConnection.Stub {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Map<IBinder, c> f89313m = new HashMap();
    private ComponentName mComponentName;
    private IServiceConnection mConn;

    class a implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IBinder f89314b;

        a(IBinder iBinder) {
            this.f89314b = iBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            c.f89313m.remove(this.f89314b);
            this.f89314b.unlinkToDeath(this, 0);
        }
    }

    private c(IServiceConnection iServiceConnection, ComponentName componentName) {
        this.mConn = iServiceConnection;
        this.mComponentName = componentName;
    }

    public static IServiceConnection createProxy(IServiceConnection iServiceConnection, ComponentName componentName) {
        IBinder iBinderAsBinder = iServiceConnection.asBinder();
        c cVar = f89313m.get(iBinderAsBinder);
        if (cVar != null) {
            return cVar;
        }
        try {
            iBinderAsBinder.linkToDeath(new a(iBinderAsBinder), 0);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
        c cVar2 = new c(iServiceConnection, componentName);
        f89313m.put(iBinderAsBinder, cVar2);
        return cVar2;
    }

    public static c getDelegate(IBinder iBinder) {
        return f89313m.get(iBinder);
    }

    @Override // android.app.IServiceConnection
    public void connected(ComponentName componentName, IBinder iBinder) throws RemoteException {
        connected(componentName, iBinder, false);
    }

    public void connected(ComponentName componentName, IBinder iBinder, boolean z10) throws RemoteException {
        if (e.x()) {
            new s(this.mConn).b(this.mComponentName, iBinder, z10);
        } else {
            this.mConn.connected(componentName, iBinder);
        }
    }
}
