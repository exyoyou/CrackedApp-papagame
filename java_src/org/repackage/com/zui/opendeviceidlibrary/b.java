package org.repackage.com.zui.opendeviceidlibrary;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes10.dex */
public class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f96056e = "OpenDeviceId library";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f96057f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private org.repackage.com.zui.deviceidservice.a f96059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ServiceConnection f96060c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f96058a = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InterfaceC1233b f96061d = null;

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            b.this.f96059b = org.repackage.com.zui.deviceidservice.a.AbstractBinderC1231a.a(iBinder);
            if (b.this.f96061d != null) {
                b.this.f96061d.a("Deviceid Service Connected", b.this);
            }
            b.this.e("Service onServiceConnected");
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b.this.f96059b = null;
            b.this.e("Service onServiceDisconnected");
        }
    }

    /* JADX INFO: renamed from: org.repackage.com.zui.opendeviceidlibrary.b$b, reason: collision with other inner class name */
    public interface InterfaceC1233b<T> {
        void a(T t10, b bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
    }

    private void i(String str) {
    }

    public int a(Context context, InterfaceC1233b<String> interfaceC1233b) {
        if (context == null) {
            throw new NullPointerException("Context can not be null.");
        }
        this.f96058a = context;
        this.f96061d = interfaceC1233b;
        this.f96060c = new a();
        Intent intent = new Intent();
        intent.setClassName("org.repackage.com.zui.deviceidservice", "org.repackage.com.zui.deviceidservice.DeviceidService");
        if (this.f96058a.bindService(intent, this.f96060c, 1)) {
            e("bindService Successful!");
            return 1;
        }
        e("bindService Failed!");
        return -1;
    }

    public String b() {
        if (this.f96058a == null) {
            i("Context is null.");
            throw new IllegalArgumentException("Context is null, must be new OpenDeviceId first");
        }
        try {
            org.repackage.com.zui.deviceidservice.a aVar = this.f96059b;
            if (aVar != null) {
                return aVar.a();
            }
            return null;
        } catch (RemoteException e10) {
            i("getOAID error, RemoteException!");
            e10.printStackTrace();
            return null;
        }
    }

    public void g(boolean z10) {
        f96057f = z10;
    }

    public String h() {
        if (this.f96058a == null) {
            i("Context is null.");
            throw new IllegalArgumentException("Context is null, must be new OpenDeviceId first");
        }
        try {
            org.repackage.com.zui.deviceidservice.a aVar = this.f96059b;
            if (aVar != null) {
                return aVar.b();
            }
            return null;
        } catch (RemoteException e10) {
            i("getUDID error, RemoteException!");
            e10.printStackTrace();
            return null;
        } catch (Exception e11) {
            i("getUDID error, Exception!");
            e11.printStackTrace();
            return null;
        }
    }

    public boolean j() {
        try {
            if (this.f96059b == null) {
                return false;
            }
            e("Device support opendeviceid");
            return this.f96059b.c();
        } catch (RemoteException unused) {
            i("isSupport error, RemoteException!");
            return false;
        }
    }

    public String k() {
        Context context = this.f96058a;
        if (context == null) {
            e("Context is null.");
            throw new IllegalArgumentException("Context is null, must be new OpenDeviceId first");
        }
        String packageName = context.getPackageName();
        e("liufeng, getVAID package：" + packageName);
        if (packageName == null || packageName.equals("")) {
            e("input package is null!");
            return null;
        }
        try {
            org.repackage.com.zui.deviceidservice.a aVar = this.f96059b;
            if (aVar != null) {
                return aVar.a(packageName);
            }
            return null;
        } catch (RemoteException e10) {
            i("getVAID error, RemoteException!");
            e10.printStackTrace();
            return null;
        }
    }

    public String l() {
        Context context = this.f96058a;
        if (context == null) {
            e("Context is null.");
            throw new IllegalArgumentException("Context is null, must be new OpenDeviceId first");
        }
        String packageName = context.getPackageName();
        e("liufeng, getAAID package：" + packageName);
        String strB = null;
        if (packageName == null || packageName.equals("")) {
            e("input package is null!");
            return null;
        }
        try {
            org.repackage.com.zui.deviceidservice.a aVar = this.f96059b;
            if (aVar == null) {
                return null;
            }
            strB = aVar.b(packageName);
            return ((strB == null || "".equals(strB)) && this.f96059b.c(packageName)) ? this.f96059b.b(packageName) : strB;
        } catch (RemoteException unused) {
            i("getAAID error, RemoteException!");
            return strB;
        }
    }

    public void m() {
        try {
            this.f96058a.unbindService(this.f96060c);
            e("unBind Service successful");
        } catch (IllegalArgumentException unused) {
            i("unBind Service exception");
        }
        this.f96059b = null;
    }
}
