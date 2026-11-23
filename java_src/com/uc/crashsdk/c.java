package com.uc.crashsdk;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class c implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f84087a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f84088b = false;

    c() {
    }

    private void a(Activity activity, int i10) {
        if (1 == i10) {
            String unused = b.f84061ad = activity.getComponentName().flattenToShortString();
        } else {
            String unused2 = b.f84061ad = "";
        }
        b.D();
        if (g.L()) {
            b.O();
            synchronized (b.f84059ab) {
                b.f84059ab.put(activity, Integer.valueOf(i10));
                a(i10);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, 2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (g.L()) {
            b.O();
            synchronized (b.f84059ab) {
                b.f84059ab.remove(activity);
                a(2);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity, 2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity, 1);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity, 1);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(activity, 2);
    }

    private void a(int i10) {
        if (e.u()) {
            com.uc.crashsdk.a.a.a("crashsdk", "[LifeCycle] ignore state change while crashing");
            return;
        }
        boolean z10 = true;
        boolean z11 = 1 == i10;
        if (!z11) {
            Iterator it2 = b.f84059ab.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = z11;
                    break;
                }
                Object value = ((Map.Entry) it2.next()).getValue();
                if (value != null && ((Integer) value).intValue() == 1) {
                    break;
                }
            }
        } else {
            z10 = z11;
            break;
        }
        if (this.f84087a != z10) {
            b.b(z10);
            this.f84087a = z10;
        }
        boolean zIsEmpty = b.f84059ab.isEmpty();
        if (this.f84088b != zIsEmpty) {
            if (zIsEmpty) {
                b.w();
            }
            this.f84088b = zIsEmpty;
        }
    }
}
