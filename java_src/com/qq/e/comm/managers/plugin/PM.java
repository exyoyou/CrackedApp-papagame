package com.qq.e.comm.managers.plugin;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.qq.e.comm.constants.Sig;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PM {
    public static final int CALL_START_BY_DEV = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Map<Class<?>, String> f78318t = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f78320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f78321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f78322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile int f78323e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private DexClassLoader f78324f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RandomAccessFile f78325g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private FileLock f78326h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f78327i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile POFactory f78328j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f78329k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f78330l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Future<Boolean> f78331m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f78333o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f78334p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private JSONObject f78335q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f78337s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ExecutorService f78319a = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f78332n = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final com.qq.e.comm.util.b f78336r = new com.qq.e.comm.util.b();

    class a implements Callable<Boolean> {
        a() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            long jCurrentTimeMillis = System.currentTimeMillis();
            PM.this.f78336r.c();
            h.b(PM.this.f78320b);
            PM.this.f78336r.b();
            PM.this.r();
            PM.this.f78336r.b();
            if (!PM.this.f78327i) {
                PM pm = PM.this;
                pm.f78327i = pm.tryLockUpdate();
            }
            PM.this.f78336r.b();
            if (PM.this.q()) {
                PM.this.f78330l = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
                PM.this.l();
            }
            PM.this.f78336r.a();
            PM.this.f78329k = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
            return Boolean.TRUE;
        }
    }

    class b extends HashMap<Class<?>, String> {
        b() {
            put(POFactory.class, "com.qq.e.comm.plugin.POFactoryImpl");
        }
    }

    public PM(Context context, f fVar) {
        this.f78320b = context.getApplicationContext();
        i.a(context);
        p();
    }

    private JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            int pluginVersion = getPluginVersion();
            if (pluginVersion > 10000) {
                jSONObject.put("vas", this.f78334p);
            }
            jSONObject.put(com.umeng.analytics.pro.f.T, pluginVersion);
            jSONObject.put("sig", this.f78321c);
            jSONObject.put("appId", com.qq.e.comm.managers.a.b().a());
            jSONObject.put("pn", i.a(this.f78320b));
            jSONObject.put("ict", this.f78329k);
            jSONObject.put("mup", this.f78327i);
            jSONObject.put("ifg", this.f78337s);
            jSONObject.put("pct", this.f78330l);
            jSONObject.put("tcr", this.f78336r.toString());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private void g() {
    }

    private ClassLoader h() {
        return Sig.ASSET_PLUGIN_SIG == null ? getClass().getClassLoader() : this.f78324f;
    }

    private boolean j() {
        if (!this.f78327i) {
            return false;
        }
        try {
            this.f78337s = 1;
            Context context = this.f78320b;
            com.qq.e.comm.managers.plugin.b.a(context, h.m(context), h.n(this.f78320b));
            this.f78321c = Sig.ASSET_PLUGIN_SIG;
            this.f78322d = h.m(this.f78320b);
            this.f78323e = SDKStatus.getBuildInPluginVersion();
            return true;
        } catch (Throwable th) {
            GDTLogger.e("插件初始化失败 ");
            com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        File file = this.f78322d;
        if (file != null) {
            file.getAbsolutePath();
        }
        if (this.f78321c == null || this.f78322d == null) {
            this.f78324f = null;
            return;
        }
        try {
            this.f78324f = new DexClassLoader(this.f78322d.getAbsolutePath(), h.h(this.f78320b).getAbsolutePath(), null, getClass().getClassLoader());
            s();
        } catch (Throwable th) {
            GDTLogger.e("插件ClassLoader构造发生异常", th);
            g();
            com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
        }
    }

    private boolean o() {
        if (this.f78333o) {
            return false;
        }
        if (this.f78327i) {
            g gVar = new g(h.j(this.f78320b), h.k(this.f78320b));
            if (gVar.c(this.f78320b, false)) {
                this.f78337s = 3;
                h.c(this.f78320b);
                gVar.d(h.m(this.f78320b), h.n(this.f78320b), this.f78320b);
            }
        }
        g gVar2 = new g(h.m(this.f78320b), h.n(this.f78320b));
        if (!gVar2.c(this.f78320b, true)) {
            return false;
        }
        if (gVar2.e() < SDKStatus.getBuildInPluginVersion()) {
            SDKStatus.getBuildInPluginVersion();
            return false;
        }
        if (this.f78337s == 0) {
            this.f78337s = 2;
        }
        this.f78321c = gVar2.b();
        this.f78323e = gVar2.e();
        this.f78322d = h.m(this.f78320b);
        this.f78334p = gVar2.c();
        this.f78332n = true;
        return true;
    }

    private void p() {
        this.f78332n = false;
        this.f78331m = this.f78319a.submit(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q() {
        try {
            System.currentTimeMillis();
            boolean zO = o();
            this.f78336r.b();
            if (zO) {
                this.f78336r.b();
                System.currentTimeMillis();
                return true;
            }
            boolean zJ = j();
            this.f78336r.b();
            System.currentTimeMillis();
            return zJ;
        } catch (Throwable th) {
            try {
                GDTLogger.e("插件加载出现异常", th);
                com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
                return false;
            } finally {
                System.currentTimeMillis();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        SharedPreferences sharedPreferences = this.f78320b.getSharedPreferences("start_crash", 0);
        if (sharedPreferences.getInt("crash_count", 0) >= 2) {
            this.f78333o = true;
            sharedPreferences.edit().remove("crash_count").commit();
            GDTLogger.e("加载本地插件");
        }
    }

    private void s() {
    }

    private void t() {
        Future<Boolean> future = this.f78331m;
        if (future != null) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    public <T> T getFactory(Class<T> cls) throws e {
        t();
        Objects.toString(cls);
        ClassLoader classLoaderH = h();
        getClass().getClassLoader();
        if (classLoaderH == null) {
            throw new e("Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:" + cls);
        }
        try {
            String str = f78318t.get(cls);
            if (TextUtils.isEmpty(str)) {
                throw new e("factory  implemention name is not specified for interface:" + cls.getName());
            }
            Class<?> clsLoadClass = classLoaderH.loadClass(str);
            T tCast = cls.cast(clsLoadClass.getDeclaredMethod("getInstance", Context.class, JSONObject.class).invoke(clsLoadClass, this.f78320b, c()));
            Objects.toString(tCast);
            return tCast;
        } catch (Throwable th) {
            throw new e("Fail to getfactory implement instance for interface:" + cls.getName(), th);
        }
    }

    public POFactory getPOFactory() throws e {
        return getPOFactory(true, false);
    }

    public int getPluginVersion() {
        t();
        return this.f78323e;
    }

    public JSONObject getStartCaller(int i10) {
        if (this.f78335q == null) {
            this.f78335q = new JSONObject();
        }
        try {
            this.f78335q.put("scr", i10);
        } catch (JSONException unused) {
        }
        return this.f78335q;
    }

    public boolean tryLockUpdate() {
        try {
            File fileI = h.i(this.f78320b);
            if (!fileI.exists()) {
                fileI.createNewFile();
                h.e(org.aspectj.lang.c.f95154k, fileI);
            }
            if (!fileI.exists()) {
                return false;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(fileI, net.lingala.zip4j.util.e.f94694e0);
            this.f78325g = randomAccessFile;
            FileLock fileLockTryLock = randomAccessFile.getChannel().tryLock();
            this.f78326h = fileLockTryLock;
            if (fileLockTryLock == null) {
                return false;
            }
            this.f78325g.writeByte(37);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public POFactory getPOFactory(boolean z10, boolean z11) throws e {
        if (this.f78328j == null) {
            synchronized (this) {
                if (this.f78328j == null) {
                    try {
                        this.f78328j = (POFactory) getFactory(POFactory.class);
                    } catch (e e10) {
                        if (!this.f78332n) {
                            throw e10;
                        }
                        GDTLogger.e("插件加载错误，回退到内置版本");
                        this.f78333o = true;
                        p();
                        this.f78328j = (POFactory) getFactory(POFactory.class);
                    }
                }
            }
        }
        if (z10 && this.f78328j != null) {
            this.f78328j.start(getStartCaller(z11 ? 0 : 2));
        }
        return this.f78328j;
    }
}
