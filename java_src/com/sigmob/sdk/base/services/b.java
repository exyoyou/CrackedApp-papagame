package com.sigmob.sdk.base.services;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.os.Build;
import com.byazt.quv.AbsServerManager;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.n;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.base.utils.z;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class b implements f.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f79681c = "BuriedPointConfig";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f79682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    g f79683b = g.STOP;

    public b() {
        if (this.f79682a == null) {
            this.f79682a = new a();
        }
    }

    public static void c() {
        z.b(com.sigmob.sdk.b.e(), f79681c, n.f79576c, Constants.sdf.format(new Date()));
    }

    private static List<PackageInfo> d(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return AppPackageUtil.getPackageManager(context).getInstalledPackages(0);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Context context) {
        try {
            List<PackageInfo> listD = d(context);
            if (com.sigmob.sdk.base.utils.e.a(listD)) {
                return;
            }
            for (int i10 = 0; i10 < listD.size(); i10++) {
                PackageInfo packageInfo = listD.get(i10);
                if ((packageInfo.applicationInfo.flags & 1) == 0) {
                    ad.a(packageInfo, 0);
                }
            }
            z.b(context, f79681c, n.f79575b, Constants.sdf.format(new Date()));
        } catch (Throwable th) {
            SigmobLog.e("update app info", th);
        }
    }

    private static void i() {
        final Context contextE = com.sigmob.sdk.b.e();
        if (c(contextE)) {
            return;
        }
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.base.services.i
            @Override // java.lang.Runnable
            public final void run() {
                b.e(contextE);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e  */
    private static void j() {
        WindCustomController customController;
        try {
            if (com.sigmob.sdk.base.i.a().i()) {
                WindAdOptions options = WindAds.sharedAds().getOptions();
                o oVarA = o.a();
                int iAd = oVarA.ad();
                boolean zJ = oVarA.j();
                boolean zS = oVarA.S();
                boolean z10 = false;
                if (!zJ) {
                    if (iAd == 1) {
                        z10 = true;
                    } else if (iAd != 2) {
                        if (((options == null || (customController = options.getCustomController()) == null) ? true : customController.isCanUseAppList()) && !zS) {
                            z10 = true;
                        }
                    }
                }
                if (z10) {
                    i();
                }
            }
        } catch (Throwable th) {
            SigmobLog.e("BuriedPointManager getInstance", th);
        }
    }

    public void a(Context context) {
        if (o.a().ac()) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(com.sigmob.sdk.base.utils.c.a(n.L));
        if (Build.VERSION.SDK_INT >= 27) {
            intentFilter.addAction(com.sigmob.sdk.base.utils.c.a(n.M));
        }
        intentFilter.addAction(com.sigmob.sdk.base.utils.c.a(n.J));
        intentFilter.addAction(com.sigmob.sdk.base.utils.c.a(n.I));
        intentFilter.addAction(com.sigmob.sdk.base.utils.c.a(n.K));
        intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
        com.sigmob.sdk.base.utils.g.a(context, this.f79682a, intentFilter);
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public void g() {
        if (this.f79683b == g.RUNNING) {
            b(com.sigmob.sdk.b.e());
            this.f79683b = g.STOP;
        }
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public Error h() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(o oVar, Context context) {
        PackageInfo packageInfoF;
        int i10;
        List<String> listU = oVar.U();
        if (com.sigmob.sdk.base.utils.e.a(listU)) {
            return;
        }
        for (String str : listU) {
            boolean zB = false;
            if (oVar.L()) {
                boolean zA = com.sigmob.sdk.base.utils.g.a(context, str);
                packageInfoF = com.sigmob.sdk.base.utils.g.f(context, str);
                zB = zA;
            } else {
                packageInfoF = null;
                if (oVar.M()) {
                    zB = com.sigmob.sdk.base.utils.g.b(context, str);
                    i10 = 1;
                }
                ad.a(packageInfoF, str, zB, i10);
            }
            i10 = 0;
            ad.a(packageInfoF, str, zB, i10);
        }
        c();
    }

    public static void b() {
        try {
            j();
        } catch (Throwable unused) {
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    private static boolean c(Context context) {
        return z.a(context, f79681c, n.f79575b, "").equals(Constants.sdf.format(new Date()));
    }

    public static void d() {
        final Context contextE = com.sigmob.sdk.b.e();
        boolean zI = com.sigmob.sdk.base.i.a().i();
        if (contextE == null || !zI) {
            return;
        }
        final o oVarA = o.a();
        if (a() || !oVarA.N().booleanValue()) {
            return;
        }
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.base.services.j
            @Override // java.lang.Runnable
            public final void run() {
                b.a(oVarA, contextE);
            }
        });
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public boolean e() {
        g gVar = this.f79683b;
        g gVar2 = g.RUNNING;
        if (gVar == gVar2) {
            return false;
        }
        a(com.sigmob.sdk.b.e());
        this.f79683b = gVar2;
        return true;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public g f() {
        return this.f79683b;
    }

    @SuppressLint({"SimpleDateFormat"})
    public static boolean a() {
        return z.a(com.sigmob.sdk.b.e(), f79681c, n.f79576c, "").equals(Constants.sdf.format(new Date()));
    }

    public void b(Context context) {
        context.unregisterReceiver(this.f79682a);
    }
}
