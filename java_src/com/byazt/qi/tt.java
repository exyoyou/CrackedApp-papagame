package com.byazt.qi;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.bytedance.pangle.annotations.ForbidWrapParam;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 527, 13})
public class tt implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f19174c;
    public final ve tt;

    private tt(Application application) {
        this.tt = ve.c(application);
    }

    public static tt c(Application application) {
        if (f19174c == null) {
            synchronized (tt.class) {
                if (f19174c == null) {
                    f19174c = new tt(application);
                    application.registerActivityLifecycleCallbacks(f19174c);
                }
            }
        }
        return f19174c;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@ForbidWrapParam Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@ForbidWrapParam Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
        View decorView;
        if (Build.VERSION.SDK_INT < 29 || activity == null || activity.getWindow() == null || (decorView = activity.getWindow().getDecorView()) == null) {
            return;
        }
        c.c(decorView);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        View decorView;
        if (Build.VERSION.SDK_INT >= 29 || activity == null || activity.getWindow() == null || (decorView = activity.getWindow().getDecorView()) == null) {
            return;
        }
        c.c(decorView);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@ForbidWrapParam Activity activity) {
        ve veVar = this.tt;
        if (veVar != null) {
            veVar.c(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@ForbidWrapParam Activity activity) {
        ve veVar = this.tt;
        if (veVar != null) {
            veVar.tt(activity);
        }
    }

    public void tt(Application application) {
        application.unregisterActivityLifecycleCallbacks(this);
    }

    public String c(String str, long j10, int i10, boolean z10) {
        ve veVar = this.tt;
        if (veVar != null) {
            return veVar.c(str, j10, i10, z10);
        }
        return null;
    }
}
