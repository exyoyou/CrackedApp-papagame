package com.aggmoread.sdk.z.c.a.a.d.a.d.v;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.aggmoread.sdk.z.c.a.a.d.a.d.m;
import com.aggmoread.sdk.z.c.a.a.d.a.d.o;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.h;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.j;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.aggmoread.sdk.z.c.a.a.e.v.g;
import com.kuaishou.weapon.p0.t;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.util.AdError;
import dalvik.system.DexClassLoader;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f4771a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static AtomicBoolean f4772b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static AtomicBoolean f4773c = new AtomicBoolean();

    static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ o f4774a;

        a(o oVar) {
            this.f4774a = oVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            try {
                if ("onStartSuccess".equals(method.getName())) {
                    e.b("gdt_ad", "init success " + Thread.currentThread().getName());
                    o oVar = this.f4774a;
                    if (oVar == null) {
                        return null;
                    }
                    oVar.onSuccess();
                    return null;
                }
                if (!"onStartFailed".equals(method.getName())) {
                    return null;
                }
                e.b("gdt_ad", "init fail " + objArr[0]);
                o oVar2 = this.f4774a;
                if (oVar2 == null) {
                    return null;
                }
                Object obj2 = objArr[0];
                oVar2.a(obj2 instanceof Exception ? (Exception) obj2 : new Exception("onStartFailed"));
                return null;
            } catch (Exception e10) {
                e.b("gdt_ad", "init invoke err " + e10.getLocalizedMessage());
                o oVar3 = this.f4774a;
                if (oVar3 == null) {
                    return null;
                }
                oVar3.onSuccess();
                return null;
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.b$b, reason: collision with other inner class name */
    static class C0163b implements Handler.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Handler.Callback f4775a;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.b$b$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.b(C0163b.this.f4775a);
                e.b("XXXXXX", "hgp 2 ");
            }
        }

        C0163b(Handler.Callback callback) {
            this.f4775a = callback;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            q.a(new a());
            return false;
        }
    }

    private b() {
    }

    public static int a(Object obj) {
        return d.a(obj);
    }

    public static DexClassLoader b() {
        Object objA;
        try {
            Object gDTAdManger = GDTAdSdk.getGDTAdManger();
            if (gDTAdManger == null) {
                gDTAdManger = Class.forName("com.qq.e.comm.managers.a").getMethod(t.f74887l, new Class[0]).invoke(null, new Object[0]);
            }
            e.a("objA= " + gDTAdManger);
            try {
                objA = j.c(gDTAdManger, PM.class).invoke(gDTAdManger, gDTAdManger);
            } catch (Exception unused) {
                objA = null;
            }
            if (objA == null) {
                objA = j.a(gDTAdManger, PM.class);
            }
            e.a("objPM= " + objA);
            Object objA2 = j.a(objA, DexClassLoader.class);
            e.a("dexClassLoaderF = " + objA2);
            return (DexClassLoader) objA2;
        } catch (Exception e10) {
            e10.printStackTrace();
            e.a("err  = " + e10.getMessage());
            return null;
        }
    }

    public static synchronized b c() {
        if (f4771a == null) {
            synchronized (b.class) {
                if (f4771a == null) {
                    f4771a = new b();
                }
            }
        }
        return f4771a;
    }

    public static String d() {
        return p.d();
    }

    public static com.aggmoread.sdk.z.c.a.a.d.b.j a(AdError adError) {
        com.aggmoread.sdk.z.c.a.a.d.b.j jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(-1000, "广告无填充");
        if (adError != null) {
            return adError.getErrorCode() == 107030 ? new com.aggmoread.sdk.z.c.a.a.d.b.j(1001008000, "广告无填充") : new com.aggmoread.sdk.z.c.a.a.d.b.j(adError.getErrorCode(), adError.getErrorMsg());
        }
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Handler.Callback callback) {
        if (callback != null) {
            callback.handleMessage(Message.obtain());
        }
    }

    public static String a() {
        try {
            Object gDTAdManger = GDTAdSdk.getGDTAdManger();
            if (gDTAdManger == null) {
                gDTAdManger = Class.forName("com.qq.e.comm.managers.a").getMethod(t.f74887l, new Class[0]).invoke(null, new Object[0]);
            }
            e.a("objA= " + gDTAdManger);
            Object objA = j.a(gDTAdManger, String.class);
            e.a("objPid= " + objA);
            return (String) objA;
        } catch (Exception e10) {
            e10.printStackTrace();
            e.a("err  = " + e10.getMessage());
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005d  */
    /* JADX WARN: Code duplicated, block: B:9:0x0045  */
    public String a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
        boolean z10;
        Map<Object, Object> mapA = n.a(eVar);
        if (mapA == null) {
            return null;
        }
        Object obj = mapA.get("txt");
        Object obj2 = mapA.get("desc");
        e.a("t: " + obj + "\t d: " + obj2);
        StringBuilder sb2 = new StringBuilder();
        boolean z11 = true;
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                z10 = false;
            } else {
                sb2.append(str);
                z10 = true;
            }
        } else {
            z10 = false;
        }
        if (obj2 instanceof String) {
            String str2 = (String) obj2;
            if (TextUtils.isEmpty(str2)) {
                z11 = z10;
            } else {
                if (z10) {
                    sb2.append("#");
                }
                sb2.append(str2);
            }
        } else {
            z11 = z10;
        }
        if (z11) {
            return sb2.toString();
        }
        return null;
    }

    public String a(String str, String str2) {
        a(k.f5147q, str2);
        return GDTAdSdk.getGDTAdManger().getSDKInfo(str);
    }

    public String a(Map<String, Object> map, String str) {
        a(k.f5147q, str);
        try {
            try {
                Method declaredMethod = GDTAdSdk.getGDTAdManger().getClass().getDeclaredMethod("getBuyerId", Map.class);
                declaredMethod.setAccessible(true);
                return (String) declaredMethod.invoke(GDTAdSdk.getGDTAdManger(), map);
            } catch (Exception unused) {
                Method declaredMethod2 = GDTAdSdk.getGDTAdManger().getClass().getDeclaredMethod("getBuyerId", new Class[0]);
                declaredMethod2.setAccessible(true);
                return (String) declaredMethod2.invoke(GDTAdSdk.getGDTAdManger(), new Object[0]);
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static void a(Context context, String str) {
        a(context, str, (o) null);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0169  */
    public static void a(Context context, String str, o oVar) {
        if (context == null || TextUtils.isEmpty(str)) {
            e.b("gdt_ad", "Context或APP_ID为空，初始化失败!");
            if (oVar != null) {
                oVar.a(new Exception("Context或APP_ID为空，初始化失败!"));
                return;
            }
            return;
        }
        if (f4773c.compareAndSet(false, true)) {
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.p.f4546a != -1) {
                e.b("gdt_ad", "set global agreePrivacy");
                d.a(com.aggmoread.sdk.z.c.a.a.d.a.d.p.f4546a == 1);
            }
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.p.f4547b != -1) {
                e.b("gdt_ad", "set global shakable");
                d.a(String.valueOf(com.aggmoread.sdk.z.c.a.a.d.a.d.p.f4547b));
            }
            h.b().c();
        }
        if (p.a("4.380")) {
            if (f4772b.compareAndSet(false, true)) {
                try {
                    n.b();
                    if (com.aggmoread.sdk.z.c.a.a.e.o.a().b() != null) {
                        boolean zA = com.aggmoread.sdk.z.c.a.a.e.o.a().b().a(100);
                        e.b("gdt_ad", "gdt isNeedInit " + zA);
                        if (!zA) {
                            if (oVar != null) {
                                oVar.onSuccess();
                                return;
                            }
                            return;
                        }
                    }
                    try {
                        Method declaredMethod = GDTAdSdk.class.getDeclaredMethod("initWithoutStart", Context.class, String.class);
                        Method declaredMethod2 = GDTAdSdk.class.getDeclaredMethod("start", GDTAdSdk.OnStartListener.class);
                        declaredMethod.invoke(GDTAdSdk.class, context, str);
                        declaredMethod2.invoke(GDTAdSdk.class, Proxy.newProxyInstance(GDTAdSdk.OnStartListener.class.getClassLoader(), new Class[]{GDTAdSdk.OnStartListener.class}, new a(oVar)));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        e.b("gdt_ad", "e " + e10.getLocalizedMessage());
                        try {
                            Method declaredMethod3 = GDTAdSdk.class.getDeclaredMethod("init", Context.class, String.class);
                            if (declaredMethod3 != null) {
                                declaredMethod3.invoke(GDTAdSdk.class, context, str);
                            }
                        } catch (Exception e11) {
                            e.b("gdt_ad", "err " + e11.getLocalizedMessage());
                            Class<?> cls = Class.forName("com.qq.e.comm.managers.GDTADManager");
                            cls.getMethod("initWith", Context.class, String.class).invoke(cls.getDeclaredMethod("getInstance", new Class[0]).invoke(cls, new Object[0]), context, str);
                        }
                        if (oVar != null) {
                            oVar.onSuccess();
                        }
                    }
                } catch (Exception e12) {
                    e.b("gdt_ad", "err " + e12.getLocalizedMessage());
                    f4772b.set(false);
                    if (oVar != null) {
                        oVar.onSuccess();
                    }
                }
            } else if (oVar != null) {
                oVar.onSuccess();
            }
            n.c();
        }
    }

    public void a(f fVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
    }

    public static void a(f fVar, g gVar) {
        a(fVar, gVar, (Handler.Callback) null);
    }

    public static void a(f fVar, g gVar, Handler.Callback callback) {
        if (fVar == null || gVar == null) {
            e.b("XXXXXX", "hgp return ");
            b(callback);
            return;
        }
        boolean zA = gVar.a(fVar);
        e.b("XXXXXX", "hgp is " + zA);
        if (!zA) {
            e.b("XXXXXX", "hgp is false ");
            b(callback);
            return;
        }
        String strA = fVar.f5003c.a(f.c.f5015a0, "");
        n.a(strA, fVar.f5003c.c(f.c.f5031i0), fVar.f5003c.c(f.c.f5023e0));
        String str = "spf_" + strA;
        if (!TextUtils.isEmpty(strA) && com.aggmoread.sdk.z.c.a.a.c.j.SPLASH == fVar.f5001a.f4949e) {
            com.aggmoread.sdk.z.c.a.a.d.b.c.c(new C0163b(callback));
            return;
        }
        b(callback);
        com.aggmoread.sdk.z.c.a.a.d.b.c.g(null);
        e.b("XXXXXX", "hgp 1 " + str);
    }

    public static void a(Map<String, Object> map, Object obj, f fVar) {
        if (map != null) {
            String strA = com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(obj);
            e.b("AMHTAGGDT", "apkInfo " + strA);
            map.put("ext_APP_INFOURL", strA);
            c().a(map, a(obj), fVar);
        }
    }

    public static boolean a(f fVar, int i10) {
        return p.a(fVar, i10);
    }

    public static boolean a(f fVar, Object obj) {
        return a(fVar, a(obj));
    }
}
