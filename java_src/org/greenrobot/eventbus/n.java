package org.greenrobot.eventbus;

import com.join.mgps.Util.o0;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes10.dex */
class n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f95320d = 64;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f95321e = 4096;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f95322f = 5192;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f95324h = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<org.greenrobot.eventbus.meta.d> f95326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f95327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f95328c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Map<Class<?>, List<m>> f95323g = new ConcurrentHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final a[] f95325i = new a[4];

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<m> f95329a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map<Class, Object> f95330b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Map<String, Class> f95331c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final StringBuilder f95332d = new StringBuilder(128);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Class<?> f95333e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Class<?> f95334f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f95335g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        org.greenrobot.eventbus.meta.c f95336h;

        a() {
        }

        private boolean b(Method method, Class<?> cls) {
            this.f95332d.setLength(0);
            this.f95332d.append(method.getName());
            StringBuilder sb2 = this.f95332d;
            sb2.append(Typography.greater);
            sb2.append(cls.getName());
            String string = this.f95332d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class clsPut = this.f95331c.put(string, declaringClass);
            if (clsPut == null || clsPut.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f95331c.put(string, clsPut);
            return false;
        }

        boolean a(Method method, Class<?> cls) {
            Object objPut = this.f95330b.put(cls, method);
            if (objPut == null) {
                return true;
            }
            if (objPut instanceof Method) {
                if (!b((Method) objPut, cls)) {
                    throw new IllegalStateException();
                }
                this.f95330b.put(cls, this);
            }
            return b(method, cls);
        }

        void c(Class<?> cls) {
            this.f95334f = cls;
            this.f95333e = cls;
            this.f95335g = false;
            this.f95336h = null;
        }

        void d() {
            if (this.f95335g) {
                this.f95334f = null;
                return;
            }
            Class<? super Object> superclass = this.f95334f.getSuperclass();
            this.f95334f = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f95334f = null;
            }
        }

        void e() {
            this.f95329a.clear();
            this.f95330b.clear();
            this.f95331c.clear();
            this.f95332d.setLength(0);
            this.f95333e = null;
            this.f95334f = null;
            this.f95335g = false;
            this.f95336h = null;
        }
    }

    n(List<org.greenrobot.eventbus.meta.d> list, boolean z10, boolean z11) {
        this.f95326a = list;
        this.f95327b = z10;
        this.f95328c = z11;
    }

    static void a() {
        f95323g.clear();
    }

    private List<m> c(Class<?> cls) {
        a aVarH = h();
        aVarH.c(cls);
        while (aVarH.f95334f != null) {
            org.greenrobot.eventbus.meta.c cVarG = g(aVarH);
            aVarH.f95336h = cVarG;
            if (cVarG != null) {
                for (m mVar : cVarG.a()) {
                    if (aVarH.a(mVar.f95305a, mVar.f95307c)) {
                        aVarH.f95329a.add(mVar);
                    }
                }
            } else {
                e(aVarH);
            }
            aVarH.d();
        }
        return f(aVarH);
    }

    private List<m> d(Class<?> cls) {
        a aVarH = h();
        aVarH.c(cls);
        while (aVarH.f95334f != null) {
            e(aVarH);
            aVarH.d();
        }
        return f(aVarH);
    }

    private void e(a aVar) {
        Method[] methods;
        try {
            try {
                methods = aVar.f95334f.getDeclaredMethods();
            } catch (Throwable unused) {
                methods = aVar.f95334f.getMethods();
                aVar.f95335g = true;
            }
            for (Method method : methods) {
                int modifiers = method.getModifiers();
                if ((modifiers & 1) != 0 && (modifiers & f95322f) == 0) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == 1) {
                        Subscribe subscribe = (Subscribe) method.getAnnotation(Subscribe.class);
                        if (subscribe != null) {
                            Class<?> cls = parameterTypes[0];
                            if (aVar.a(method, cls)) {
                                aVar.f95329a.add(new m(method, cls, subscribe.threadMode(), subscribe.priority(), subscribe.sticky()));
                            }
                        }
                    } else if (this.f95327b && method.isAnnotationPresent(Subscribe.class)) {
                        throw new EventBusException("@Subscribe method " + (method.getDeclaringClass().getName() + o0.f49827a + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                    }
                } else if (this.f95327b && method.isAnnotationPresent(Subscribe.class)) {
                    throw new EventBusException((method.getDeclaringClass().getName() + o0.f49827a + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
                }
            }
        } catch (LinkageError e10) {
            String str = "Could not inspect methods of " + aVar.f95334f.getName();
            throw new EventBusException(this.f95328c ? str + ". Please consider using EventBus annotation processor to avoid reflection." : str + ". Please make this class visible to EventBus annotation processor to avoid reflection.", e10);
        }
    }

    private List<m> f(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f95329a);
        aVar.e();
        synchronized (f95325i) {
            for (int i10 = 0; i10 < 4; i10++) {
                a[] aVarArr = f95325i;
                if (aVarArr[i10] == null) {
                    aVarArr[i10] = aVar;
                    break;
                }
            }
        }
        return arrayList;
    }

    private org.greenrobot.eventbus.meta.c g(a aVar) {
        org.greenrobot.eventbus.meta.c cVar = aVar.f95336h;
        if (cVar != null && cVar.d() != null) {
            org.greenrobot.eventbus.meta.c cVarD = aVar.f95336h.d();
            if (aVar.f95334f == cVarD.b()) {
                return cVarD;
            }
        }
        List<org.greenrobot.eventbus.meta.d> list = this.f95326a;
        if (list == null) {
            return null;
        }
        Iterator<org.greenrobot.eventbus.meta.d> it2 = list.iterator();
        while (it2.hasNext()) {
            org.greenrobot.eventbus.meta.c cVarA = it2.next().a(aVar.f95334f);
            if (cVarA != null) {
                return cVarA;
            }
        }
        return null;
    }

    private a h() {
        synchronized (f95325i) {
            for (int i10 = 0; i10 < 4; i10++) {
                a[] aVarArr = f95325i;
                a aVar = aVarArr[i10];
                if (aVar != null) {
                    aVarArr[i10] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }

    List<m> b(Class<?> cls) {
        Map<Class<?>, List<m>> map = f95323g;
        List<m> list = map.get(cls);
        if (list != null) {
            return list;
        }
        List<m> listD = this.f95328c ? d(cls) : c(cls);
        if (!listD.isEmpty()) {
            map.put(cls, listD);
            return listD;
        }
        throw new EventBusException("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
    }
}
