package cn.fly.commons;

import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.network.NetCommunicator;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.FileLocker;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.ResHelper;
import cn.fly.tools.xcrash.XCrash;
import com.haima.hmcp.ConstantsInternal;
import com.windmill.sdk.WMConstants;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static long f1104c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicBoolean f1106e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicBoolean f1107f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static AtomicBoolean f1108g = new AtomicBoolean(false);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile HashMap<String, Object> f1109h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static ConcurrentHashMap<String, Object> f1110i = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ConcurrentHashMap<String, Object> f1111j = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static CountDownLatch f1112k = new CountDownLatch(1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static CountDownLatch f1113l = new CountDownLatch(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f1102a = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static volatile boolean f1114m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final AtomicBoolean f1115n = new AtomicBoolean(false);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static volatile boolean f1116o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static AtomicInteger f1117p = new AtomicInteger(2);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static volatile int f1118q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static AtomicBoolean f1119r = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f1103b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static AtomicBoolean f1105d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static ConcurrentHashMap<b, Boolean> f1120s = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static volatile boolean f1121t = false;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static volatile AtomicBoolean f1135a = new AtomicBoolean(false);

        private a() {
        }

        private static void c() {
            new cn.fly.tools.utils.j("PY-CB") { // from class: cn.fly.commons.c.a.1
                @Override // cn.fly.tools.utils.j
                protected void a() throws Throwable {
                    FlyLog.getInstance().d("b enter:" + Process.myPid() + ", lbms: " + c.f1114m, new Object[0]);
                    if (!c.f1114m) {
                        FlyLog.getInstance().d("b lk st: " + Process.myPid(), new Object[0]);
                        v.a(v.a(v.f1432f), new u() { // from class: cn.fly.commons.c.a.1.1
                            @Override // cn.fly.commons.u
                            public boolean a(FileLocker fileLocker) {
                                boolean unused = c.f1114m = true;
                                FlyLog.getInstance().d("b lk: " + Process.myPid() + ", proc st", new Object[0]);
                                a.d();
                                c.t();
                                FlyLog.getInstance().d("b lk: " + Process.myPid() + ", proc ed", new Object[0]);
                                return true;
                            }
                        });
                        return;
                    }
                    FlyLog.getInstance().d("b lked already: " + Process.myPid(), new Object[0]);
                    a.d();
                    c.t();
                }
            }.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void d() {
            w.a().b();
            cn.fly.tools.xcrash.c.c();
            if (c.c()) {
                FlyLog.getInstance().d("b db st", new Object[0]);
                f.a((FlyProduct) null);
                cn.fly.commons.a.d.a().b();
                new cn.fly.commons.b.a(FlySDK.getContext()).a();
            }
        }

        public void a() {
            if (((Integer) c.a(com.kuaishou.weapon.p0.t.f74897v, 1)).intValue() != 1) {
                j.a().b();
            } else if (f1135a.compareAndSet(false, true)) {
                j.a().c();
            }
            if (!c.f1116o) {
                c.A();
            }
            CountDownLatch countDownLatchD = cn.fly.tools.b.d.a(FlySDK.getContext()).d();
            if (countDownLatchD == null) {
                countDownLatchD = cn.fly.tools.b.d.a(FlySDK.getContext()).a();
            }
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                FlyLog.getInstance().d("ge dhs_w cdl: " + countDownLatchD, new Object[0]);
                countDownLatchD.await(3500L, TimeUnit.MILLISECONDS);
                FlyLog.getInstance().d("ge dhs_w end, dur: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
            c();
        }
    }

    public static abstract class b {
        public void a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void A() {
        if (aa.h() && f1115n.compareAndSet(false, true)) {
            try {
                cn.fly.mgs.impl.b.a();
            } catch (Throwable unused) {
            }
            try {
                cn.fly.tcp.d.a();
            } catch (Throwable unused2) {
            }
        }
    }

    private static void B() {
        if (f1119r.compareAndSet(false, true)) {
            try {
                int iIntValue = ((Integer) a("xerr", 1)).intValue();
                FlyLog.getInstance().d("[NCRASH] meta " + x.f1483k + " nsw " + iIntValue, new Object[0]);
                if (x.f1483k && iIntValue == 1) {
                    String str = FlySDK.getContext().getFilesDir() + x.b("001k") + "fvv/fly_tombstones";
                    ResHelper.checkAndCreateDir(str);
                    String strD = cn.fly.tools.b.c.a(FlySDK.getContext()).d().D();
                    if (TextUtils.isEmpty(strD) || !strD.contains("arm64-v8a")) {
                        return;
                    }
                    cn.fly.tools.xcrash.c.b(str);
                    int iInit = XCrash.init(FlySDK.getContext(), new XCrash.a().a(FlySDK.SDK_VERSION_NAME).a(true).d(10).h(4).b(true).i(1).f(1).e(1).g(5).b(str).b(1).c(128).a(1000));
                    FlyLog.getInstance().d("[ncrash] init " + iInit, new Object[0]);
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d("[NCRASH] init error " + th, new Object[0]);
            }
        }
    }

    public static boolean e() {
        return d();
    }

    public static ConcurrentHashMap<String, Object> f() {
        return f1110i;
    }

    public static ConcurrentHashMap<String, Object> g() {
        return f1111j;
    }

    public static ArrayList<String> h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(x.b("0049dkdkddek"));
        arrayList.add(x.b("005Xeidkdkddek"));
        arrayList.add(x.b("005fe:cc,ef"));
        arrayList.add(x.b("009NdeciWe'cdcf$edb,db"));
        arrayList.add(x.b("010RcgcgcgCb!cfcidccj(dd"));
        return (ArrayList) a(x.b("004LefchehNb"), arrayList);
    }

    public static void i() {
        if (b()) {
            f1121t = true;
            b(false);
        }
    }

    public static void j() {
        f1116o = true;
    }

    private static void s() {
        if (f1118q == -1) {
            HashMap mapFromJson = HashonHelper.fromJson(ae.b().d());
            if (d((HashMap<String, Object>) mapFromJson)) {
                ae.b().f();
                mapFromJson = null;
            }
            if (mapFromJson == null || mapFromJson.isEmpty()) {
                f1118q = 1;
                return;
            }
            f1118q = 0;
            if (b((HashMap<String, Object>) mapFromJson)) {
                a((HashMap<String, Object>) mapFromJson, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void t() {
        FlyLog.getInstance().d("b ob st", new Object[0]);
        if (!b() || !c()) {
            if (f1121t || aa.b()) {
                x();
            }
            w();
            return;
        }
        final String str = (String) a(x.b("003LdeSdb"), (Object) null);
        if (TextUtils.isEmpty(str)) {
            if (f1121t || aa.b()) {
                x();
            }
            w();
        } else if (f1121t || f1106e.compareAndSet(false, true)) {
            new cn.fly.tools.utils.j("DY") { // from class: cn.fly.commons.c.3
                @Override // cn.fly.tools.utils.j
                protected void a() {
                    v.a(v.a(v.f1430d), false, new u() { // from class: cn.fly.commons.c.3.1
                        @Override // cn.fly.commons.u
                        public boolean a(FileLocker fileLocker) {
                            synchronized (c.f1110i) {
                                c.g(str);
                            }
                            return false;
                        }
                    });
                }
            }.start();
        }
        if (!b() || !c()) {
            y();
            u();
            return;
        }
        final String str2 = (String) a("sbr", (Object) null);
        if (TextUtils.isEmpty(str2)) {
            u();
            y();
        } else if (f1121t || f1107f.compareAndSet(false, true)) {
            new cn.fly.tools.utils.j("DS") { // from class: cn.fly.commons.c.4
                @Override // cn.fly.tools.utils.j
                protected void a() {
                    v.a(v.a(v.f1431e), false, new u() { // from class: cn.fly.commons.c.4.1
                        @Override // cn.fly.commons.u
                        public boolean a(FileLocker fileLocker) {
                            synchronized (c.f1111j) {
                                c.h(str2);
                            }
                            return false;
                        }
                    });
                }
            }.start();
        }
    }

    private static void u() {
        a(x.b("0030ehee2f"), x.b("007KckciehVf;eeciNb"));
    }

    private static void v() {
        new cn.fly.tools.utils.j("PY-NBNG") { // from class: cn.fly.commons.c.5
            @Override // cn.fly.tools.utils.j
            protected void a() throws Throwable {
                FlyLog.getInstance().d("b enter:" + Process.myPid() + ", lbms: " + c.f1114m, new Object[0]);
                if (c.f1114m) {
                    FlyLog.getInstance().d("b lked already: " + Process.myPid(), new Object[0]);
                    c.t();
                    return;
                }
                FlyLog.getInstance().d("b lk st: " + Process.myPid(), new Object[0]);
                v.a(v.a(v.f1432f), new u() { // from class: cn.fly.commons.c.5.1
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        boolean unused = c.f1114m = true;
                        FlyLog.getInstance().d("b lk: " + Process.myPid() + ", proc st", new Object[0]);
                        c.t();
                        FlyLog.getInstance().d("b lk: " + Process.myPid() + ", proc ed", new Object[0]);
                        return true;
                    }
                });
            }
        }.start();
    }

    private static void w() {
        a(x.b("003BehAbb"), x.b("009%gbcjee4kQckcece[bb"), x.b("0166gbcjeeRkbGcjceceTk[cbeeeh[k*cecbLb"), x.b("0052gbcfekJf[cc"), x.b("012)ckdgAh+gegggchjgdghhjeggc"));
    }

    private static void x() {
        Object obj = v.f1437k;
        synchronized (obj) {
            i.a().a(10);
            obj.notifyAll();
        }
    }

    private static void y() {
        Object obj = v.f1438l;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    private static void z() {
        cn.fly.tools.utils.g.a().a(x.b("004WcjMcVchcb"), (Integer) 1);
        cn.fly.tools.utils.g.a().a(x.b("003cff"), (Integer) 1);
        cn.fly.tools.utils.g.a().a(x.b("003fYcjUb"), (Integer) 1);
        cn.fly.tools.utils.g.a().a(x.b("002Mefch"), (Integer) 1);
        cn.fly.tools.utils.g.a().a(x.b("0023eeeh"), (Integer) 1);
    }

    public static <T> T c(String str, T t10) {
        return (T) a(f1109h, str, t10);
    }

    public static <T> T d(String str, T t10) {
        return (T) a((HashMap<String, Object>) HashonHelper.fromJson(ae.b().d()), str, t10);
    }

    private static boolean e(String str) {
        List list = (List) a(x.b("002bf"), (Object) null);
        return (list == null || list.size() == 0 || !list.contains(str)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static cn.fly.tools.utils.i f(final String str) {
        return new cn.fly.tools.utils.i() { // from class: cn.fly.commons.c.6
            @Override // cn.fly.tools.utils.i
            protected void a() {
                cn.fly.tools.c.a.f2024b.set(Boolean.TRUE);
                if (!TextUtils.isEmpty("M-")) {
                    Thread.currentThread().setName("M-" + str);
                }
                c.b(new cn.fly.tools.utils.d<HashMap<String, Object>>() { // from class: cn.fly.commons.c.6.1
                    @Override // cn.fly.tools.utils.d
                    public void a(HashMap<String, Object> map) {
                        try {
                            c.c(map);
                            if (map == null) {
                                cn.fly.commons.a.m.a().c(e0.a.f90863b, c.f(str));
                            }
                        } finally {
                            c.f1108g.set(false);
                        }
                    }
                });
                cn.fly.tools.c.a.f2024b.set(Boolean.FALSE);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(String str) {
        File file = null;
        Closeable closeable = null;
        Closeable closeable2 = null;
        try {
            i.a().a(0);
            String strB = C1293r.b(str);
            File file2 = new File(FlySDK.getContext().getFilesDir(), x.b("003Meh^bb"));
            try {
                if (!k.a().b()) {
                    i.a().a(18);
                    w();
                    return;
                }
                if (TextUtils.isEmpty(strB)) {
                    i.a().a(1);
                    return;
                }
                try {
                    if (!d()) {
                        x();
                        return;
                    }
                    i.a().a(2);
                    HashMap map = (HashMap) new NetCommunicator(1024, "9e87e8d4b8f52f2916d0fb4342aa6b54a81a05666d0bdb23cc5ebf3a07440bc3976adff1ce11c64ddcdbfc017920648217196d51e3165e780e58b5460c525ee9", "13bda4b87eb42ab9e64e6b4f3d17cf8005a4ae94af37bc9fd76ebd91a828f017c81bd63cbe2924e361e20003b9e5f47cdac1f5fba5fca05730a32c5c65869590287207e79a604a2aac429e55f0d35c211367bd226dd5e57df7810f036071854aa1061a0f34b418b9178895a531107c652a428cfa6ecfa65333580ae7e0edf0e1").requestSynchronized(q.e(), strB, false);
                    i.a().a(3);
                    String str2 = (String) map.get(x.b("002WdeQf"));
                    String str3 = (String) map.get(com.kuaishou.weapon.p0.t.f74888m);
                    Boolean bool = (Boolean) map.get(x.b("002cQeh"));
                    boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                    String str4 = (String) map.get(x.b("002c^dg"));
                    String str5 = (String) map.get("cn");
                    String str6 = (String) map.get("fn");
                    if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str4)) {
                        i.a().a(4);
                        ResHelper.deleteFileAndFolder(file2);
                    } else {
                        synchronized (v.f1437k) {
                            f1110i.clear();
                            f1110i.put("h", str3);
                            f1110i.put(com.kuaishou.weapon.p0.t.f74876a, str4);
                            f1110i.put("cn", str5);
                            f1110i.put("fn", str6);
                            String strCheckHttpRequestUrl = NetCommunicator.checkHttpRequestUrl(str2);
                            if (zBooleanValue) {
                                i.a().a(5);
                                File file3 = new File(file2, x.b("008bUcj^d!deckeh8bb"));
                                if (!file3.exists() || !str3.equals(Data.MD5(file3))) {
                                    i.a().a(6);
                                    ResHelper.deleteFileAndFolder(file2);
                                    file2.mkdirs();
                                    try {
                                        FileOutputStream fileOutputStream = new FileOutputStream(file3);
                                        try {
                                            new NetworkHelper().download(strCheckHttpRequestUrl, fileOutputStream, null);
                                            i.a().a(7);
                                            C1293r.a(fileOutputStream);
                                        } catch (Throwable th) {
                                            th = th;
                                            closeable = fileOutputStream;
                                            C1293r.a(closeable);
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                }
                            } else {
                                i.a().a(8);
                                ResHelper.deleteFileAndFolder(file2);
                                final byte[][] bArr = new byte[1][];
                                final int[] iArr = new int[1];
                                try {
                                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream() { // from class: cn.fly.commons.c.8
                                        @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                                        public void close() throws IOException {
                                            super.close();
                                            bArr[0] = ((ByteArrayOutputStream) this).buf;
                                            iArr[0] = ((ByteArrayOutputStream) this).count;
                                        }
                                    };
                                    try {
                                        new NetworkHelper().download(strCheckHttpRequestUrl, byteArrayOutputStream, null);
                                        i.a().a(9);
                                        C1293r.a(byteArrayOutputStream);
                                        f1110i.put(com.kuaishou.weapon.p0.t.f74887l, bArr[0]);
                                        f1110i.put("s", Integer.valueOf(iArr[0]));
                                    } catch (Throwable th3) {
                                        th = th3;
                                        closeable2 = byteArrayOutputStream;
                                        C1293r.a(closeable2);
                                        throw th;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            }
                        }
                    }
                    x();
                } catch (Throwable th5) {
                    x();
                    throw th5;
                }
            } catch (Throwable th6) {
                th = th6;
                file = file2;
                ResHelper.deleteFileAndFolder(file);
                i.a().a(2, th);
            }
        } catch (Throwable th7) {
            th = th7;
        }
    }

    public static <T> T b(String str, T t10) {
        if (TextUtils.isEmpty(str)) {
            return t10;
        }
        if (f1109h != null) {
            return (T) c(str, t10);
        }
        return (T) d(str, t10);
    }

    public static boolean c() {
        return ((Integer) a(x.b("004b+cj4dd"), 0)).intValue() == 1;
    }

    public static boolean d() {
        return (((Integer) a(x.b("002dVci"), 0)).intValue() == 1) || aa.a();
    }

    private static CountDownLatch e(HashMap<String, Object> map) {
        CountDownLatch countDownLatchA = cn.fly.tools.b.d.a(FlySDK.getContext()).a((String) ResHelper.forceCast(map.get(x.b("002=eheh")), null));
        try {
            HashMap<String, Object> map2 = (HashMap) map.get(x.b("002e.ce"));
            String str = (String) ResHelper.forceCast((String) map.get(x.b("002b>cb")), x.b("0068gdgdgegegege"));
            HashMap<String, Object> map3 = (HashMap) map.get(x.b("002Pdi*i"));
            HashMap map4 = (HashMap) map.get(x.b("004Mdi(ib2cb"));
            Integer num = (Integer) map.get(x.b("004Bdi'eFcj@h"));
            if ((map2 != null && map2.size() > 0 && !TextUtils.isEmpty(str)) || (map3 != null && map3.size() > 0 && map4 != null && map4.size() > 0)) {
                a(map, map2, map3, map4, num, countDownLatchA);
                k.a().a(map, map2, map3);
            }
            map.remove(x.b("002;di@i"));
            map.remove(x.b("002eYce"));
            map.put(x.b("010Jcb<e<ccchYbe!ebchce!e"), Long.valueOf(System.currentTimeMillis()));
            ae.b().c(HashonHelper.fromHashMap(map));
            z();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return countDownLatchA;
    }

    public static void a(final CountDownLatch countDownLatch) {
        s();
        B();
        new cn.fly.tools.utils.j("PY-C") { // from class: cn.fly.commons.c.1
            @Override // cn.fly.tools.utils.j
            protected void a() {
                cn.fly.tools.c.a.f2024b.set(Boolean.TRUE);
                FlyLog.getInstance().d("g lk st: " + Process.myPid(), new Object[0]);
                boolean zA = v.a(v.a(v.f1433g), new u() { // from class: cn.fly.commons.c.1.1
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        FlyLog.getInstance().d("g lk pd: " + Process.myPid() + ", proc st", new Object[0]);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        ae.u();
                        c.c(countDownLatch);
                        FlyLog.getInstance().d("g lk pd: " + Process.myPid() + ", proc ed, dur: " + (System.currentTimeMillis() - jCurrentTimeMillis) + ", release: y", new Object[0]);
                        return false;
                    }
                });
                FlyLog.getInstance().d("g lk res: " + zA + Process.myPid(), new Object[0]);
                cn.fly.tools.c.a.f2024b.set(Boolean.FALSE);
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(CountDownLatch countDownLatch) {
        if (b()) {
            a(new b() { // from class: cn.fly.commons.c.2
                @Override // cn.fly.commons.c.b
                public void a() {
                    new a().a();
                }
            }, true);
            if (f1118q == 1) {
                FlyLog.getInstance().d("g ch: n", new Object[0]);
                b(false);
                return;
            }
            FlyLog.getInstance().d("g ch: y", new Object[0]);
            boolean z10 = System.currentTimeMillis() - ae.b().b(ae.f1073m, 0L) < 2000;
            FlyLog.getInstance().d("g ch fre: " + z10, new Object[0]);
            if (z10) {
                if (countDownLatch != null) {
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        FlyLog.getInstance().d("g dhs_w cdl: " + countDownLatch, new Object[0]);
                        countDownLatch.await(3500L, TimeUnit.MILLISECONDS);
                        FlyLog.getInstance().d("g dhs_w end, dur: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                    } catch (Throwable th) {
                        FlyLog.getInstance().d(th);
                    }
                }
                v();
                return;
            }
            b(true);
        }
    }

    private static boolean d(HashMap<String, Object> map) {
        if (map != null) {
            long jLongValue = ((Long) ResHelper.forceCast(map.get(x.b("0103cb!eGccchNbeGebchceEe")), 0L)).longValue();
            long jIntValue = ((long) ((Integer) ResHelper.forceCast(map.get(x.b("004^cidi@bFde")), 86400)).intValue()) * 1000;
            if (jLongValue != 0) {
                if (jIntValue > 0) {
                    return System.currentTimeMillis() - jLongValue >= jIntValue;
                }
                if (jIntValue == 0) {
                    return System.currentTimeMillis() - jLongValue >= 86400000;
                }
                return true ^ C1293r.a(System.currentTimeMillis(), jLongValue);
            }
        }
        return false;
    }

    private static boolean b(HashMap<String, Object> map) {
        return map == null || ((Integer) ResHelper.forceCast(map.get(x.b("002hHcj")), 0)).intValue() == 0;
    }

    public static boolean b() {
        return ((Integer) a(x.b("002h4cj"), 0)).intValue() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h(String str) {
        Throwable th;
        File file;
        try {
            String strB = C1293r.b(str);
            file = new File(FlySDK.getContext().getFilesDir(), x.b("003DeheeEf"));
            try {
                File file2 = new File(FlySDK.getContext().getFilesDir(), x.b("007Mckcieh$f.eeci;b"));
                if (!k.a().b()) {
                    ResHelper.deleteFileAndFolder(file);
                    ResHelper.deleteFileAndFolder(file2);
                } else if (TextUtils.isEmpty(strB)) {
                    ResHelper.deleteFileAndFolder(file);
                } else {
                    if (!d()) {
                        y();
                        return;
                    }
                    HashMap<String, Object> mapE = q.e();
                    mapE.put(x.b("007*cc_eEciehchcjYd"), String.valueOf(cn.fly.commons.cc.a.a()));
                    ArrayList arrayList = (ArrayList) ((HashMap) new NetCommunicator(1024, "9e87e8d4b8f52f2916d0fb4342aa6b54a81a05666d0bdb23cc5ebf3a07440bc3976adff1ce11c64ddcdbfc017920648217196d51e3165e780e58b5460c525ee9", "13bda4b87eb42ab9e64e6b4f3d17cf8005a4ae94af37bc9fd76ebd91a828f017c81bd63cbe2924e361e20003b9e5f47cdac1f5fba5fca05730a32c5c65869590287207e79a604a2aac429e55f0d35c211367bd226dd5e57df7810f036071854aa1061a0f34b418b9178895a531107c652a428cfa6ecfa65333580ae7e0edf0e1").requestWithoutEncode(false, NetCommunicator.getCommonDefaultHeaders(), mapE, strB, true)).get(x.b("004fDchehEh"));
                    if (arrayList != null && !arrayList.isEmpty()) {
                        synchronized (v.f1438l) {
                            f1111j.clear();
                            f1111j.put(x.b("002fh"), arrayList);
                        }
                    }
                    ResHelper.deleteFileAndFolder(file);
                    ResHelper.deleteFileAndFolder(file2);
                    y();
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    h.a().a(9, -1, th, WMConstants.TIMER_STAGE_NONE);
                    ResHelper.deleteFileAndFolder(file);
                } finally {
                    y();
                }
            }
        } catch (Throwable th3) {
            th = th3;
            file = null;
        }
    }

    public static boolean a() {
        return f1105d.get();
    }

    public static <T> T a(String str, T t10) {
        if (TextUtils.isEmpty(str) || f1109h == null || !CSCenter.getInstance().isConfigEnable()) {
            return t10;
        }
        if (d(f1109h)) {
            f1109h.clear();
            f1109h = new HashMap<>();
            b(true);
        }
        return (T) ResHelper.forceCast(f1109h.get(str), t10);
    }

    private static void b(boolean z10) {
        if (f1108g.compareAndSet(false, true)) {
            String strB = x.b("005-dcfbgjijeh");
            Object[] objArr = new Object[1];
            objArr[0] = z10 ? "A" : "S";
            String str = String.format(strB, objArr);
            if (z10) {
                ac.f1042a.execute(f(str));
            } else {
                f(str).run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final cn.fly.tools.utils.d<HashMap<String, Object>> dVar) {
        cn.fly.tools.c.a.f2024b.set(Boolean.TRUE);
        DH.requester(FlySDK.getContext()).getDetailNetworkTypeForStatic().getODH().request(new DH.DHResponder() { // from class: cn.fly.commons.c.7
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                cn.fly.tools.c.a.f2024b.set(Boolean.TRUE);
                try {
                    HashMap mapB = c.b(dHResponse);
                    while (c.f1117p.get() > 0 && (mapB == null || mapB.isEmpty())) {
                        try {
                            Thread.sleep(30000L);
                        } catch (Throwable th) {
                            FlyLog.getInstance().d(th);
                        }
                        mapB = c.b(dHResponse);
                        if (mapB == null || mapB.isEmpty()) {
                            c.f1117p.getAndDecrement();
                        }
                    }
                    dVar.a(mapB);
                } catch (Throwable th2) {
                    FlyLog.getInstance().d(th2);
                    dVar.a(null);
                }
            }
        });
    }

    private static <T> T a(HashMap<String, Object> map, String str, T t10) {
        return (map == null || TextUtils.isEmpty(str) || d(map) || !b(map)) ? t10 : (T) ResHelper.forceCast(map.get(str), t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HashMap<String, Object> b(DH.DHResponse dHResponse) {
        try {
            String packageName = DH.SyncMtd.getPackageName();
            String strA = q.a();
            HashMap<String, String> map = new HashMap<>();
            map.put(x.b("003(dg-eMdb"), strA);
            map.put(x.b("013XdjehAe,cigjddcb$edhRch6hTdb"), ad.h());
            map.put(x.b("004Ncecjchcb"), dHResponse.getODH());
            HashMap<String, Object> mapA = q.a(dHResponse.getDetailNetworkTypeForStatic());
            mapA.put(x.b("002hXeh"), String.valueOf(System.currentTimeMillis()));
            int i10 = 1;
            mapA.put("nbs", 1);
            int privacyGrantedStatus = FlySDK.getPrivacyGrantedStatus();
            if (privacyGrantedStatus != -1) {
                mapA.put(x.b("009Mchehecdici4eeSfk[i"), String.valueOf(privacyGrantedStatus == 1));
            }
            String strB = x.b("0020ccgg");
            if (!FlySDK.checkV6()) {
                i10 = -1;
            }
            mapA.put(strB, String.valueOf(i10));
            mapA.put("ait", Long.valueOf(z.a().d()));
            if (ad.d() == 2) {
                FlyLog.getInstance().d("g*f chk PU5H: Nw, psrd", new Object[0]);
                String strT = ae.b().t();
                if (!TextUtils.isEmpty(strT)) {
                    mapA.put("psid", strT);
                }
            } else {
                FlyLog.getInstance().d("g*f chk PU5H: No/Od, psid", new Object[0]);
                String strB2 = f.b();
                if (!TextUtils.isEmpty(strB2)) {
                    mapA.put("psid", strB2 + packageName);
                }
            }
            String strHttpGet = new NetworkHelper().httpGet(j.a().a("gcfg") + "/v6/gcf", mapA, map);
            HashMap mapFromJson = HashonHelper.fromJson(strHttpGet);
            if (mapFromJson.isEmpty()) {
                return null;
            }
            if (ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(String.valueOf(mapFromJson.get(x.b("006?eh;hch=cfeh"))))) {
                f1103b = ((Long) mapFromJson.get(x.b("009h:chce7eWehQhc5ce%i"))).longValue();
                f1104c = SystemClock.elapsedRealtime();
                byte[] bArrRawMD5 = Data.rawMD5((strA + ":" + packageName + ":" + f1103b).getBytes("utf-8"));
                String str = (String) ResHelper.forceCast(mapFromJson.get(x.b("002%ehEb")));
                if (str != null) {
                    String str2 = new String(Data.AES128Decode(bArrRawMD5, Base64.decode(str, 2)), "utf-8");
                    FlyLog.getInstance().d("sw: " + str2, new Object[0]);
                    HashMap<String, Object> mapFromJson2 = HashonHelper.fromJson(str2);
                    if (!mapFromJson2.isEmpty()) {
                        mapFromJson2.put(x.b("010 cb)e,ccch_be+ebchce$e"), Long.valueOf(System.currentTimeMillis()));
                        ae.b().d(HashonHelper.fromHashMap(mapFromJson2));
                        return mapFromJson2;
                    }
                    throw new Throwable("RS is illegal: " + strHttpGet);
                }
                throw new Throwable("RS is illegal: " + strHttpGet);
            }
            throw new Throwable("RS is illegal: " + strHttpGet);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    public static <T> T a(String str, T t10, long j10) {
        try {
            if ((f1109h == null || f1109h.isEmpty()) && f1112k.getCount() > 0) {
                if (j10 > 0) {
                    f1112k.await(j10, TimeUnit.MILLISECONDS);
                } else {
                    f1112k.await();
                }
            }
            if (!e(str) && f1113l.getCount() > 0) {
                if (j10 > 0) {
                    f1113l.await(j10, TimeUnit.MILLISECONDS);
                } else {
                    f1113l.await();
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return (T) a(str, t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(HashMap<String, Object> map) {
        if (map == null) {
            HashMap<String, Object> mapFromJson = HashonHelper.fromJson(ae.b().e());
            if (!d(mapFromJson)) {
                map = mapFromJson;
            }
            ae.b().f();
        }
        if (map != null && !map.isEmpty()) {
            e(map);
            FlyLog.getInstance().d("sw fin: " + HashonHelper.fromHashMap(map), new Object[0]);
        }
        a(map, true);
        q.f();
        cn.fly.tools.c.a.f2024b.set(Boolean.FALSE);
    }

    public static boolean a(String str) {
        return !TextUtils.isEmpty(str) && b() && c() && ((Integer) a(str, 0)).intValue() != 0;
    }

    private static void a(HashMap<String, Object> map, boolean z10) {
        f1109h = new HashMap<>();
        if (map != null) {
            f1109h.putAll(map);
            cn.fly.tools.b.a();
            if (z10) {
                f1105d.set(true);
                ConcurrentHashMap<b, Boolean> concurrentHashMap = f1120s;
                if (concurrentHashMap != null && !concurrentHashMap.isEmpty()) {
                    for (Map.Entry<b, Boolean> entry : f1120s.entrySet()) {
                        a(entry.getKey(), entry.getValue().booleanValue());
                    }
                }
                FlyLog.getInstance().d("olCfLd done", new Object[0]);
            }
        }
        try {
            if (z10) {
                f1112k.countDown();
                f1113l.countDown();
            } else {
                f1112k.countDown();
            }
        } catch (Throwable unused) {
        }
    }

    private static void a(HashMap<String, Object> map, HashMap<String, Object> map2, HashMap<String, Object> map3, HashMap<String, Object> map4, Integer num, CountDownLatch countDownLatch) {
        if (num != null && num.intValue() == 2) {
            cn.fly.tools.c.a.f2024b.set(Boolean.FALSE);
            try {
                countDownLatch.await(3500L, TimeUnit.MILLISECONDS);
                FlyLog.getInstance().d("dhs wt geot.2 ovr", new Object[0]);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        boolean zA = k.a().a(true);
        k.a().c().put(x.b("006e'cecgci=e@eh"), Boolean.valueOf(zA));
        if (map2 != null && map2.size() > 0 && !zA) {
            FlyLog.getInstance().d("dhs em dg", new Object[0]);
            map.putAll(map2);
        } else {
            if (map3 == null || map3.size() <= 0 || k.a().a(map4)) {
                return;
            }
            FlyLog.getInstance().d("dhs gpe dg", new Object[0]);
            map.putAll(map3);
        }
    }

    private static void a(String... strArr) {
        File filesDir = FlySDK.getContext().getFilesDir();
        for (String str : strArr) {
            try {
                C1293r.a(new File(filesDir, str));
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0017 A[Catch: all -> 0x0026, TryCatch #0 {, blocks: (B:7:0x0008, B:9:0x000b, B:12:0x0011, B:14:0x0017, B:16:0x0024, B:15:0x001b), top: B:22:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x001b A[Catch: all -> 0x0026, TryCatch #0 {, blocks: (B:7:0x0008, B:9:0x000b, B:12:0x0011, B:14:0x0017, B:16:0x0024, B:15:0x001b), top: B:22:0x0008 }] */
    public static void a(b bVar, boolean... zArr) {
        if (bVar != null) {
            synchronized (f1120s) {
                boolean z10 = false;
                if (zArr != null) {
                    if (zArr.length > 0 && zArr[0]) {
                        z10 = true;
                    }
                    if (a()) {
                        a(bVar, z10);
                    } else {
                        f1120s.put(bVar, Boolean.valueOf(z10));
                    }
                } else if (a()) {
                    a(bVar, z10);
                } else {
                    f1120s.put(bVar, Boolean.valueOf(z10));
                }
                throw th;
            }
        }
    }

    private static void a(final b bVar, boolean z10) {
        if (z10) {
            try {
                bVar.a();
                return;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
                return;
            }
        }
        ac.f1042a.execute(new cn.fly.tools.utils.i() { // from class: cn.fly.commons.c.9
            @Override // cn.fly.tools.utils.i
            protected void a() throws Throwable {
                bVar.a();
            }
        });
    }

    public static void a(b bVar) {
        if (bVar != null) {
            synchronized (f1120s) {
                f1120s.remove(bVar);
            }
        }
    }
}
