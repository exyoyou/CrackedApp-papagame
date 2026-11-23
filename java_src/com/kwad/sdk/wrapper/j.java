package com.kwad.sdk.wrapper;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import androidx.annotation.NonNull;
import com.kwad.sdk.service.ServiceProvider;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class j {
    private static final String CLAZZ_NAME = "com.kwad.sdk.wrapper.j";
    private static final ThreadLocal<a> sAutoUnWrapModelTL = new ThreadLocal<>();
    private static final List<String> sAutoUnWrapStackList = new CopyOnWriteArrayList();
    private static final Map<Context, Context> sResContextCache = new WeakHashMap();
    private static final AtomicBoolean bub = new AtomicBoolean(false);

    static class a {
        private WeakReference<Context> aDW;
        private int aDX;
        private StackTraceElement[] aDY;
        private int aDZ;
        private long aEa;

        private a() {
            this.aDW = new WeakReference<>(null);
            this.aDX = 0;
            this.aDY = null;
            this.aDZ = 0;
        }

        static /* synthetic */ int c(a aVar) {
            int i10 = aVar.aDX;
            aVar.aDX = i10 + 1;
            return i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            this.aDW = new WeakReference<>(null);
            this.aDX = 0;
            this.aDY = null;
            this.aDZ = 0;
            this.aEa = 0L;
        }

        static /* synthetic */ int g(a aVar) {
            int i10 = aVar.aDZ;
            aVar.aDZ = i10 + 1;
            return i10;
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    public static boolean XY() {
        return bub.get();
    }

    private static boolean a(Context context, a aVar) {
        Context context2 = sResContextCache.get(context);
        String name = context2 != null ? context2.getClass().getName() : "";
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (Arrays.equals(stackTrace, aVar.aDY)) {
            a.g(aVar);
            aVar.aDY = stackTrace;
            return aVar.aDZ >= 5;
        }
        if (aVar.aDY != null) {
            aVar.clear();
            return false;
        }
        aVar.aDY = stackTrace;
        int i10 = 0;
        int i11 = 0;
        while (i10 < stackTrace.length) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            String className = stackTraceElement.getClassName();
            for (String str : getAutoUnWrapStackList()) {
                if (!TextUtils.isEmpty(str) && className.contains(str)) {
                    return true;
                }
            }
            String methodName = stackTraceElement.getMethodName();
            i10++;
            if (i10 < stackTrace.length && CLAZZ_NAME.equals(className) && "wrapContextIfNeed".equals(methodName)) {
                StackTraceElement stackTraceElement2 = stackTrace[i10];
                if (TextUtils.equals(name, stackTraceElement2.getClassName()) && "getBaseContext".equals(stackTraceElement2.getMethodName()) && (i11 = i11 + 1) >= 5) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void b(final Context context, Context context2) {
        sResContextCache.put(context, context2);
        if (context instanceof Activity) {
            com.kwad.sdk.core.c.b.LW();
            com.kwad.sdk.core.c.b.a(new com.kwad.sdk.core.c.d() { // from class: com.kwad.sdk.wrapper.j.1
                @Override // com.kwad.sdk.core.c.d, com.kwad.sdk.core.c.c
                /* JADX INFO: renamed from: onActivityDestroyed */
                public final void b(@NonNull Activity activity) {
                    if (activity == context) {
                        com.kwad.sdk.core.c.b.LW();
                        com.kwad.sdk.core.c.b.b((com.kwad.sdk.core.c.c) this);
                        j.onDestroy(context);
                    }
                }
            });
        }
    }

    public static void cL(boolean z10) {
        bub.set(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.content.Context, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [android.content.Context] */
    static Context eL(Context context) {
        boolean z10 = context instanceof b;
        ?? delegatedContext = context;
        if (z10) {
            delegatedContext = ((b) context).getDelegatedContext();
        }
        if (m.eS(delegatedContext)) {
            return delegatedContext;
        }
        RuntimeException runtimeException = null;
        int i10 = 0;
        ?? r10 = delegatedContext;
        while (i10 < 10) {
            if (runtimeException == null) {
                RuntimeException runtimeException2 = new RuntimeException("expect normalContext --context:" + r10.getClass().getName() + "--initFinish:" + ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fx());
                ((com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)).gatherException(runtimeException2);
                runtimeException = runtimeException2;
            }
            boolean zBe = k.be(r10);
            ?? Bd = r10;
            if (zBe) {
                Bd = k.bd(r10);
            }
            boolean z11 = Bd instanceof b;
            ?? delegatedContext2 = Bd;
            if (z11) {
                delegatedContext2 = ((b) Bd).getDelegatedContext();
            }
            if (m.eS(delegatedContext2)) {
                return delegatedContext2;
            }
            i10++;
            r10 = delegatedContext2;
        }
        return r10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    static Context eM(Context context) {
        if (context instanceof Application) {
            return context;
        }
        Context applicationContext = eL(context).getApplicationContext();
        if (applicationContext instanceof Application) {
            return applicationContext;
        }
        int i10 = 0;
        ?? r10 = applicationContext;
        while (i10 < 10) {
            ?? applicationContext2 = r10.getApplicationContext();
            if (applicationContext2 instanceof Application) {
                return applicationContext2;
            }
            if (applicationContext2 instanceof b) {
                applicationContext2 = ((b) applicationContext2).getDelegatedContext();
            }
            i10++;
            r10 = applicationContext2;
        }
        return r10;
    }

    private static List<String> getAutoUnWrapStackList() {
        List<String> list = sAutoUnWrapStackList;
        if (list.isEmpty()) {
            list.add("com.sensorsdata.analytics.android.sdk");
        }
        return list;
    }

    public static void onDestroy(Context context) {
        sResContextCache.remove(context);
    }

    static ClassLoader replaceExternalClassLoader(ClassLoader classLoader) {
        ClassLoader classLoader2 = f.XT().getClassLoader();
        return classLoader2 != null ? classLoader2 : classLoader;
    }

    static Resources.Theme replaceTheme(Resources.Theme theme, Resources.Theme theme2, int i10) {
        Resources resources = f.XT().getResources();
        if (resources == null) {
            return theme;
        }
        if (theme2 != null) {
            return theme2;
        }
        Resources.Theme themeNewTheme = resources.newTheme();
        themeNewTheme.applyStyle(i10, true);
        return themeNewTheme;
    }

    private static boolean returnUnWrappedContext(Context context) {
        ThreadLocal<a> threadLocal = sAutoUnWrapModelTL;
        a aVar = threadLocal.get();
        byte b10 = 0;
        if (aVar == null) {
            threadLocal.set(new a(b10));
        } else if (aVar.aDW.get() != context || Math.abs(System.currentTimeMillis() - aVar.aEa) >= 150) {
            aVar.clear();
            aVar.aDW = new WeakReference(context);
            aVar.aEa = System.currentTimeMillis();
        } else {
            a.c(aVar);
            if (aVar.aDX >= (context instanceof Application ? 15 : 5) && a(context, aVar)) {
                aVar.clear();
                return true;
            }
        }
        return false;
    }

    static Context wrapContextIfNeed(Context context) {
        Context eVar;
        if (context == null) {
            ((com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)).gatherException(new RuntimeException("KSWrapper wrapContextIfNeed context is null"));
            return null;
        }
        com.kwad.sdk.core.d.c.w("Wrapper", "wrapContextIfNeed run context is: " + context);
        if (!m.Ye() || (context instanceof b)) {
            return context;
        }
        if (k.be(context)) {
            context = k.unwrapContextIfNeed(context);
            if (k.be(context)) {
                ((com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)).gatherException(new RuntimeException("KSWrapper unwrapContextIfNeed fail"));
                return context;
            }
        }
        Context context2 = sResContextCache.get(context);
        if (context2 instanceof b) {
            return context2;
        }
        if (l.eN(context)) {
            return context;
        }
        if (returnUnWrappedContext(context)) {
            ((com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)).gatherException(new RuntimeException("KSWrapper returnUnWrappedContext context: " + context.getClass().getName()));
            return context;
        }
        if (context instanceof Application) {
            try {
                g gVar = new g((Application) context, new h(context, f.XT()));
                m.d(gVar);
                eVar = gVar;
            } catch (Throwable th) {
                com.kwad.sdk.core.d.c.w("Wrapper", "wrapContextIfNeed Application error: " + th.getMessage());
                th.printStackTrace();
                ((com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)).gatherException(new RuntimeException("wrapper Application fail --context:" + context.getClass().getName() + "--initFinish:" + ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fx()));
                return context;
            }
        } else if (context instanceof ContextThemeWrapper) {
            eVar = new c((ContextThemeWrapper) context);
        } else if (context instanceof androidx.appcompat.view.ContextThemeWrapper) {
            eVar = new d((androidx.appcompat.view.ContextThemeWrapper) context);
        } else {
            eVar = context instanceof ContextWrapper ? new e(context) : new e(context);
        }
        b(context, eVar);
        return eVar;
    }
}
