package com.baidu.mobads.sdk.internal;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import java.io.File;
import java.io.FileInputStream;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.jar.JarFile;

/* JADX INFO: loaded from: classes6.dex */
public class cb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7679a = "ApkLoader";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static Thread.UncaughtExceptionHandler f7680b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7681c = "__badApkVersion__9.450";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f7682d = "previousProxyVersion";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final String f7683e = "__xadsdk__remote__final__";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final String f7684f = "bdxadsdk.jar";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected static final String f7685g = "__xadsdk__remote__final__builtin__.jar";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected static final String f7686h = "__xadsdk__remote__final__builtinversion__.jar";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected static final String f7687i = "__xadsdk__remote__final__downloaded__.jar";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected static final String f7688j = "__xadsdk__remote__final__running__.jar";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f7689k = "OK";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f7690l = "ERROR";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f7691m = "APK_INFO";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f7692n = "CODE";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f7693o = "success";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected static volatile bp f7694p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected static volatile bp f7695q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected static volatile Class f7696r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected static String f7697s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected static final Handler f7698t = new cc(Looper.getMainLooper());

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f7699x = "baidu_sdk_remote";
    private boolean A;
    private CopyOnWriteArrayList<c> B;
    private c C;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected Handler f7700u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    protected final Handler f7701v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private bz f7702w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Context f7703y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private bv f7704z;

    public static final class a extends Exception {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final long f7705a = 2978543166232984104L;

        public a(String str) {
            bv.a().c(str);
        }
    }

    protected static final class b extends Exception {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final long f7706a = -7838296421993681751L;

        public b(String str) {
            bv.a().c(str);
        }
    }

    public interface c {
        void a(boolean z10);
    }

    public cb(Activity activity) {
        this(activity.getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        try {
            File[] fileArrListFiles = this.f7703y.getFilesDir().listFiles();
            for (int i10 = 0; fileArrListFiles != null && i10 < fileArrListFiles.length; i10++) {
                if (fileArrListFiles[i10].getAbsolutePath().contains(f7683e) && fileArrListFiles[i10].getAbsolutePath().endsWith("dex")) {
                    fileArrListFiles[i10].delete();
                }
            }
        } catch (Exception e10) {
            bv.a().c(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SharedPreferences m() {
        return this.f7703y.getSharedPreferences(z.aN, 0);
    }

    private boolean n() {
        String string = m().getString(f7682d, null);
        return string == null || !string.equals(a());
    }

    private boolean o() {
        try {
            return bt.a(c()) || bt.a(f());
        } catch (Exception e10) {
            this.f7704z.a(e10);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p() {
        bu buVar = new bu(f(), this.f7703y);
        if (!bt.a(buVar)) {
            return false;
        }
        try {
            if (n()) {
                throw new a("XAdApkLoader upgraded, drop stale downloaded file, use built-in instead");
            }
            synchronized (this) {
                this.f7704z.a(f7679a, "loadDownloadedOrBuiltInApk len=" + buVar.length() + ", path=" + buVar.getAbsolutePath());
                b(buVar);
                double d10 = (double) m().getFloat(f7681c, -1.0f);
                this.f7704z.a(f7679a, "downloadedApkFile.getApkVersion(): " + buVar.c() + ", badApkVersion: " + d10);
                if (buVar.c() == d10) {
                    throw new a("downloaded file marked bad, drop it and use built-in");
                }
                this.f7704z.a(f7679a, "loaded: " + buVar.getPath());
            }
            return true;
        } catch (a e10) {
            this.f7704z.a(f7679a, "load downloaded apk failed: " + e10.toString() + ", fallback to built-in");
            if (buVar.exists()) {
                buVar.delete();
            }
            k();
            return false;
        }
    }

    public final String a() {
        return "9.450";
    }

    public int h() {
        return this.f7703y.getApplicationContext().getSharedPreferences("baidu_cloudControlConfig", 0).getInt("baidu_cloudConfig_pktype", 1);
    }

    public IXAdContainerFactory i() {
        return a(f7694p);
    }

    public IXAdContainerFactory j() {
        return a(f7695q);
    }

    protected void k() {
        if (f7694p != null) {
            f7694p.b();
            f7694p = null;
        }
    }

    public cb(Context context) {
        this.f7704z = bv.a();
        this.A = false;
        this.f7700u = f7698t;
        this.B = new CopyOnWriteArrayList<>();
        this.f7701v = new cd(this, Looper.getMainLooper());
        this.f7703y = context;
        c(context);
        if (f7680b == null) {
            f7680b = cp.a(context);
            cp.a(context).a(new ce(this));
        }
        if (Thread.getDefaultUncaughtExceptionHandler() instanceof cp) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(f7680b);
    }

    protected static String f() {
        if (TextUtils.isEmpty(f7697s)) {
            return "";
        }
        return f7697s + f7687i;
    }

    protected void e() throws a, b {
        this.f7704z.a(f7679a, "start load assets file");
        d(this.f7703y);
        String strC = c();
        bu buVar = new bu(strC, this.f7703y);
        if (!bt.a(buVar)) {
            throw new b("loadBuiltInApk failed: " + strC);
        }
        this.f7704z.a(f7679a, "assets file can read ,will use it ");
        if (c(buVar)) {
            b(true);
        }
    }

    protected void g() throws a {
        if (h() != 2 ? p() : false) {
            this.f7704z.a(f7679a, "load downloaded file success,use it");
            b(true);
            return;
        }
        this.f7704z.a(f7679a, "no downloaded file yet, use built-in apk file");
        try {
            e();
        } catch (b e10) {
            this.f7704z.a(f7679a, "loadBuiltInApk failed: " + e10.toString());
            throw new a("load built-in apk failed" + e10.toString());
        }
    }

    private static void c(Context context) {
        if (TextUtils.isEmpty(f7697s)) {
            f7697s = context.getDir(f7699x, 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
        }
    }

    protected static String d() {
        if (TextUtils.isEmpty(f7697s)) {
            return "";
        }
        return f7697s + f7686h;
    }

    protected void b() {
        new File(f()).delete();
    }

    private static synchronized void d(Context context) throws b {
        try {
            String strC = c();
            double dB = b(strC);
            bv.a().a(f7679a, "copy assets,compare version=" + Double.valueOf("9.450") + "remote=" + dB);
            if (Double.valueOf("9.450").doubleValue() != dB) {
                bu buVar = new bu(strC, context);
                if (buVar.exists()) {
                    buVar.delete();
                }
                bt.a(context, f7684f, strC);
            }
        } catch (Exception e10) {
            throw new b("loadBuiltInApk failed: " + e10.toString());
        }
    }

    private void b(bu buVar) throws Throwable {
        this.f7704z.a(f7679a, "len=" + buVar.length() + ", path=" + buVar.getAbsolutePath());
        if (f7694p == null) {
            String strA = a(this.f7703y);
            bu buVar2 = new bu(strA, this.f7703y);
            if (buVar2.exists()) {
                buVar2.delete();
            }
            try {
                bt.a(new FileInputStream(buVar), strA);
            } catch (Exception e10) {
                this.f7704z.c(e10);
            }
            f7694p = new bp(buVar2.b(), this.f7703y);
            try {
                IXAdContainerFactory iXAdContainerFactoryA = f7694p.a();
                this.f7704z.a(f7679a, "preloaded apk.version=" + iXAdContainerFactoryA.getRemoteVersion());
                return;
            } catch (a e11) {
                this.f7704z.a(f7679a, "preload local apk " + buVar.getAbsolutePath() + " failed, msg:" + e11.getMessage() + ", v=" + f7694p.f7613b);
                a(e11.getMessage());
                throw e11;
            }
        }
        this.f7704z.a(f7679a, "mApkBuilder already initialized, version: " + f7694p.f7613b);
    }

    protected static String c() {
        if (TextUtils.isEmpty(f7697s)) {
            return "";
        }
        return f7697s + f7685g;
    }

    private boolean c(bu buVar) throws a {
        synchronized (this) {
            b(buVar);
            this.f7704z.a(f7679a, "loaded: " + buVar.getPath());
        }
        return true;
    }

    @TargetApi(9)
    protected void a(String str) {
        if (f7694p != null) {
            SharedPreferences.Editor editorEdit = m().edit();
            editorEdit.putFloat(f7681c, (float) f7694p.f7613b);
            editorEdit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10) {
        Message messageObtainMessage = this.f7700u.obtainMessage();
        Bundle bundle = new Bundle();
        bundle.putBoolean("success", z10);
        messageObtainMessage.setData(bundle);
        messageObtainMessage.what = 0;
        this.f7700u.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z10) {
        double d10;
        if (z10) {
            try {
                d10 = f7694p.f7613b;
            } catch (Exception unused) {
                return;
            }
        } else {
            d10 = 0.0d;
        }
        ao.a(d10, new ch(this, d10), new ci(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(bu buVar) throws a {
        Class<?> clsB = buVar.b();
        synchronized (this) {
            f7695q = new bp(clsB, this.f7703y);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(boolean z10, String str) {
        try {
            cp.a(this.f7703y).c();
            CopyOnWriteArrayList<c> copyOnWriteArrayList = this.B;
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                for (int i10 = 0; i10 < this.B.size(); i10++) {
                    c cVar = this.B.get(i10);
                    if (cVar != null) {
                        cVar.a(z10);
                    }
                }
            }
            CopyOnWriteArrayList<c> copyOnWriteArrayList2 = this.B;
            if (copyOnWriteArrayList2 != null) {
                copyOnWriteArrayList2.clear();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z10) {
        if (!z10 && !o()) {
            this.A = true;
        } else {
            a(z10, z10 ? "apk Successfully Loaded" : "apk Load Failed");
        }
        if (this.A) {
            be.a().a((j) new cf(this, z10));
        } else {
            be.a().a(new cg(this, z10), 5L, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(c cVar, Handler handler) throws a, b {
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.B;
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.contains(cVar)) {
            this.B.add(cVar);
        }
        this.f7700u = handler;
        if (f7694p == null) {
            g();
        } else {
            b(true);
        }
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(f7697s)) {
            f7697s = context.getDir(f7699x, 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
        }
        if (TextUtils.isEmpty(f7697s)) {
            return "";
        }
        return f7697s + f7688j;
    }

    public static double b(Context context) throws Throwable {
        try {
            c(context);
            double dB = b(f());
            String strD = d();
            if (Double.valueOf("9.450").doubleValue() > b(strD)) {
                bu buVar = new bu(strD, context);
                if (buVar.exists()) {
                    buVar.delete();
                }
                bt.a(context, f7684f, strD);
            }
            return Math.max(dB, b(d()));
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(bz bzVar) {
        if (bzVar.a().booleanValue()) {
            bx bxVarA = bx.a(this.f7703y, bzVar, f7697s, this.f7701v);
            if (!bxVarA.isAlive()) {
                this.f7704z.a(f7679a, "XApkDownloadThread starting ...");
                bxVarA.start();
            } else {
                this.f7704z.a(f7679a, "XApkDownloadThread already started");
                bxVarA.a(bzVar.c());
            }
        }
    }

    @TargetApi(9)
    public void a(c cVar, Handler handler) {
        be.a().a((j) new cj(this, cVar, handler));
    }

    public void a(c cVar) {
        a(cVar, f7698t);
    }

    private IXAdContainerFactory a(bp bpVar) {
        if (bpVar == null) {
            return null;
        }
        try {
            return bpVar.a();
        } catch (Exception unused) {
            return null;
        }
    }

    public static double b(String str) throws Throwable {
        JarFile jarFile = null;
        try {
            try {
                if (co.f7751d.booleanValue()) {
                    File file = new File(str);
                    if (bt.a(file)) {
                        JarFile jarFile2 = new JarFile(file);
                        try {
                            double d10 = Double.parseDouble(jarFile2.getManifest().getMainAttributes().getValue("Implementation-Version"));
                            if (d10 > 0.0d) {
                                try {
                                    jarFile2.close();
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                                return d10;
                            }
                            jarFile = jarFile2;
                        } catch (Exception unused) {
                            jarFile = jarFile2;
                            if (jarFile != null) {
                                jarFile.close();
                            }
                            return 0.0d;
                        } catch (Throwable th) {
                            th = th;
                            jarFile = jarFile2;
                            if (jarFile != null) {
                                try {
                                    jarFile.close();
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    if (jarFile != null) {
                        jarFile.close();
                    }
                    return 0.0d;
                }
                return Double.valueOf("9.450").doubleValue();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
