package cn.com.chinatelecom.account.api.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import cn.com.chinatelecom.account.api.CtAuth;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f769a = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Handler f770b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f773e;

    public c(Context context) {
        this.f772d = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(String str) {
        try {
            Class<?> cls = Class.forName("android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f772d.getSystemService("connectivity");
            if (connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) != 0) {
                cls.getMethod("startUsingNetworkFeature", Integer.TYPE, String.class).invoke(connectivityManager, 0, "enableHIPRI");
                for (int i10 = 0; i10 < 5; i10++) {
                    try {
                        if (connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) == 0) {
                            break;
                        }
                        Thread.sleep(500L);
                    } catch (Throwable th) {
                        CtAuth.warn(f769a, "STMN_V4", th);
                    }
                }
            }
            int iA = a(b(str));
            Class<?> cls2 = Integer.TYPE;
            boolean zBooleanValue = ((Boolean) cls.getMethod("requestRouteToHost", cls2, cls2).invoke(connectivityManager, 5, Integer.valueOf(iA))).booleanValue();
            CtAuth.info(f769a, "STMN_V4 ：" + zBooleanValue);
            return zBooleanValue ? 0 : -2;
        } catch (Throwable th2) {
            CtAuth.warn(f769a, "STMN_V4_T", th2);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean d() {
        return this.f771c;
    }

    public static int a(String str) {
        try {
            byte[] address = InetAddress.getByName(str).getAddress();
            return (address[0] & 255) | ((address[3] & 255) << 24) | ((address[2] & 255) << 16) | ((address[1] & 255) << 8);
        } catch (Throwable th) {
            CtAuth.warn(f769a, "When InetAddress.getByName(),throws exception", th);
            return -1;
        }
    }

    public static String b(String str) {
        int iIndexOf = str.indexOf("://");
        if (iIndexOf > 0) {
            str = str.substring(iIndexOf + 3);
        }
        int iIndexOf2 = str.indexOf(58);
        if (iIndexOf2 >= 0) {
            str = str.substring(0, iIndexOf2);
        }
        int iIndexOf3 = str.indexOf(47);
        if (iIndexOf3 >= 0) {
            str = str.substring(0, iIndexOf3);
        }
        int iIndexOf4 = str.indexOf(63);
        return iIndexOf4 >= 0 ? str.substring(0, iIndexOf4) : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        this.f771c = true;
    }

    private void b(final b bVar) {
        f770b.postDelayed(new Runnable() { // from class: cn.com.chinatelecom.account.api.b.c.1
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.d() || bVar == null) {
                    return;
                }
                c.this.c();
                bVar.a();
            }
        }, 2500L);
    }

    @TargetApi(21)
    public void a() {
        try {
            if (this.f773e != null) {
                ((ConnectivityManager) this.f772d.getSystemService("connectivity")).unregisterNetworkCallback(this.f773e);
                this.f773e = null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @TargetApi(21)
    public void a(final b bVar) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            b(bVar);
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f772d.getSystemService("connectivity");
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addCapability(12);
            builder.addTransportType(0);
            NetworkRequest networkRequestBuild = builder.build();
            ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: cn.com.chinatelecom.account.api.b.c.2
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    if (c.this.d() || bVar == null) {
                        return;
                    }
                    c.this.c();
                    bVar.a(network, System.currentTimeMillis() - jCurrentTimeMillis);
                }
            };
            this.f773e = networkCallback;
            connectivityManager.requestNetwork(networkRequestBuild, networkCallback);
        } catch (Throwable unused) {
            if (d() || bVar == null) {
                return;
            }
            bVar.a(System.currentTimeMillis() - jCurrentTimeMillis);
        }
    }

    public void a(final b bVar, final String str) {
        new d().a(new e() { // from class: cn.com.chinatelecom.account.api.b.c.3
            @Override // cn.com.chinatelecom.account.api.b.e
            public void runTask() {
                final long jCurrentTimeMillis = System.currentTimeMillis();
                int iC = c.this.c(str);
                if (iC == 0) {
                    bVar.a(null, System.currentTimeMillis() - jCurrentTimeMillis);
                } else if (iC == -1) {
                    c.f770b.post(new Runnable() { // from class: cn.com.chinatelecom.account.api.b.c.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bVar.a(System.currentTimeMillis() - jCurrentTimeMillis);
                        }
                    });
                } else {
                    c.f770b.post(new Runnable() { // from class: cn.com.chinatelecom.account.api.b.c.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            bVar.a();
                        }
                    });
                }
            }
        });
    }
}
