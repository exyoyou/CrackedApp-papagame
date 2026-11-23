package com.byazt.g;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import com.byazt.hv.TTDownloadField;
import com.byazt.nr.m;
import com.byazt.w.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 954, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile int f14291a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Application f14292c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public WeakReference<Activity> f14293n;
    public volatile boolean sp;
    public ve tt;
    public int uj;
    public final List<InterfaceC0315c> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Application.ActivityLifecycleCallbacks f14294x;

    /* JADX INFO: renamed from: com.byazt.g.c$c, reason: collision with other inner class name */
    public interface InterfaceC0315c {
        @MainThread
        void tt();

        @MainThread
        void ve();
    }

    @com.byazt.zqa.c(c = {0, 1, 954, 175})
    private static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c f14296c = new c();
    }

    public interface ve {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f14291a = 0;
        Object[] objArrUj = uj();
        if (objArrUj != null) {
            for (Object obj : objArrUj) {
                ((InterfaceC0315c) obj).ve();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.f14291a = 1;
        Object[] objArrUj = uj();
        if (objArrUj != null) {
            for (Object obj : objArrUj) {
                ((InterfaceC0315c) obj).tt();
            }
        }
    }

    private boolean sp() {
        try {
            Application application = this.f14292c;
            if (application == null) {
                return false;
            }
            application.getSystemService(TTDownloadField.TT_ACTIVITY);
            return TextUtils.equals(application.getPackageName(), a.uj(application));
        } catch (Throwable th) {
            m.c(th);
            return false;
        }
    }

    private Object[] uj() {
        Object[] array;
        synchronized (this.ve) {
            array = this.ve.size() > 0 ? this.ve.toArray() : null;
        }
        return array;
    }

    private c() {
        this.ve = new ArrayList();
        this.f14291a = -1;
        this.sp = false;
        this.f14294x = new Application.ActivityLifecycleCallbacks() { // from class: com.byazt.g.c.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                c.this.sp = true;
                if (c.this.uj != 0 || activity == null) {
                    return;
                }
                c.this.uj = activity.hashCode();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                int i10 = c.this.uj;
                c.this.sp = false;
                c.this.uj = activity != null ? activity.hashCode() : i10;
                if (i10 == 0) {
                    c.this.n();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                c.this.f14293n = new WeakReference(activity);
                int i10 = c.this.uj;
                c.this.uj = activity != null ? activity.hashCode() : i10;
                c.this.sp = false;
                if (i10 == 0) {
                    c.this.n();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                if (activity != null && activity.hashCode() == c.this.uj) {
                    c.this.uj = 0;
                    c.this.a();
                }
                c.this.sp = false;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public boolean tt() {
        int i10 = this.f14291a;
        ?? r10 = i10;
        if (i10 == -1) {
            ?? Sp = sp();
            this.f14291a = Sp;
            r10 = Sp;
        }
        return r10 == 1;
    }

    public boolean ve() {
        return tt() && !this.sp;
    }

    public static c c() {
        return tt.f14296c;
    }

    public void tt(InterfaceC0315c interfaceC0315c) {
        synchronized (this.ve) {
            this.ve.remove(interfaceC0315c);
        }
    }

    public void c(Context context) {
        if (this.f14292c == null && (context instanceof Application)) {
            synchronized (this) {
                if (this.f14292c == null) {
                    Application application = (Application) context;
                    this.f14292c = application;
                    application.registerActivityLifecycleCallbacks(this.f14294x);
                }
            }
        }
    }

    public void c(ve veVar) {
        this.tt = veVar;
    }

    public void c(InterfaceC0315c interfaceC0315c) {
        if (interfaceC0315c == null) {
            return;
        }
        synchronized (this.ve) {
            if (!this.ve.contains(interfaceC0315c)) {
                this.ve.add(interfaceC0315c);
            }
        }
    }
}
