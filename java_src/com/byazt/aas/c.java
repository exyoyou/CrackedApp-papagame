package com.byazt.aas;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Window;
import com.byazt.ete.ic;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 20})
public class c implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f11395c;
    public static long tt;
    public static long ve;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile tt f11396a;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Handler f11399m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile Application.ActivityLifecycleCallbacks f11400n;
    public volatile WeakReference<Activity> nu;
    public volatile InterfaceC0252c uj;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile WeakReference<Activity> f11404z;
    public final AtomicBoolean sp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AtomicBoolean f11403x = new AtomicBoolean(false);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashSet<Integer> f11398i = new HashSet<>();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile CopyOnWriteArrayList<WeakReference<com.byazt.sr.c>> f11397da = new CopyOnWriteArrayList<>();
    public volatile CopyOnWriteArrayList<tt> sl = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile CopyOnWriteArrayList<InterfaceC0252c> f11401t = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ArrayList<String> f11402u = new ArrayList<>();
    public SparseArray<Set<Runnable>> yp = new SparseArray<>();

    /* JADX INFO: renamed from: com.byazt.aas.c$c, reason: collision with other inner class name */
    public interface InterfaceC0252c {
        void c();

        void c(String str, Window window);

        void tt(String str, Window window);
    }

    public interface tt {
        void onAppBackground();

        void onAppExit();

        void onAppForeground();

        void onAppStart();
    }

    @com.byazt.zqa.c(c = {0, 1, 131, 132})
    public static abstract class ve implements InterfaceC0252c {
        @Override // com.byazt.aas.c.InterfaceC0252c
        public void c() {
        }

        @Override // com.byazt.aas.c.InterfaceC0252c
        public void tt(String str, Window window) {
        }

        @Override // com.byazt.aas.c.InterfaceC0252c
        public void c(String str, Window window) {
        }
    }

    private boolean a() {
        Function<SparseArray<Object>, Object> functionLt = com.byazt.omf.x.m().lt();
        if (functionLt != null) {
            try {
                Object objApply = functionLt.apply(com.byazt.yxi.uj.c().c(2).c(Boolean.class).tt());
                return objApply != null && ((Boolean) objApply).booleanValue();
            } catch (Exception unused) {
            }
        }
        return this.sp.get();
    }

    private Handler n() {
        if (this.f11399m == null) {
            if (com.byazt.omf.gt.tt().ra()) {
                this.f11399m = com.byazt.nr.da.ve();
            } else {
                this.f11399m = com.byazt.nr.da.tt();
            }
        }
        return this.f11399m;
    }

    private void sp() {
        if (!com.byazt.omf.x.m().d() && tt()) {
            com.byazt.bwm.n.ve(new com.byazt.bwm.sp("reportSdkUseTime") { // from class: com.byazt.aas.c.6
                @Override // java.lang.Runnable
                public void run() {
                    c.f11395c = false;
                    c.ve = System.currentTimeMillis();
                    com.byazt.ukr.yp.c().c(c.tt / 1000, c.ve / 1000, !com.byazt.omf.rh.tt.get() ? 1 : 0);
                    com.byazt.omf.rh.tt.set(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj(@ForbidWrapParam Activity activity) {
        if (activity != null) {
            this.f11398i.remove(Integer.valueOf(activity.hashCode()));
            if (this.f11398i.size() == 0) {
                this.f11403x.set(true);
                ve(false);
            }
        }
        if (this.f11400n != null) {
            this.f11400n.onActivityDestroyed(activity);
        }
        Iterator<InterfaceC0252c> it2 = this.f11401t.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
        if (this.f11397da != null && this.f11397da.size() > 0) {
            for (WeakReference<com.byazt.sr.c> weakReference : this.f11397da) {
                if (weakReference != null && weakReference.get() != null) {
                    try {
                        weakReference.get().c(activity);
                    } catch (Throwable th) {
                        com.byazt.nr.m.c(th);
                    }
                }
            }
        }
        if (this.f11404z != null && this.f11404z.get() == activity) {
            this.f11404z = null;
        }
        try {
            com.byazt.iyp.sp.uj(activity);
        } catch (Throwable unused) {
        }
        if (activity != null) {
            int iHashCode = activity.hashCode();
            synchronized (this.yp) {
                Set<Runnable> set = this.yp.get(iHashCode);
                if (set != null) {
                    for (Runnable runnable : set) {
                        if (runnable != null) {
                            runnable.run();
                        }
                    }
                    this.yp.remove(iHashCode);
                }
            }
        }
    }

    private void x() {
        ic icVarC;
        com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
        long j10 = veVarC.get("save_jump_success_time", 0L);
        if (j10 <= 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        String str = veVarC.get("save_jump_success_ad_tag", "");
        String str2 = veVarC.get("save_dpl_success_materialmeta", "");
        String str3 = veVarC.get("save_download_open_app_success_meta", "");
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str3)) {
                return;
            }
            veVarC.remove("save_download_open_app_success_meta");
            c(str3, jCurrentTimeMillis);
            return;
        }
        veVarC.remove("save_dpl_success_materialmeta");
        try {
            icVarC = com.byazt.omf.c.c(new JSONObject(str2));
        } catch (JSONException unused) {
            icVarC = null;
        }
        if (icVarC != null) {
            c(jCurrentTimeMillis, icVarC);
            c(jCurrentTimeMillis, icVarC, str);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@ForbidWrapParam Activity activity, Bundle bundle) {
        if (this.f11400n != null) {
            this.f11400n.onActivityCreated(activity, bundle);
        }
        Iterator<InterfaceC0252c> it2 = this.f11401t.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
        try {
            com.byazt.iyp.sp.c(activity);
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@ForbidWrapParam final Activity activity) {
        n().post(new Runnable() { // from class: com.byazt.aas.c.5
            @Override // java.lang.Runnable
            public void run() {
                c.this.uj(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@ForbidWrapParam final Activity activity) {
        n().post(new Runnable() { // from class: com.byazt.aas.c.3
            @Override // java.lang.Runnable
            public void run() {
                c.this.ve(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@ForbidWrapParam final Activity activity) {
        n().post(new Runnable() { // from class: com.byazt.aas.c.2
            @Override // java.lang.Runnable
            public void run() {
                c.this.tt(activity);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@ForbidWrapParam final Activity activity) {
        final String name = activity.getClass().getName();
        final Window window = activity.getWindow();
        com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.aas.c.1
            @Override // java.lang.Runnable
            public void run() {
                c.this.c(activity, name, window);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@ForbidWrapParam final Activity activity) {
        final String name = activity.getClass().getName();
        final Window window = activity.getWindow();
        n().post(new Runnable() { // from class: com.byazt.aas.c.4
            @Override // java.lang.Runnable
            public void run() {
                c.this.tt(activity, name, window);
            }
        });
    }

    private void ve(boolean z10) {
        try {
            if (z10) {
                if (this.f11396a != null) {
                    this.f11396a.onAppStart();
                }
                for (tt ttVar : this.sl) {
                    if (ttVar != null) {
                        ttVar.onAppStart();
                    }
                }
                return;
            }
            if (this.f11396a != null) {
                this.f11396a.onAppExit();
            }
            for (tt ttVar2 : this.sl) {
                if (ttVar2 != null) {
                    ttVar2.onAppExit();
                }
            }
        } catch (Exception unused) {
        }
    }

    private void tt(boolean z10) {
        try {
            if (z10) {
                if (this.f11396a != null) {
                    this.f11396a.onAppForeground();
                }
                for (tt ttVar : this.sl) {
                    if (ttVar != null) {
                        ttVar.onAppForeground();
                    }
                }
                return;
            }
            if (this.f11396a != null) {
                this.f11396a.onAppBackground();
            }
            for (tt ttVar2 : this.sl) {
                if (ttVar2 != null) {
                    ttVar2.onAppBackground();
                }
            }
        } catch (Exception unused) {
        }
    }

    public WeakReference<Activity> c() {
        return this.f11404z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@ForbidWrapParam Activity activity, String str, Window window) {
        if (this.f11403x.get()) {
            ve(true);
        }
        if (this.sp.get()) {
            tt(true);
        }
        if (!this.f11402u.contains(activity.toString())) {
            this.f11402u.add(activity.toString());
            this.sp.set(false);
            com.byazt.hef.tt.n();
        }
        if (this.nu != null && this.nu.get() != null && this.nu.get() == activity) {
            x();
        }
        if (this.uj != null) {
            this.uj.c(str, window);
        }
        if (this.f11400n != null) {
            this.f11400n.onActivityStarted(activity);
        }
        for (InterfaceC0252c interfaceC0252c : this.f11401t) {
            if (interfaceC0252c != null) {
                interfaceC0252c.c(str, window);
            }
        }
        pf.n(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(@ForbidWrapParam Activity activity) {
        if (this.f11400n != null) {
            this.f11400n.onActivityPaused(activity);
        }
        Iterator<InterfaceC0252c> it2 = this.f11401t.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
        if (!com.byazt.omf.x.m().d() && activity != null && activity.getComponentName() != null) {
            com.byazt.aas.tt.c().ve(activity.getComponentName().getClassName());
        }
        try {
            com.byazt.iyp.sp.ve(activity);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(@ForbidWrapParam Activity activity) {
        if (activity != null && this.f11398i.add(Integer.valueOf(activity.hashCode()))) {
            this.f11403x.set(false);
        }
        if (this.uj != null) {
            this.uj.c();
        }
        if (this.f11400n != null) {
            this.f11400n.onActivityResumed(activity);
        }
        for (InterfaceC0252c interfaceC0252c : this.f11401t) {
            if (interfaceC0252c != null) {
                interfaceC0252c.c();
            }
        }
        com.byazt.hw.c.c(com.byazt.omf.gt.getContext(), Integer.parseInt("1371"));
        if (!f11395c) {
            tt = System.currentTimeMillis();
            f11395c = true;
        }
        this.f11404z = new WeakReference<>(activity);
        if (!com.byazt.omf.x.m().d()) {
            if (activity != null && activity.getComponentName() != null) {
                com.byazt.aas.tt.c().c(activity.getComponentName().getClassName());
            }
            if (activity != null && activity.getIntent() != null) {
                t.c().c(activity.getIntent());
            }
        }
        try {
            com.byazt.iyp.sp.tt(activity);
        } catch (Throwable unused) {
        }
    }

    public void ve(tt ttVar) {
        this.f11396a = ttVar;
    }

    public void ve() {
        if (this.uj != null) {
            this.uj = null;
        }
    }

    public boolean c(boolean z10) {
        Activity activity;
        Window window;
        WeakReference<Activity> weakReference = this.f11404z;
        return (weakReference == null || (activity = weakReference.get()) == null || (window = activity.getWindow()) == null) ? z10 : window.getDecorView().hasWindowFocus();
    }

    public void uj() {
        com.byazt.aas.tt.c().tt();
    }

    public boolean c(@ForbidWrapParam Activity activity) {
        return activity != null && this.f11398i.contains(Integer.valueOf(activity.hashCode()));
    }

    private void c(String str, long j10) {
        ic icVarC;
        try {
            icVarC = com.byazt.omf.c.c(new JSONObject(str));
        } catch (JSONException unused) {
            icVarC = null;
        }
        if (icVarC != null) {
            c(j10, icVarC);
        }
    }

    private void c(long j10, ic icVar) {
        if (!icVar.hs() || icVar.lz() < 0) {
            return;
        }
        boolean z10 = j10 >= ((long) icVar.lz()) * 1000;
        com.byazt.ocd.tt ttVar = (com.byazt.ocd.tt) com.byazt.omf.rl.c(icVar.rl(), com.byazt.ocd.tt.class);
        if (ttVar != null) {
            ttVar.c(z10 ? 5 : 6, null);
        }
        if (z10) {
            com.byazt.ddx.uj.c(icVar, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(@ForbidWrapParam Activity activity, String str, Window window) {
        if (this.f11402u.contains(activity.toString())) {
            this.f11402u.remove(activity.toString());
            if (this.f11402u.size() == 0) {
                this.sp.set(true);
                com.byazt.hef.tt.uj();
                tt(false);
            }
        }
        this.nu = new WeakReference<>(activity);
        if (this.uj != null) {
            this.uj.tt(str, window);
        }
        if (this.f11400n != null) {
            this.f11400n.onActivityStopped(activity);
        }
        for (InterfaceC0252c interfaceC0252c : this.f11401t) {
            if (interfaceC0252c != null) {
                interfaceC0252c.tt(str, window);
            }
        }
        sp();
        ((com.byazt.dna.nu) com.byazt.ut.uj.getService("kv_store_factory")).store();
    }

    private void c(final long j10, final ic icVar, final String str) {
        if (com.byazt.omf.x.m().d()) {
            return;
        }
        com.byazt.bzd.x.tt(new Runnable() { // from class: com.byazt.aas.c.7
            @Override // java.lang.Runnable
            public void run() {
                long j11 = j10;
                if (j11 >= 86400000 || j11 <= 0) {
                    return;
                }
                com.byazt.ddx.uj.c(j11, str, icVar);
            }
        });
    }

    public void c(InterfaceC0252c interfaceC0252c) {
        this.uj = interfaceC0252c;
    }

    public void c(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f11400n = activityLifecycleCallbacks;
    }

    public void c(com.byazt.sr.c cVar) {
        this.f11397da.add(new WeakReference<>(cVar));
    }

    public void c(tt ttVar) {
        if (this.sl.contains(ttVar)) {
            return;
        }
        this.sl.add(ttVar);
    }

    public boolean c(Activity activity, Runnable runnable) {
        boolean zAdd;
        if (activity == null) {
            return false;
        }
        int iHashCode = activity.hashCode();
        synchronized (this.yp) {
            Set<Runnable> hashSet = this.yp.get(iHashCode);
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this.yp.put(iHashCode, hashSet);
            }
            zAdd = hashSet.add(runnable);
        }
        return zAdd;
    }

    public boolean tt() {
        return a();
    }

    public boolean tt(com.byazt.sr.c cVar) {
        return this.f11397da.remove(new WeakReference(cVar));
    }

    public void tt(InterfaceC0252c interfaceC0252c) {
        if (this.f11401t.contains(interfaceC0252c)) {
            return;
        }
        this.f11401t.add(interfaceC0252c);
    }

    public void tt(tt ttVar) {
        if (ttVar != null) {
            this.sl.remove(ttVar);
        }
    }
}
