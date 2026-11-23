package ec;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f90887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ kwai.a.a f90888c;

    public a(kwai.a.a aVar, Context context) {
        this.f90888c = aVar;
        this.f90887b = context;
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
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        kwai.a.a aVar = this.f90888c;
        if (aVar.f93860d) {
            return;
        }
        aVar.a();
        kc.a.a("AutomaticManager", "onForeground");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (kwai.a.a.d(this.f90887b)) {
            return;
        }
        this.f90888c.f93860d = false;
        this.f90888c.f93861e.removeCallbacksAndMessages(null);
    }
}
