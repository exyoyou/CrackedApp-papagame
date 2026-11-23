package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f7234h = "failed";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f7235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IAlixPay f7236b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f7239e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f7237c = IAlixPay.class;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ServiceConnection f7240f = new g(this);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private IRemoteServiceCallback f7241g = new h(this);

    public interface a {
        void a();
    }

    public f(Activity activity, a aVar) {
        this.f7235a = activity;
        this.f7239e = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private String d(String str, Intent intent) {
        String str2;
        String strU = j.u(this.f7235a);
        this.f7235a.getApplicationContext().bindService(intent, this.f7240f, 1);
        synchronized (this.f7237c) {
            if (this.f7236b == null) {
                try {
                    this.f7237c.wait(com.alipay.sdk.data.a.f().a());
                } catch (InterruptedException unused) {
                }
            }
        }
        try {
            if (this.f7236b != null) {
                a aVar = this.f7239e;
                if (aVar != null) {
                    aVar.a();
                }
                if (this.f7235a.getRequestedOrientation() == 0) {
                    this.f7235a.setRequestedOrientation(1);
                    this.f7238d = true;
                }
                this.f7236b.registerCallback(this.f7241g);
                String strPay = this.f7236b.Pay(str);
                this.f7236b.unregisterCallback(this.f7241g);
                try {
                    this.f7235a.unbindService(this.f7240f);
                } catch (Throwable unused2) {
                }
                this.f7241g = null;
                this.f7240f = null;
                this.f7236b = null;
                if (this.f7238d) {
                    this.f7235a.setRequestedOrientation(0);
                    this.f7238d = false;
                }
                return strPay;
            }
            String strU2 = j.u(this.f7235a);
            List<PackageInfo> installedPackages = this.f7235a.getPackageManager().getInstalledPackages(0);
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < installedPackages.size(); i10++) {
                PackageInfo packageInfo = installedPackages.get(i10);
                int i11 = packageInfo.applicationInfo.flags;
                if ((i11 & 1) == 0 && (i11 & 128) == 0) {
                    if (packageInfo.packageName.equals(j.f7245b)) {
                        sb2.append(packageInfo.packageName);
                        sb2.append(packageInfo.versionCode);
                        str2 = "-";
                    } else if (!packageInfo.packageName.contains("theme") && !packageInfo.packageName.startsWith("com.google.") && !packageInfo.packageName.startsWith("com.android.")) {
                        sb2.append(packageInfo.packageName);
                        str2 = "-";
                    }
                    sb2.append(str2);
                }
            }
            com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f7066l, com.alipay.sdk.app.statistic.c.f7074t, strU + "|" + strU2 + "|" + sb2.toString());
            try {
                this.f7235a.unbindService(this.f7240f);
            } catch (Throwable unused3) {
            }
            this.f7241g = null;
            this.f7240f = null;
            this.f7236b = null;
            if (this.f7238d) {
                this.f7235a.setRequestedOrientation(0);
                this.f7238d = false;
            }
            return f7234h;
        } catch (Throwable th) {
            try {
                com.alipay.sdk.app.statistic.a.d(com.alipay.sdk.app.statistic.c.f7066l, com.alipay.sdk.app.statistic.c.f7077w, th);
                return f7234h;
            } finally {
                try {
                    this.f7235a.unbindService(this.f7240f);
                } catch (Throwable unused4) {
                }
                this.f7241g = null;
                this.f7240f = null;
                this.f7236b = null;
                if (this.f7238d) {
                    this.f7235a.setRequestedOrientation(0);
                    this.f7238d = false;
                }
            }
        }
    }

    public final String c(String str) {
        String strF;
        try {
            j.a aVarC = j.c(this.f7235a, j.f7245b);
            if (aVarC != null && (strF = j.f(aVarC.f7247a)) != null && !TextUtils.equals(strF, u.a.f97406h)) {
                com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f7066l, com.alipay.sdk.app.statistic.c.f7073s, strF);
                return f7234h;
            }
            if (aVarC.f7248b > 78) {
                try {
                    Intent intent = new Intent();
                    intent.setClassName(j.f7245b, "com.alipay.android.app.TransProcessPayActivity");
                    this.f7235a.startActivity(intent);
                    Thread.sleep(150L);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        Intent intent2 = new Intent();
        intent2.setPackage(j.f7245b);
        intent2.setAction("com.eg.android.AlipayGphone.IAlixPay");
        return d(str, intent2);
    }

    public final void e() {
        this.f7235a = null;
    }
}
