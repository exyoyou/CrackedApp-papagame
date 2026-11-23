package com.facebook.soloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.StrictMode;
import android.text.TextUtils;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.NotThreadSafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
public class SoLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f28912a = "SoLoader";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final boolean f28913b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    static t f28915d = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("sSoSourcesLock")
    @Nullable
    private static w[] f28919h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("sSoSourcesLock")
    @Nullable
    private static com.facebook.soloader.b f28920i = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f28925n = "lib-main";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f28926o = "lib-";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f28927p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f28928q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f28929r = 4;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f28930s = 8;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f28931t = 16;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f28932u = 32;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @GuardedBy("sSoSourcesLock")
    private static int f28933v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static boolean f28934w;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ReentrantReadWriteLock f28916e = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("sSoSourcesLock")
    @Nullable
    private static u[] f28917f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("sSoSourcesLock")
    private static volatile int f28918g = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("SoLoader.class")
    private static final HashSet<String> f28921j = new HashSet<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @GuardedBy("SoLoader.class")
    private static final Map<String, Object> f28922k = new HashMap();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Set<String> f28923l = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static v f28924m = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final boolean f28914c = true;

    @DoNotOptimize
    @TargetApi(14)
    private static class Api14Utils {
        private Api14Utils() {
        }

        public static String a() {
            ClassLoader classLoader = SoLoader.class.getClassLoader();
            if (classLoader == null || (classLoader instanceof BaseDexClassLoader)) {
                try {
                    return (String) BaseDexClassLoader.class.getMethod("getLdLibraryPath", new Class[0]).invoke((BaseDexClassLoader) classLoader, new Object[0]);
                } catch (Exception e10) {
                    throw new RuntimeException("Cannot call getLdLibraryPath", e10);
                }
            }
            throw new IllegalStateException("ClassLoader " + classLoader.getClass().getName() + " should be of type BaseDexClassLoader");
        }
    }

    public static final class WrongAbiError extends UnsatisfiedLinkError {
        WrongAbiError(Throwable th, String str) {
            super("APK was built for a different platform. Supported ABIs: " + Arrays.toString(SysUtil.h()) + " error: " + str);
            initCause(th);
        }
    }

    static class a implements t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f28935a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f28936b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f28937c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Runtime f28938d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Method f28939e;

        a(boolean z10, String str, String str2, Runtime runtime, Method method) {
            this.f28935a = z10;
            this.f28936b = str;
            this.f28937c = str2;
            this.f28938d = runtime;
            this.f28939e = method;
        }

        private String b(String str) {
            try {
                File file = new File(str);
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i10 = fileInputStream.read(bArr);
                        if (i10 <= 0) {
                            String str2 = String.format("%32x", new BigInteger(1, messageDigest.digest()));
                            fileInputStream.close();
                            return str2;
                        }
                        messageDigest.update(bArr, 0, i10);
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e10) {
                return e10.toString();
            } catch (SecurityException e11) {
                return e11.toString();
            } catch (NoSuchAlgorithmException e12) {
                return e12.toString();
            }
        }

        /* JADX WARN: Code duplicated, block: B:45:0x0095  */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        
            if (r1 == null) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
        
            r0 = new java.lang.StringBuilder();
            r0.append("Error when loading lib: ");
            r0.append(r1);
            r0.append(" lib hash: ");
            r0.append(b(r9));
            r0.append(" search path is ");
            r0.append(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
        
            return;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v2 */
        @Override // com.facebook.soloader.t
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.lang.String r9, int r10) throws java.lang.Throwable {
            /*
                r8 = this;
                boolean r0 = r8.f28935a
                if (r0 == 0) goto Lb7
                r0 = 4
                r10 = r10 & r0
                r1 = 1
                r2 = 0
                if (r10 != r0) goto Lc
                r10 = 1
                goto Ld
            Lc:
                r10 = 0
            Ld:
                if (r10 == 0) goto L12
                java.lang.String r10 = r8.f28936b
                goto L14
            L12:
                java.lang.String r10 = r8.f28937c
            L14:
                r0 = 0
                java.lang.Runtime r3 = r8.f28938d     // Catch: java.lang.Throwable -> L6e java.lang.reflect.InvocationTargetException -> L73 java.lang.IllegalArgumentException -> L75 java.lang.IllegalAccessException -> L77
                monitor-enter(r3)     // Catch: java.lang.Throwable -> L6e java.lang.reflect.InvocationTargetException -> L73 java.lang.IllegalArgumentException -> L75 java.lang.IllegalAccessException -> L77
                java.lang.reflect.Method r4 = r8.f28939e     // Catch: java.lang.Throwable -> L60
                java.lang.Runtime r5 = r8.f28938d     // Catch: java.lang.Throwable -> L60
                r6 = 3
                java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L60
                r6[r2] = r9     // Catch: java.lang.Throwable -> L60
                java.lang.Class<com.facebook.soloader.SoLoader> r2 = com.facebook.soloader.SoLoader.class
                java.lang.ClassLoader r2 = r2.getClassLoader()     // Catch: java.lang.Throwable -> L60
                r6[r1] = r2     // Catch: java.lang.Throwable -> L60
                r1 = 2
                r6[r1] = r10     // Catch: java.lang.Throwable -> L60
                java.lang.Object r1 = r4.invoke(r5, r6)     // Catch: java.lang.Throwable -> L60
                java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L60
                if (r1 != 0) goto L5a
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L6c
                if (r1 == 0) goto Lba
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "Error when loading lib: "
                r0.append(r2)
                r0.append(r1)
                java.lang.String r1 = " lib hash: "
                r0.append(r1)
                java.lang.String r9 = r8.b(r9)
                r0.append(r9)
                java.lang.String r9 = " search path is "
                r0.append(r9)
                r0.append(r10)
                goto Lba
            L5a:
                java.lang.UnsatisfiedLinkError r0 = new java.lang.UnsatisfiedLinkError     // Catch: java.lang.Throwable -> L6c
                r0.<init>(r1)     // Catch: java.lang.Throwable -> L6c
                throw r0     // Catch: java.lang.Throwable -> L6c
            L60:
                r1 = move-exception
                r7 = r1
                r1 = r0
                r0 = r7
            L64:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L6c
                throw r0     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalArgumentException -> L68 java.lang.IllegalAccessException -> L6a java.lang.Throwable -> L92
            L66:
                r0 = move-exception
                goto L7b
            L68:
                r0 = move-exception
                goto L7b
            L6a:
                r0 = move-exception
                goto L7b
            L6c:
                r0 = move-exception
                goto L64
            L6e:
                r1 = move-exception
                r7 = r1
                r1 = r0
                r0 = r7
                goto L93
            L73:
                r1 = move-exception
                goto L78
            L75:
                r1 = move-exception
                goto L78
            L77:
                r1 = move-exception
            L78:
                r7 = r1
                r1 = r0
                r0 = r7
            L7b:
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L92
                r2.<init>()     // Catch: java.lang.Throwable -> L92
                java.lang.String r3 = "Error: Cannot load "
                r2.append(r3)     // Catch: java.lang.Throwable -> L92
                r2.append(r9)     // Catch: java.lang.Throwable -> L92
                java.lang.String r1 = r2.toString()     // Catch: java.lang.Throwable -> L92
                java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L92
                r2.<init>(r1, r0)     // Catch: java.lang.Throwable -> L92
                throw r2     // Catch: java.lang.Throwable -> L92
            L92:
                r0 = move-exception
            L93:
                if (r1 == 0) goto Lb6
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Error when loading lib: "
                r2.append(r3)
                r2.append(r1)
                java.lang.String r1 = " lib hash: "
                r2.append(r1)
                java.lang.String r9 = r8.b(r9)
                r2.append(r9)
                java.lang.String r9 = " search path is "
                r2.append(r9)
                r2.append(r10)
            Lb6:
                throw r0
            Lb7:
                java.lang.System.load(r9)
            Lba:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.SoLoader.a.a(java.lang.String, int):void");
        }
    }

    @NotThreadSafe
    static class b {
        b() {
        }

        static void a() {
            synchronized (SoLoader.class) {
                SoLoader.f28921j.clear();
                SoLoader.f28922k.clear();
                SoLoader.f28915d = null;
            }
            c(null);
        }

        static void b(t tVar) {
            SoLoader.f28915d = tVar;
        }

        static void c(u[] uVarArr) {
            SoLoader.f28916e.writeLock().lock();
            try {
                u[] unused = SoLoader.f28917f = uVarArr;
                SoLoader.c();
            } finally {
                SoLoader.f28916e.writeLock().unlock();
            }
        }
    }

    private static int A() {
        f28916e.writeLock().lock();
        try {
            return (f28933v & 2) != 0 ? 1 : 0;
        } finally {
            f28916e.writeLock().unlock();
        }
    }

    public static void B(u uVar) throws IOException {
        f28916e.writeLock().lock();
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Prepending to SO sources: ");
            sb2.append(uVar);
            g();
            uVar.f(A());
            u[] uVarArr = f28917f;
            u[] uVarArr2 = new u[uVarArr.length + 1];
            uVarArr2[0] = uVar;
            System.arraycopy(uVarArr, 0, uVarArr2, 1, uVarArr.length);
            f28917f = uVarArr2;
            f28918g++;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Prepended to SO sources: ");
            sb3.append(uVar);
        } finally {
            f28916e.writeLock().unlock();
        }
    }

    public static void C() {
        b.c(new u[]{new s()});
    }

    public static void D(v vVar) {
        f28924m = vVar;
    }

    public static File E(String str) throws UnsatisfiedLinkError {
        g();
        try {
            return F(System.mapLibraryName(str));
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    static File F(String str) throws IOException {
        f28916e.readLock().lock();
        try {
            for (u uVar : f28917f) {
                File fileG = uVar.g(str);
                if (fileG != null) {
                    return fileG;
                }
            }
            throw new FileNotFoundException(str);
        } finally {
            f28916e.readLock().unlock();
        }
    }

    static /* synthetic */ int c() {
        int i10 = f28918g;
        f28918g = i10 + 1;
        return i10;
    }

    public static boolean f() {
        ReentrantReadWriteLock reentrantReadWriteLock = f28916e;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f28917f != null) {
                String[] strArrH = SysUtil.h();
                for (u uVar : f28917f) {
                    for (String str : uVar.d()) {
                        boolean zEquals = false;
                        for (int i10 = 0; i10 < strArrH.length && !zEquals; i10++) {
                            zEquals = str.equals(strArrH[i10]);
                        }
                        if (!zEquals) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("abi not supported: ");
                            sb2.append(str);
                            reentrantReadWriteLock = f28916e;
                        }
                    }
                }
                f28916e.readLock().unlock();
                return true;
            }
            reentrantReadWriteLock.readLock().unlock();
            return false;
        } catch (Throwable th) {
            f28916e.readLock().unlock();
            throw th;
        }
    }

    private static void g() {
        if (!s()) {
            throw new IllegalStateException("SoLoader.init() not yet called");
        }
    }

    private static boolean h(Context context, int i10) {
        return ((i10 & 32) != 0 || context == null || (context.getApplicationInfo().flags & 129) == 0) ? false : true;
    }

    public static void i() {
        b.c(null);
    }

    public static void init(Context context, int i10) throws IOException {
        o(context, i10, null);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0101 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void j(java.lang.String r11, int r12, @javax.annotation.Nullable android.os.StrictMode.ThreadPolicy r13) throws java.lang.UnsatisfiedLinkError {
        /*
            Method dump skipped, instruction units count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.SoLoader.j(java.lang.String, int, android.os.StrictMode$ThreadPolicy):void");
    }

    @Nullable
    public static String[] k(String str) throws IOException {
        f28916e.readLock().lock();
        try {
            String[] strArrB = null;
            if (f28917f != null) {
                int i10 = 0;
                while (strArrB == null) {
                    u[] uVarArr = f28917f;
                    if (i10 >= uVarArr.length) {
                        break;
                    }
                    strArrB = uVarArr[i10].b(str);
                    i10++;
                }
            }
            return strArrB;
        } finally {
            f28916e.readLock().unlock();
        }
    }

    @Nullable
    public static String l(String str) throws IOException {
        f28916e.readLock().lock();
        try {
            String strC = null;
            if (f28917f != null) {
                int i10 = 0;
                while (strC == null) {
                    u[] uVarArr = f28917f;
                    if (i10 >= uVarArr.length) {
                        break;
                    }
                    strC = uVarArr[i10].c(str);
                    i10++;
                }
            }
            return strC;
        } finally {
            f28916e.readLock().unlock();
        }
    }

    @Nullable
    private static Method m() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23 && i10 <= 27) {
            try {
                Method declaredMethod = Runtime.class.getDeclaredMethod("nativeLoad", String.class, ClassLoader.class, String.class);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (NoSuchMethodException | SecurityException unused) {
            }
        }
        return null;
    }

    public static int n() {
        return f28918g;
    }

    public static void o(Context context, int i10, @Nullable t tVar) throws IOException {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            f28934w = h(context, i10);
            q(tVar);
            r(context, i10, tVar);
            r4.a.d(new q());
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
        }
    }

    public static void p(Context context, boolean z10) {
        try {
            init(context, z10 ? 1 : 0);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static synchronized void q(@Nullable t tVar) {
        try {
            if (tVar != null) {
                f28915d = tVar;
                return;
            }
            Runtime runtime = Runtime.getRuntime();
            Method methodM = m();
            boolean z10 = methodM != null;
            String strA = z10 ? Api14Utils.a() : null;
            f28915d = new a(z10, strA, z(strA), runtime, methodM);
        } catch (Throwable th) {
            throw th;
        }
    }

    private static void r(Context context, int i10, @Nullable t tVar) throws IOException {
        int i11;
        f28916e.writeLock().lock();
        try {
            if (f28917f == null) {
                f28933v = i10;
                ArrayList arrayList = new ArrayList();
                String str = System.getenv("LD_LIBRARY_PATH");
                if (str == null) {
                    str = SysUtil.i() ? "/vendor/lib64:/system/lib64" : "/vendor/lib:/system/lib";
                }
                for (String str2 : str.split(":")) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("adding system library source: ");
                    sb2.append(str2);
                    arrayList.add(new c(new File(str2), 2));
                }
                if (context != null) {
                    if ((i10 & 1) != 0) {
                        f28919h = null;
                        arrayList.add(0, new l(context, f28925n));
                    } else {
                        if (f28934w) {
                            i11 = 0;
                        } else {
                            f28920i = new com.facebook.soloader.b(context, 0);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("adding application source: ");
                            sb3.append(f28920i.toString());
                            arrayList.add(0, f28920i);
                            i11 = 1;
                        }
                        if ((f28933v & 8) != 0) {
                            f28919h = null;
                        } else {
                            File file = new File(context.getApplicationInfo().sourceDir);
                            ArrayList arrayList2 = new ArrayList();
                            com.facebook.soloader.a aVar = new com.facebook.soloader.a(context, file, f28925n, i11);
                            arrayList2.add(aVar);
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("adding backup source from : ");
                            sb4.append(aVar.toString());
                            if (context.getApplicationInfo().splitSourceDirs != null) {
                                String[] strArr = context.getApplicationInfo().splitSourceDirs;
                                int length = strArr.length;
                                int i12 = 0;
                                int i13 = 0;
                                while (i12 < length) {
                                    File file2 = new File(strArr[i12]);
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append(f28926o);
                                    int i14 = i13 + 1;
                                    sb5.append(i13);
                                    com.facebook.soloader.a aVar2 = new com.facebook.soloader.a(context, file2, sb5.toString(), i11);
                                    StringBuilder sb6 = new StringBuilder();
                                    sb6.append("adding backup source: ");
                                    sb6.append(aVar2.toString());
                                    arrayList2.add(aVar2);
                                    i12++;
                                    i13 = i14;
                                }
                            }
                            f28919h = (w[]) arrayList2.toArray(new w[arrayList2.size()]);
                            arrayList.addAll(0, arrayList2);
                        }
                    }
                }
                u[] uVarArr = (u[]) arrayList.toArray(new u[arrayList.size()]);
                int iA = A();
                int length2 = uVarArr.length;
                while (true) {
                    int i15 = length2 - 1;
                    if (length2 <= 0) {
                        break;
                    }
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("Preparing SO source: ");
                    sb7.append(uVarArr[i15]);
                    uVarArr[i15].f(iA);
                    length2 = i15;
                }
                f28917f = uVarArr;
                f28918g++;
                StringBuilder sb8 = new StringBuilder();
                sb8.append("init finish: ");
                sb8.append(f28917f.length);
                sb8.append(" SO sources prepared");
            }
        } finally {
            f28916e.writeLock().unlock();
        }
    }

    public static boolean s() {
        f28916e.readLock().lock();
        try {
            return f28917f != null;
        } finally {
            f28916e.readLock().unlock();
        }
    }

    public static boolean t(String str) {
        return u(str, 0);
    }

    public static boolean u(String str, int i10) throws UnsatisfiedLinkError {
        v vVar;
        boolean z10;
        ReentrantReadWriteLock reentrantReadWriteLock = f28916e;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f28917f == null) {
                if (!"http://www.android.com/".equals(System.getProperty("java.vendor.url"))) {
                    synchronized (SoLoader.class) {
                        z10 = !f28921j.contains(str);
                        if (z10) {
                            v vVar2 = f28924m;
                            if (vVar2 != null) {
                                vVar2.loadLibrary(str);
                            } else {
                                System.loadLibrary(str);
                            }
                        }
                    }
                    reentrantReadWriteLock.readLock().unlock();
                    return z10;
                }
                g();
            }
            reentrantReadWriteLock.readLock().unlock();
            if (!f28934w || (vVar = f28924m) == null) {
                String strB = o.b(str);
                return w(System.mapLibraryName(strB != null ? strB : str), str, strB, i10, null);
            }
            vVar.loadLibrary(str);
            return true;
        } catch (Throwable th) {
            f28916e.readLock().unlock();
            throw th;
        }
    }

    static void v(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        x(str, null, null, i10, threadPolicy);
    }

    private static boolean w(String str, @Nullable String str2, @Nullable String str3, int i10, @Nullable StrictMode.ThreadPolicy threadPolicy) {
        boolean z10;
        boolean zX = false;
        do {
            try {
                zX = x(str, str2, str3, i10, threadPolicy);
                z10 = false;
            } catch (UnsatisfiedLinkError e10) {
                int i11 = f28918g;
                f28916e.writeLock().lock();
                try {
                    try {
                        if (f28920i == null || !f28920i.h()) {
                            z10 = false;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("sApplicationSoSource updated during load: ");
                            sb2.append(str);
                            sb2.append(", attempting load again.");
                            z10 = true;
                            f28918g++;
                        }
                        f28916e.writeLock().unlock();
                        if (f28918g == i11) {
                            throw e10;
                        }
                    } catch (IOException e11) {
                        throw new RuntimeException(e11);
                    }
                } catch (Throwable th) {
                    f28916e.writeLock().unlock();
                    throw th;
                }
            }
        } while (z10);
        return zX;
    }

    private static boolean x(String str, @Nullable String str2, @Nullable String str3, int i10, @Nullable StrictMode.ThreadPolicy threadPolicy) {
        boolean z10;
        Object obj;
        boolean z11 = false;
        if (!TextUtils.isEmpty(str2) && f28923l.contains(str2)) {
            return false;
        }
        synchronized (SoLoader.class) {
            HashSet<String> hashSet = f28921j;
            if (!hashSet.contains(str)) {
                z10 = false;
            } else {
                if (str3 == null) {
                    return false;
                }
                z10 = true;
            }
            Map<String, Object> map = f28922k;
            if (map.containsKey(str)) {
                obj = map.get(str);
            } else {
                Object obj2 = new Object();
                map.put(str, obj2);
                obj = obj2;
            }
            ReentrantReadWriteLock reentrantReadWriteLock = f28916e;
            reentrantReadWriteLock.readLock().lock();
            try {
                synchronized (obj) {
                    if (!z10) {
                        try {
                            synchronized (SoLoader.class) {
                                if (hashSet.contains(str)) {
                                    if (str3 == null) {
                                        reentrantReadWriteLock.readLock().unlock();
                                        return false;
                                    }
                                    z10 = true;
                                }
                                if (!z10) {
                                    try {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("About to load: ");
                                        sb2.append(str);
                                        j(str, i10, threadPolicy);
                                        synchronized (SoLoader.class) {
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append("Loaded: ");
                                            sb3.append(str);
                                            hashSet.add(str);
                                        }
                                    } catch (UnsatisfiedLinkError e10) {
                                        String message = e10.getMessage();
                                        if (message == null || !message.contains("unexpected e_machine:")) {
                                            throw e10;
                                        }
                                        throw new WrongAbiError(e10, message.substring(message.lastIndexOf("unexpected e_machine:")));
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if ((i10 & 16) == 0) {
                        if (!TextUtils.isEmpty(str2) && f28923l.contains(str2)) {
                            z11 = true;
                        }
                        if (str3 != null && !z11) {
                            boolean z12 = f28914c;
                            if (z12) {
                                Api18TraceUtils.a("MergedSoMapping.invokeJniOnload[", str2, "]");
                            }
                            try {
                                try {
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("About to merge: ");
                                    sb4.append(str2);
                                    sb4.append(" / ");
                                    sb4.append(str);
                                    o.a(str2);
                                    f28923l.add(str2);
                                    if (z12) {
                                        Api18TraceUtils.b();
                                    }
                                } catch (UnsatisfiedLinkError e11) {
                                    throw new RuntimeException("Failed to call JNI_OnLoad from '" + str2 + "', which has been merged into '" + str + "'.  See comment for details.", e11);
                                }
                            } catch (Throwable th2) {
                                if (f28914c) {
                                    Api18TraceUtils.b();
                                }
                                throw th2;
                            }
                        }
                    }
                    reentrantReadWriteLock.readLock().unlock();
                    return !z10;
                }
            } catch (Throwable th3) {
                f28916e.readLock().unlock();
                throw th3;
            }
        }
    }

    public static String y() {
        f28916e.readLock().lock();
        try {
            g();
            ArrayList arrayList = new ArrayList();
            u[] uVarArr = f28917f;
            if (uVarArr != null) {
                for (u uVar : uVarArr) {
                    uVar.a(arrayList);
                }
            }
            String strJoin = TextUtils.join(":", arrayList);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("makeLdLibraryPath final path: ");
            sb2.append(strJoin);
            return strJoin;
        } finally {
            f28916e.readLock().unlock();
        }
    }

    @Nullable
    public static String z(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(":");
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        for (String str2 : strArrSplit) {
            if (!str2.contains("!")) {
                arrayList.add(str2);
            }
        }
        return TextUtils.join(":", arrayList);
    }
}
