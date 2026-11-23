package com.byazt.za;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.gj.a;
import com.byazt.lu.uj;
import com.byazt.tv.i;
import com.byazt.yv.da;
import java.util.HashSet;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 76, 20})
public class c implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f22579a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f22580c = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final HashSet<Integer> f22581i = new HashSet<>(8);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static long f22582n = 0;
    public static int sp = -1;
    public static i tt;
    public static String uj;
    public static long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final a f22583x;

    public c(a aVar) {
        this.f22583x = aVar;
    }

    public static i c(String str, String str2, long j10, String str3) {
        i iVar = new i();
        if (TextUtils.isEmpty(str2)) {
            iVar.yp = str;
        } else {
            iVar.yp = str + ":" + str2;
        }
        iVar.tt = j10;
        iVar.f20443t = -1L;
        if (str3 == null) {
            str3 = "";
        }
        iVar.f20444u = str3;
        uj.c(iVar);
        return iVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        f22581i.add(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        f22581i.remove(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        i iVar = tt;
        if (iVar != null) {
            uj = iVar.yp;
            long jCurrentTimeMillis = System.currentTimeMillis();
            ve = jCurrentTimeMillis;
            c(tt, jCurrentTimeMillis);
            tt = null;
            if (activity.isChild()) {
                return;
            }
            sp = -1;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        i iVarC = c(activity.getClass().getName(), "", System.currentTimeMillis(), uj);
        tt = iVarC;
        iVarC.my = !f22581i.remove(Integer.valueOf(activity.hashCode())) ? 1 : 0;
        if (activity.isChild()) {
            return;
        }
        try {
            sp = activity.getWindow().getDecorView().hashCode();
        } catch (Exception e10) {
            da.tt(e10);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        f22580c++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (uj != null) {
            int i10 = f22580c - 1;
            f22580c = i10;
            if (i10 <= 0) {
                uj = null;
                f22579a = null;
                f22582n = 0L;
                ve = 0L;
            }
        }
    }

    public static i c(i iVar, long j10) {
        i iVar2 = (i) iVar.clone();
        iVar2.tt = j10;
        long j11 = j10 - iVar.tt;
        if (j11 >= 0) {
            iVar2.f20443t = j11;
        } else {
            da.tt((Throwable) null);
        }
        uj.c(iVar2);
        return iVar2;
    }
}
