package com.byazt.vm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 42})
public final class i implements nu {
    public static final tt<Boolean> tt = new tt<Boolean>() { // from class: com.byazt.vm.i.1
        @Override // com.byazt.vm.tt
        /* JADX INFO: renamed from: ve, reason: merged with bridge method [inline-methods] */
        public Boolean c(Object... objArr) {
            return Boolean.valueOf(x.c((Context) objArr[0]));
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f21232c;

    @com.byazt.zqa.c(c = {0, 1, 165, 64})
    static class c extends nu.c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f21234c = 0;
    }

    @Nullable
    private Pair<String, Boolean> a(Context context) {
        if (TextUtils.isEmpty(this.f21232c)) {
            return null;
        }
        return (Pair) new zm(context, new Intent("com.uodis.opendevice.OPENIDS_SERVICE").setPackage(this.f21232c), new zm.tt<gu, Pair<String, Boolean>>() { // from class: com.byazt.vm.i.2
            @Override // com.byazt.vm.zm.tt
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public gu tt(IBinder iBinder) {
                return gu.c.c(iBinder);
            }

            @Override // com.byazt.vm.zm.tt
            public Pair<String, Boolean> c(gu guVar) throws Exception {
                if (guVar == null) {
                    return null;
                }
                return new Pair<>(guVar.c(), Boolean.valueOf(guVar.tt()));
            }
        }).c();
    }

    public static boolean c(Context context) {
        if (context == null) {
            return false;
        }
        return tt.tt(context).booleanValue();
    }

    private boolean n(Context context) {
        if (context == null) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
                this.f21232c = "com.huawei.hwid";
            } else if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) != null) {
                this.f21232c = "com.huawei.hwid.tv";
            } else {
                this.f21232c = "com.huawei.hms";
                if (packageManager.getPackageInfo("com.huawei.hms", 0) == null) {
                    return false;
                }
            }
            return true;
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.vm.nu
    public boolean tt(Context context) {
        return n(context);
    }

    @Override // com.byazt.vm.nu
    @Nullable
    @WorkerThread
    /* JADX INFO: renamed from: uj, reason: merged with bridge method [inline-methods] */
    public c ve(Context context) {
        c cVar = new c();
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                String string = Settings.Global.getString(context.getContentResolver(), "pps_oaid");
                String string2 = Settings.Global.getString(context.getContentResolver(), "pps_track_limit");
                if (!TextUtils.isEmpty(string)) {
                    cVar.tt = string;
                    cVar.ve = Boolean.parseBoolean(string2);
                    cVar.f21234c = 202003021704L;
                    return cVar;
                }
            } catch (Throwable th) {
                com.byazt.yv.da.c(th);
            }
        }
        Pair<String, Boolean> pairA = a(context);
        if (pairA != null) {
            cVar.tt = (String) pairA.first;
            cVar.ve = ((Boolean) pairA.second).booleanValue();
            cVar.f21234c = c(context, this.f21232c);
        }
        return cVar;
    }

    private static int c(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e10) {
            com.byazt.yv.da.c(e10);
            return 0;
        }
    }
}
