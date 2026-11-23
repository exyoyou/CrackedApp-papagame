package cn.sharesdk.framework.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.a.b.e;
import cn.sharesdk.framework.a.b.g;
import cn.sharesdk.framework.a.b.j;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.f;
import com.mob.MobSDK;
import com.mob.commons.CSCenter;
import com.mob.commons.SHARESDK;
import com.mob.commons.authorize.DeviceAuthorizer;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.FileLocker;
import java.io.File;
import java.util.Calendar;

/* JADX INFO: loaded from: classes7.dex */
public class d extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static d f2584b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f2586d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f2588f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private File f2589g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f2585c = a.a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private FileLocker f2590h = new FileLocker();

    private d() {
        File file = new File(MobSDK.getContext().getFilesDir(), ".statistics");
        this.f2589g = file;
        if (file.exists()) {
            return;
        }
        try {
            this.f2589g.createNewFile();
        } catch (Exception e10) {
            SSDKLog.b().a(e10);
        }
    }

    public static synchronized d a() {
        if (f2584b == null) {
            f2584b = new d();
        }
        return f2584b;
    }

    public void b(e eVar) {
        try {
            if (MobSDK.isMob() && this.f2587e) {
                a(eVar, new ShareSDKCallback<e>() { // from class: cn.sharesdk.framework.a.d.4
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(e eVar2) {
                        if (!eVar2.g()) {
                            SSDKLog.b().a("Drop event: " + eVar2.toString(), new Object[0]);
                            return;
                        }
                        Message message = new Message();
                        message.what = 3;
                        message.obj = eVar2;
                        try {
                            ((f) d.this).f2722a.sendMessage(message);
                        } catch (Throwable th) {
                            SSDKLog.b().a(th);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            SSDKLog.b().a("logStart " + th, new Object[0]);
        }
    }

    @Override // cn.sharesdk.framework.utils.f
    protected void c(Message message) {
        if (this.f2587e) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f2588f;
            g gVar = new g();
            gVar.f2553a = jCurrentTimeMillis;
            a(gVar);
            this.f2587e = false;
            try {
                this.f2586d.sendEmptyMessage(1);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
            f2584b = null;
            this.f2722a.getLooper().quit();
        }
    }

    public void a(Handler handler) {
        this.f2586d = handler;
    }

    @Override // cn.sharesdk.framework.utils.f
    protected void a(Message message) {
        if (this.f2587e) {
            return;
        }
        this.f2587e = true;
        try {
            this.f2590h.setLockFile(this.f2589g.getAbsolutePath());
            if (this.f2590h.lock(false)) {
                new Thread(new Runnable() { // from class: cn.sharesdk.framework.a.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            d.this.f2585c.a(DeviceAuthorizer.authorize(new SHARESDK()));
                        } catch (Exception e10) {
                            SSDKLog.b().a(e10);
                        }
                    }
                }).start();
                this.f2585c.a(new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.framework.a.d.2
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(Boolean bool) {
                        if (bool == null || !bool.booleanValue()) {
                            return;
                        }
                        d.this.f2585c.a(((f) d.this).f2722a);
                    }
                });
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    @Override // cn.sharesdk.framework.utils.f
    protected void b(Message message) {
        int i10 = message.what;
        if (i10 == 2) {
            try {
                DH.requester(MobSDK.getContext()).getNetworkType().request(new DH.DHResponder() { // from class: cn.sharesdk.framework.a.d.6
                    @Override // com.mob.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) {
                        String networkType = dHResponse.getNetworkType();
                        if ("none".equals(networkType) || TextUtils.isEmpty(networkType)) {
                            return;
                        }
                        d.this.f2585c.b();
                    }
                });
                return;
            } catch (Throwable th) {
                SSDKLog.b().a(th);
                return;
            }
        }
        if (i10 == 3) {
            Object obj = message.obj;
            if (obj != null) {
                c((e) obj);
                this.f2722a.removeMessages(2);
                this.f2722a.sendEmptyMessageDelayed(2, 2000L);
                return;
            }
            return;
        }
        if (i10 != 4) {
            return;
        }
        long jLongValue = cn.sharesdk.framework.a.a.e.a().h().longValue();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jLongValue);
        int i11 = calendar.get(1);
        int i12 = calendar.get(2);
        int i13 = calendar.get(5);
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i14 = calendar.get(1);
        int i15 = calendar.get(2);
        int i16 = calendar.get(5);
        if (i11 == i14 && i12 == i15 && i13 == i16) {
            return;
        }
        this.f2585c.a(this.f2722a);
    }

    private void c(e eVar) {
        try {
            try {
                boolean zB = b();
                if (((eVar instanceof j) || (eVar instanceof cn.sharesdk.framework.a.b.d)) && !zB) {
                    SSDKLog.b().b("SH AU LOG FALSE");
                    return;
                } else {
                    this.f2585c.a(eVar);
                    eVar.h();
                    return;
                }
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        } catch (Throwable th2) {
            SSDKLog.b().a(th2);
            SSDKLog.b().a(eVar.toString(), new Object[0]);
        }
        SSDKLog.b().a(th2);
        SSDKLog.b().a(eVar.toString(), new Object[0]);
    }

    public void a(final e eVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            new Thread() { // from class: cn.sharesdk.framework.a.d.3
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    d.this.b(eVar);
                }
            }.start();
        } else {
            b(eVar);
        }
    }

    private void a(final e eVar, final ShareSDKCallback<e> shareSDKCallback) {
        DH.requester(MobSDK.getContext()).getDeviceData().getDetailNetworkTypeForStatic().request(new DH.DHResponder() { // from class: cn.sharesdk.framework.a.d.5
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    eVar.f2537f = DeviceAuthorizer.authorize(new SHARESDK());
                    eVar.f2538g = DH.SyncMtd.getPackageName();
                    eVar.f2539h = DH.SyncMtd.getAppVersion();
                    eVar.f2540i = String.valueOf(ShareSDK.SDK_VERSION_CODE);
                    eVar.f2541j = DH.SyncMtd.getPlatformCode();
                    eVar.f2542k = dHResponse.getDetailNetworkTypeForStatic();
                    if (TextUtils.isEmpty(MobSDK.getAppkey())) {
                        SSDKLog.b().b("ShareSDKCore", "Your appKey of ShareSDK is null , this will cause its data won't be count!");
                    } else if (!"cn.sharesdk.demo".equals(eVar.f2538g) && ("api20".equals(MobSDK.getAppkey()) || "androidv1101".equals(MobSDK.getAppkey()))) {
                        SSDKLog.b().b("ShareSDKCore", "Your app is using the appkey of ShareSDK Demo, this will cause its data won't be count!");
                    }
                    eVar.f2543l = dHResponse.getDeviceData();
                    shareSDKCallback.onCallback(eVar);
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                }
            }
        });
    }

    private boolean b() {
        try {
            boolean zIsSocietyPlatformDataEnable = CSCenter.getInstance().isSocietyPlatformDataEnable();
            SSDKLog.b().a("platformDataEnable:" + zIsSocietyPlatformDataEnable, new Object[0]);
            return zIsSocietyPlatformDataEnable;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return true;
        }
    }
}
