package org.greenrobot.eventbus;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes10.dex */
public class c {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static String f95244s = "EventBus";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static volatile c f95245t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final org.greenrobot.eventbus.d f95246u = new org.greenrobot.eventbus.d();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Map<Class<?>, List<Class<?>>> f95247v = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, CopyOnWriteArrayList<o>> f95248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Object, List<Class<?>>> f95249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Class<?>, Object> f95250c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ThreadLocal<d> f95251d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f95252e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k f95253f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final org.greenrobot.eventbus.b f95254g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final org.greenrobot.eventbus.a f95255h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n f95256i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ExecutorService f95257j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f95258k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f95259l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f95260m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f95261n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f95262o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f95263p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f95264q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final f f95265r;

    class a extends ThreadLocal<d> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d initialValue() {
            return new d();
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f95267a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f95267a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f95267a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f95267a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f95267a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f95267a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: renamed from: org.greenrobot.eventbus.c$c, reason: collision with other inner class name */
    interface InterfaceC1225c {
        void a(List<l> list);
    }

    static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<Object> f95268a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f95269b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f95270c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        o f95271d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Object f95272e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f95273f;

        d() {
        }
    }

    public c() {
        this(f95246u);
    }

    private void B(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<o> copyOnWriteArrayList = this.f95248a.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i10 = 0;
            while (i10 < size) {
                o oVar = copyOnWriteArrayList.get(i10);
                if (oVar.f95337a == obj) {
                    oVar.f95339c = false;
                    copyOnWriteArrayList.remove(i10);
                    i10--;
                    size--;
                }
                i10++;
            }
        }
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    public static org.greenrobot.eventbus.d b() {
        return new org.greenrobot.eventbus.d();
    }

    private void d(o oVar, Object obj) {
        if (obj != null) {
            u(oVar, obj, n());
        }
    }

    public static void e() {
        n.a();
        f95247v.clear();
    }

    public static c f() {
        c cVar = f95245t;
        if (cVar == null) {
            synchronized (c.class) {
                cVar = f95245t;
                if (cVar == null) {
                    cVar = new c();
                    f95245t = cVar;
                }
            }
        }
        return cVar;
    }

    private void j(o oVar, Object obj, Throwable th) {
        if (!(obj instanceof l)) {
            if (this.f95258k) {
                throw new EventBusException("Invoking subscriber failed", th);
            }
            if (this.f95259l) {
                this.f95265r.b(Level.SEVERE, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + oVar.f95337a.getClass(), th);
            }
            if (this.f95261n) {
                q(new l(this, th, obj, oVar.f95337a));
                return;
            }
            return;
        }
        if (this.f95259l) {
            f fVar = this.f95265r;
            Level level = Level.SEVERE;
            fVar.b(level, "SubscriberExceptionEvent subscriber " + oVar.f95337a.getClass() + " threw an exception", th);
            l lVar = (l) obj;
            this.f95265r.b(level, "Initial event " + lVar.f95303c + " caused exception in " + lVar.f95304d, lVar.f95302b);
        }
    }

    private boolean n() {
        g gVar = this.f95252e;
        return gVar == null || gVar.a();
    }

    private static List<Class<?>> p(Class<?> cls) {
        List<Class<?>> arrayList;
        Map<Class<?>, List<Class<?>>> map = f95247v;
        synchronized (map) {
            arrayList = map.get(cls);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                    arrayList.add(superclass);
                    a(arrayList, superclass.getInterfaces());
                }
                f95247v.put(cls, arrayList);
            }
        }
        return arrayList;
    }

    private void r(Object obj, d dVar) throws Error {
        boolean zS;
        Class<?> cls = obj.getClass();
        if (this.f95263p) {
            List<Class<?>> listP = p(cls);
            int size = listP.size();
            zS = false;
            for (int i10 = 0; i10 < size; i10++) {
                zS |= s(obj, dVar, listP.get(i10));
            }
        } else {
            zS = s(obj, dVar, cls);
        }
        if (zS) {
            return;
        }
        if (this.f95260m) {
            this.f95265r.a(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.f95262o || cls == h.class || cls == l.class) {
            return;
        }
        q(new h(this, obj));
    }

    private boolean s(Object obj, d dVar, Class<?> cls) {
        CopyOnWriteArrayList<o> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f95248a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (o oVar : copyOnWriteArrayList) {
            dVar.f95272e = obj;
            dVar.f95271d = oVar;
            try {
                u(oVar, obj, dVar.f95270c);
                boolean z10 = dVar.f95273f;
                dVar.f95272e = null;
                dVar.f95271d = null;
                dVar.f95273f = false;
                if (z10) {
                    return true;
                }
            } catch (Throwable th) {
                dVar.f95272e = null;
                dVar.f95271d = null;
                dVar.f95273f = false;
                throw th;
            }
        }
        return true;
    }

    private void u(o oVar, Object obj, boolean z10) {
        int i10 = b.f95267a[oVar.f95338b.f95306b.ordinal()];
        if (i10 == 1) {
            m(oVar, obj);
            return;
        }
        if (i10 == 2) {
            if (z10) {
                m(oVar, obj);
                return;
            } else {
                this.f95253f.a(oVar, obj);
                return;
            }
        }
        if (i10 == 3) {
            k kVar = this.f95253f;
            if (kVar != null) {
                kVar.a(oVar, obj);
                return;
            } else {
                m(oVar, obj);
                return;
            }
        }
        if (i10 == 4) {
            if (z10) {
                this.f95254g.a(oVar, obj);
                return;
            } else {
                m(oVar, obj);
                return;
            }
        }
        if (i10 == 5) {
            this.f95255h.a(oVar, obj);
            return;
        }
        throw new IllegalStateException("Unknown thread mode: " + oVar.f95338b.f95306b);
    }

    private void z(Object obj, m mVar) {
        Class<?> cls = mVar.f95307c;
        o oVar = new o(obj, mVar);
        CopyOnWriteArrayList<o> copyOnWriteArrayList = this.f95248a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f95248a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(oVar)) {
            throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i10 = 0; i10 <= size; i10++) {
            if (i10 == size || mVar.f95308d > copyOnWriteArrayList.get(i10).f95338b.f95308d) {
                copyOnWriteArrayList.add(i10, oVar);
                break;
            }
        }
        List<Class<?>> arrayList = this.f95249b.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f95249b.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (mVar.f95309e) {
            if (!this.f95263p) {
                d(oVar, this.f95250c.get(cls));
                return;
            }
            for (Map.Entry<Class<?>, Object> entry : this.f95250c.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey())) {
                    d(oVar, entry.getValue());
                }
            }
        }
    }

    public synchronized void A(Object obj) {
        List<Class<?>> list = this.f95249b.get(obj);
        if (list != null) {
            Iterator<Class<?>> it2 = list.iterator();
            while (it2.hasNext()) {
                B(obj, it2.next());
            }
            this.f95249b.remove(obj);
        } else {
            this.f95265r.a(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public void c(Object obj) {
        d dVar = this.f95251d.get();
        if (!dVar.f95269b) {
            throw new EventBusException("This method may only be called from inside event handling methods on the posting thread");
        }
        if (obj == null) {
            throw new EventBusException("Event may not be null");
        }
        if (dVar.f95272e != obj) {
            throw new EventBusException("Only the currently handled event may be aborted");
        }
        if (dVar.f95271d.f95338b.f95306b != ThreadMode.POSTING) {
            throw new EventBusException(" event handlers may only abort the incoming event");
        }
        dVar.f95273f = true;
    }

    ExecutorService g() {
        return this.f95257j;
    }

    public f h() {
        return this.f95265r;
    }

    public <T> T i(Class<T> cls) {
        T tCast;
        synchronized (this.f95250c) {
            tCast = cls.cast(this.f95250c.get(cls));
        }
        return tCast;
    }

    public boolean k(Class<?> cls) {
        CopyOnWriteArrayList<o> copyOnWriteArrayList;
        List<Class<?>> listP = p(cls);
        if (listP != null) {
            int size = listP.size();
            for (int i10 = 0; i10 < size; i10++) {
                Class<?> cls2 = listP.get(i10);
                synchronized (this) {
                    copyOnWriteArrayList = this.f95248a.get(cls2);
                }
                if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    void l(i iVar) {
        Object obj = iVar.f95296a;
        o oVar = iVar.f95297b;
        i.b(iVar);
        if (oVar.f95339c) {
            m(oVar, obj);
        }
    }

    void m(o oVar, Object obj) {
        try {
            oVar.f95338b.f95305a.invoke(oVar.f95337a, obj);
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (InvocationTargetException e11) {
            j(oVar, obj, e11.getCause());
        }
    }

    public synchronized boolean o(Object obj) {
        return this.f95249b.containsKey(obj);
    }

    public void q(Object obj) {
        d dVar = this.f95251d.get();
        List<Object> list = dVar.f95268a;
        list.add(obj);
        if (dVar.f95269b) {
            return;
        }
        dVar.f95270c = n();
        dVar.f95269b = true;
        if (dVar.f95273f) {
            throw new EventBusException("Internal error. Abort state was not reset");
        }
        while (!list.isEmpty()) {
            try {
                r(list.remove(0), dVar);
            } catch (Throwable th) {
                dVar.f95269b = false;
                dVar.f95270c = false;
                throw th;
            }
        }
        dVar.f95269b = false;
        dVar.f95270c = false;
    }

    public void t(Object obj) {
        synchronized (this.f95250c) {
            this.f95250c.put(obj.getClass(), obj);
        }
        q(obj);
    }

    public String toString() {
        return "EventBus[indexCount=" + this.f95264q + ", eventInheritance=" + this.f95263p + "]";
    }

    public void v(Object obj) {
        if (cd.b.c() && !cd.b.a()) {
            throw new RuntimeException("It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies.");
        }
        List<m> listB = this.f95256i.b(obj.getClass());
        synchronized (this) {
            Iterator<m> it2 = listB.iterator();
            while (it2.hasNext()) {
                z(obj, it2.next());
            }
        }
    }

    public void w() {
        synchronized (this.f95250c) {
            this.f95250c.clear();
        }
    }

    public <T> T x(Class<T> cls) {
        T tCast;
        synchronized (this.f95250c) {
            tCast = cls.cast(this.f95250c.remove(cls));
        }
        return tCast;
    }

    public boolean y(Object obj) {
        synchronized (this.f95250c) {
            Class<?> cls = obj.getClass();
            if (!obj.equals(this.f95250c.get(cls))) {
                return false;
            }
            this.f95250c.remove(cls);
            return true;
        }
    }

    c(org.greenrobot.eventbus.d dVar) {
        this.f95251d = new a();
        this.f95265r = dVar.e();
        this.f95248a = new HashMap();
        this.f95249b = new HashMap();
        this.f95250c = new ConcurrentHashMap();
        g gVarF = dVar.f();
        this.f95252e = gVarF;
        this.f95253f = gVarF != null ? gVarF.b(this) : null;
        this.f95254g = new org.greenrobot.eventbus.b(this);
        this.f95255h = new org.greenrobot.eventbus.a(this);
        List<org.greenrobot.eventbus.meta.d> list = dVar.f95285k;
        this.f95264q = list != null ? list.size() : 0;
        this.f95256i = new n(dVar.f95285k, dVar.f95282h, dVar.f95281g);
        this.f95259l = dVar.f95275a;
        this.f95260m = dVar.f95276b;
        this.f95261n = dVar.f95277c;
        this.f95262o = dVar.f95278d;
        this.f95258k = dVar.f95279e;
        this.f95263p = dVar.f95280f;
        this.f95257j = dVar.f95283i;
    }
}
