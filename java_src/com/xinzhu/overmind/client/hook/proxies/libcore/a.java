package com.xinzhu.overmind.client.hook.proxies.libcore;

import com.xinzhu.overmind.Overmind;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f89377c = "OsStub";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f89378b = ea.a.b();

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.libcore.a$a, reason: collision with other inner class name */
    static class C1111a extends com.xinzhu.overmind.client.hook.e {
        C1111a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "chown";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                a.e(objArr, 1);
                return method.invoke(obj, objArr);
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class b extends com.xinzhu.overmind.client.hook.e {
        b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "fchown";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                a.e(objArr, 1);
                return method.invoke(obj, objArr);
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class c extends com.xinzhu.overmind.client.hook.e {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "fstat";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                Object objInvoke = method.invoke(obj, objArr);
                Field declaredField = objInvoke.getClass().getDeclaredField("st_uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(objInvoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(objInvoke, Integer.valueOf(com.xinzhu.overmind.client.f.getVUid()));
                }
                return objInvoke;
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class d extends com.xinzhu.overmind.client.hook.e {
        d() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "getpwnam";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                Object objInvoke = method.invoke(obj, objArr);
                Field declaredField = objInvoke.getClass().getDeclaredField("pw_uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(objInvoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(objInvoke, Integer.valueOf(com.xinzhu.overmind.client.f.getVUid()));
                }
                return objInvoke;
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class e extends com.xinzhu.overmind.client.hook.e {
        e() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getpwuid";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                a.e(objArr, 0);
                return method.invoke(obj, objArr);
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class f extends com.xinzhu.overmind.client.hook.e {
        f() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "getsockoptUcred";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                Object objInvoke = method.invoke(obj, objArr);
                Field declaredField = objInvoke.getClass().getDeclaredField("uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(objInvoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(objInvoke, Integer.valueOf(com.xinzhu.overmind.client.f.getVUid()));
                }
                return objInvoke;
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class g extends com.xinzhu.overmind.client.hook.e {
        g() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getuid";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                return com.xinzhu.overmind.client.f.getClientConfig() == null ? Integer.valueOf(((Integer) method.invoke(obj, objArr)).intValue()) : Integer.valueOf(com.xinzhu.overmind.client.f.getVUid());
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class h extends com.xinzhu.overmind.client.hook.e {
        h() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "lchown";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                a.e(objArr, 1);
                return method.invoke(obj, objArr);
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class i extends com.xinzhu.overmind.client.hook.e {
        i() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "lstat";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                Object objInvoke = method.invoke(obj, objArr);
                Field declaredField = objInvoke.getClass().getDeclaredField("st_uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(objInvoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(objInvoke, Integer.valueOf(com.xinzhu.overmind.client.f.getVUid()));
                }
                return objInvoke;
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class j extends com.xinzhu.overmind.client.hook.e {
        j() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setuid";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                a.e(objArr, 0);
                return method.invoke(obj, objArr);
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class k extends com.xinzhu.overmind.client.hook.e {
        k() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "stat";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                Object objInvoke = method.invoke(obj, objArr);
                Field declaredField = objInvoke.getClass().getDeclaredField("st_uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(objInvoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(objInvoke, Integer.valueOf(com.xinzhu.overmind.client.f.getVUid()));
                }
                return objInvoke;
            } catch (InvocationTargetException e10) {
                if (e10.getCause() == null) {
                    return null;
                }
                throw e10.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Object[] objArr, int i10) {
        if (objArr == null) {
            return;
        }
        Object obj = objArr[i10];
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() == com.xinzhu.overmind.client.f.getVUid() || ((Integer) objArr[i10]).intValue() == com.xinzhu.overmind.client.f.getBaseVUid()) {
                objArr[i10] = Integer.valueOf(Overmind.getHostUid());
            }
        }
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return ea.a.b() != getProxyInvocation();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return this.f89378b;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        ea.a.c(obj2);
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        addMethodHook(new k());
        addMethodHook(new c());
        addMethodHook(new i());
        addMethodHook(new d());
        addMethodHook(new f());
        addMethodHook(new g());
        addMethodHook(new C1111a());
        addMethodHook(new b());
        addMethodHook(new h());
        addMethodHook(new e());
        addMethodHook(new j());
    }
}
