package com.byazt.lm;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1949, 20})
public class c implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f16683c;
    public int tt = 0;
    public InterfaceC0369c uj;
    public volatile WeakReference<Activity> ve;

    /* JADX INFO: renamed from: com.byazt.lm.c$c, reason: collision with other inner class name */
    public interface InterfaceC0369c {
        void c();

        void tt();
    }

    public Boolean c() {
        return Boolean.valueOf(f16683c);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.ve = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.tt++;
        f16683c = false;
        InterfaceC0369c interfaceC0369c = this.uj;
        if (interfaceC0369c != null) {
            interfaceC0369c.tt();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        int i10 = this.tt - 1;
        this.tt = i10;
        if (i10 == 0) {
            f16683c = true;
            InterfaceC0369c interfaceC0369c = this.uj;
            if (interfaceC0369c != null) {
                interfaceC0369c.c();
            }
        }
    }

    public Activity tt() {
        if (this.ve == null) {
            return null;
        }
        return this.ve.get();
    }

    public void c(InterfaceC0369c interfaceC0369c) {
        this.uj = interfaceC0369c;
    }
}
