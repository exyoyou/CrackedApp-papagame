package com.byazt.p000if;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.byazt.bog.a;
import com.byazt.uk.n;
import com.byazt.uk.x;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 463, 20})
public class c extends n.c {
    public static volatile c tt;
    public final HashMap<ComponentName, IBinder> ve = new HashMap<>();
    public final HashMap<ComponentName, tt> uj = new HashMap<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C0343c<Intent> f15312n = new C0343c<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap<ComponentName, com.byazt.fgi.c> f15309a = new HashMap<>();
    public final HashSet<ComponentName> sp = new HashSet<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final HashSet<ComponentName> f15313x = new HashSet<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<Runnable> f15311i = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f15310c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.byazt.if.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 463, 44})
    class C0343c<T> extends HashMap<x, T> {
        public C0343c() {
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            if (super.containsKey(obj)) {
                return true;
            }
            if (!(obj instanceof x)) {
                return false;
            }
            Iterator<x> it2 = keySet().iterator();
            while (it2.hasNext()) {
                try {
                    if (it2.next().c() == ((x) obj).c()) {
                        return true;
                    }
                } catch (RemoteException e10) {
                    a.c(e10);
                }
            }
            return false;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        @Nullable
        public T remove(@Nullable Object obj) {
            x next;
            T t10 = (T) super.remove(obj);
            if (t10 != null) {
                return t10;
            }
            Iterator<x> it2 = keySet().iterator();
            while (it2.hasNext()) {
                next = it2.next();
                try {
                    if (next.c() == ((x) obj).c()) {
                        return (T) super.remove(next);
                    }
                } catch (RemoteException e10) {
                    a.c(e10);
                }
            }
            next = null;
            return (T) super.remove(next);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 463, 175})
    class tt extends HashSet<x> {
        public tt() {
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@Nullable Object obj) {
            if (super.contains(obj)) {
                return true;
            }
            if (!(obj instanceof x)) {
                return false;
            }
            Iterator<x> it2 = iterator();
            while (it2.hasNext()) {
                try {
                    if (it2.next().c() == ((x) obj).c()) {
                        return true;
                    }
                } catch (RemoteException e10) {
                    a.c(e10);
                }
            }
            return false;
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@Nullable Object obj) {
            x xVar;
            if (super.remove(obj)) {
                return true;
            }
            Iterator it2 = iterator();
            while (it2.hasNext()) {
                xVar = (x) it2.next();
                try {
                    if (xVar.c() == ((x) obj).c()) {
                        return super.remove(xVar);
                    }
                } catch (RemoteException e10) {
                    a.c(e10);
                }
            }
            xVar = null;
            return super.remove(xVar);
        }
    }

    private c() {
    }

    private com.byazt.fgi.c uj(Intent intent, String str) {
        boolean zLoadPlugin;
        ComponentName component = intent.getComponent();
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        try {
            zLoadPlugin = Zeus.loadPlugin(str);
            try {
                com.byazt.fgi.c cVar = (com.byazt.fgi.c) plugin.mClassLoader.loadClass(component.getClassName()).newInstance();
                cVar.attach(plugin);
                return cVar;
            } catch (Exception e10) {
                e = e10;
                ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "newServiceInstance failed! loadPlugin = ".concat(String.valueOf(zLoadPlugin)), e);
                return null;
            }
        } catch (Exception e11) {
            e = e11;
            zLoadPlugin = false;
        }
    }

    @Override // com.byazt.uk.n.c, android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    @Override // com.byazt.uk.n
    public boolean bindService(final Intent intent, final x xVar, final int i10, final String str) throws RemoteException {
        if (!Zeus.hasInit()) {
            this.f15311i.add(new Runnable() { // from class: com.byazt.if.c.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        c.this.tt(intent, xVar, i10, str);
                    } catch (RemoteException e10) {
                        ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "pending bindService failed", e10);
                    }
                }
            });
            return true;
        }
        Plugin plugin = Zeus.getPlugin(str);
        if (plugin.isLoaded()) {
            return c(intent, xVar, i10, str);
        }
        if (Zeus.loadPlugin(str)) {
            c(intent, xVar, i10, str);
            return true;
        }
        plugin.addBindServicePluginPendingTask(new Plugin.c() { // from class: com.byazt.if.c.6
            @Override // com.bytedance.pangle.plugin.Plugin.c
            public void c(int i11) throws RemoteException {
                c.this.c(intent, xVar, i10, str);
            }
        });
        return true;
    }

    @Override // com.byazt.uk.n
    public ComponentName startService(final Intent intent, final String str) {
        if (Zeus.hasInit()) {
            Plugin plugin = Zeus.getPlugin(str);
            if (plugin.isLoaded()) {
                return c(intent, str);
            }
            plugin.addStartServicePluginPendingTask(new Plugin.c() { // from class: com.byazt.if.c.2
                @Override // com.bytedance.pangle.plugin.Plugin.c
                public void c(int i10) throws RemoteException {
                    c.this.c(intent, str);
                }
            });
        } else {
            this.f15311i.add(new Runnable() { // from class: com.byazt.if.c.3
                @Override // java.lang.Runnable
                public void run() {
                    c.this.tt(intent, str);
                }
            });
        }
        return intent.getComponent();
    }

    @Override // com.byazt.uk.n
    public boolean stopService(final Intent intent, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            tt().c(intent.getComponent());
            return true;
        }
        this.f15310c.post(new Runnable() { // from class: com.byazt.if.c.4
            @Override // java.lang.Runnable
            public void run() {
                c.tt().c(intent.getComponent());
            }
        });
        return true;
    }

    @Override // com.byazt.uk.n
    public void unbindService(final x xVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            c(xVar);
        } else {
            this.f15310c.post(new Runnable() { // from class: com.byazt.if.c.8
                @Override // java.lang.Runnable
                public void run() {
                    c.this.c(xVar);
                }
            });
        }
    }

    public void ve() {
        for (Runnable runnable : this.f15311i) {
            if (runnable != null) {
                this.f15310c.post(runnable);
            }
        }
        this.f15311i.clear();
    }

    public static c tt() {
        if (tt == null) {
            synchronized (c.class) {
                if (tt == null) {
                    tt = new c();
                }
            }
        }
        return tt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ComponentName c(final Intent intent, final String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return tt(intent, str);
        }
        this.f15310c.post(new Runnable() { // from class: com.byazt.if.c.1
            @Override // java.lang.Runnable
            public void run() {
                c.this.tt(intent, str);
            }
        });
        return intent.getComponent();
    }

    private com.byazt.fgi.c ve(Intent intent, String str) {
        com.byazt.fgi.c cVarUj = uj(intent, str);
        if (cVarUj != null) {
            cVarUj.onCreate();
        }
        return cVarUj;
    }

    private void ve(ComponentName componentName) {
        com.byazt.fgi.c cVarRemove = this.f15309a.remove(componentName);
        this.f15313x.remove(componentName);
        this.ve.remove(componentName);
        this.sp.remove(componentName);
        if (cVarRemove != null) {
            cVarRemove.onDestroy();
        }
    }

    public synchronized boolean c(ComponentName componentName) {
        if (!this.f15309a.containsKey(componentName)) {
            return false;
        }
        this.f15313x.add(componentName);
        return tt(componentName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized ComponentName tt(Intent intent, String str) {
        ComponentName component = intent.getComponent();
        if (!this.f15309a.containsKey(component)) {
            com.byazt.fgi.c cVarVe = ve(intent, str);
            if (cVarVe == null) {
                return component;
            }
            this.f15309a.put(component, cVarVe);
            this.sp.add(component);
        }
        com.byazt.fgi.c cVar = this.f15309a.get(component);
        if (cVar != null) {
            cVar.onStartCommand(intent, 0, 0);
        }
        return component;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(final Intent intent, final x xVar, final int i10, final String str) throws RemoteException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return tt(intent, xVar, i10, str);
        }
        this.f15310c.post(new Runnable() { // from class: com.byazt.if.c.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.tt(intent, xVar, i10, str);
                } catch (RemoteException e10) {
                    ZeusLogger.errReport(ZeusLogger.TAG_SERVICE, "bindService failed", e10);
                }
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c(x xVar) {
        for (ComponentName componentName : this.uj.keySet()) {
            tt ttVar = this.uj.get(componentName);
            if (ttVar.contains(xVar)) {
                ttVar.remove(xVar);
                Intent intentRemove = this.f15312n.remove(xVar);
                if (ttVar.size() == 0) {
                    this.uj.remove(componentName);
                    com.byazt.fgi.c cVar = this.f15309a.get(componentName);
                    if (cVar != null) {
                        cVar.onUnbind(intentRemove);
                    }
                }
                tt(componentName);
                return;
            }
        }
    }

    private boolean tt(ComponentName componentName) {
        if (!this.sp.contains(componentName)) {
            if (this.uj.get(componentName) != null) {
                return false;
            }
            ve(componentName);
            return true;
        }
        if (!this.f15313x.contains(componentName) || this.uj.containsKey(componentName)) {
            return false;
        }
        ve(componentName);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean tt(Intent intent, x xVar, int i10, String str) throws RemoteException {
        ComponentName component = intent.getComponent();
        if (!this.f15309a.containsKey(component)) {
            com.byazt.fgi.c cVarVe = ve(intent, str);
            if (cVarVe == null) {
                return false;
            }
            this.f15309a.put(component, cVarVe);
        }
        com.byazt.fgi.c cVar = this.f15309a.get(component);
        if (!this.ve.containsKey(component)) {
            this.ve.put(component, cVar.onBind(intent));
        }
        IBinder iBinder = this.ve.get(component);
        if (iBinder != null) {
            if (this.uj.containsKey(component)) {
                if (!this.uj.get(component).contains(xVar)) {
                    this.uj.get(component).add(xVar);
                    this.f15312n.put(xVar, intent);
                    xVar.c(component, iBinder);
                }
            } else {
                tt ttVar = new tt();
                ttVar.add(xVar);
                this.uj.put(component, ttVar);
                this.f15312n.put(xVar, intent);
                xVar.c(component, iBinder);
            }
        }
        return true;
    }
}
