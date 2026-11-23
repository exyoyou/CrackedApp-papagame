package com.qq.e.comm.managers;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.dfa.GDTAppDialogClickListener;
import com.qq.e.comm.managers.devtool.DevTools;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.managers.plugin.e;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class a implements IGDTAdManager {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ExecutorService f78305g = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f78306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f78307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Context f78308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile PM f78309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile DevTools f78310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile String f78311f;

    /* JADX INFO: renamed from: com.qq.e.comm.managers.a$a, reason: collision with other inner class name */
    class RunnableC1009a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GDTAdSdk.OnStartListener f78312b;

        RunnableC1009a(GDTAdSdk.OnStartListener onStartListener) {
            this.f78312b = onStartListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                POFactory pOFactory = a.this.f78309d.getPOFactory(false, false);
                if (pOFactory != null) {
                    pOFactory.start(a.this.f78309d.getStartCaller(1));
                    GDTAdSdk.OnStartListener onStartListener = this.f78312b;
                    if (onStartListener != null) {
                        onStartListener.onStartSuccess();
                    }
                } else {
                    GDTAdSdk.OnStartListener onStartListener2 = this.f78312b;
                    if (onStartListener2 != null) {
                        onStartListener2.onStartFailed(new Exception("GDTAdSdk start异常"));
                    }
                }
            } catch (e e10) {
                GDTLogger.e(e10.getMessage(), e10);
                GDTAdSdk.OnStartListener onStartListener3 = this.f78312b;
                if (onStartListener3 != null) {
                    onStartListener3.onStartFailed(e10);
                }
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f78314b;

        b(boolean z10) {
            this.f78314b = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a.this.f78309d.getPOFactory(this.f78314b, true);
                a.this.f78307b = true;
            } catch (e e10) {
                GDTLogger.e(e10.getMessage(), e10);
            }
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static a f78316a = new a(null);
    }

    private a() {
        this.f78306a = false;
        this.f78307b = false;
    }

    public static a b() {
        return c.f78316a;
    }

    public PM c() {
        return this.f78309d;
    }

    public boolean d() {
        if (this.f78306a) {
            return true;
        }
        GDTLogger.e("SDK 尚未初始化，请在 Application 中调用 GDTAdSdk.initWithoutStart() 初始化");
        return false;
    }

    synchronized boolean e(Context context, String str, boolean z10) {
        if (this.f78306a) {
            return true;
        }
        if (context == null || TextUtils.isEmpty(str)) {
            GDTLogger.e("GDTADManager初始化错误，context和appId不能为空");
            return false;
        }
        try {
            b(context, str, z10);
            this.f78306a = true;
            return true;
        } catch (Throwable th) {
            GDTLogger.e("GDTADManager初始化错误", th);
            return false;
        }
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public String getBuyerId(Map<String, Object> map) {
        if (!d()) {
            return "";
        }
        try {
            return this.f78309d.getPOFactory().getBuyerId(map);
        } catch (Exception e10) {
            GDTLogger.e("SDK 初始化异常", e10);
            return "";
        }
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public DevTools getDevTools() {
        if (this.f78310e == null) {
            this.f78310e = new DevTools();
        }
        return this.f78310e;
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public String getSDKInfo(String str) {
        if (!d()) {
            return "";
        }
        try {
            return this.f78309d.getPOFactory().getSDKInfo(str);
        } catch (Exception e10) {
            GDTLogger.e("SDK 初始化异常", e10);
            return "";
        }
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public int showOpenOrInstallAppDialog(GDTAppDialogClickListener gDTAppDialogClickListener) {
        if (!this.f78307b) {
            return 0;
        }
        try {
            return this.f78309d.getPOFactory().showOpenOrInstallAppDialog(gDTAppDialogClickListener);
        } catch (Exception e10) {
            GDTLogger.e("SDK 初始化异常", e10);
            return 0;
        }
    }

    /* synthetic */ a(RunnableC1009a runnableC1009a) {
        this();
    }

    private void b(Context context, String str, boolean z10) {
        this.f78311f = str;
        this.f78308c = context.getApplicationContext();
        this.f78309d = new PM(this.f78308c, null);
        f78305g.submit(new b(z10));
    }

    public String a() {
        return this.f78311f;
    }

    synchronized void c(GDTAdSdk.OnStartListener onStartListener) {
        if (this.f78306a) {
            f78305g.submit(new RunnableC1009a(onStartListener));
            return;
        }
        GDTLogger.e("在调用start方法前请先调用initWithoutStart方法");
        if (onStartListener != null) {
            onStartListener.onStartFailed(new Exception("在调用start方法前请先调用initWithoutStart方法"));
        }
    }
}
