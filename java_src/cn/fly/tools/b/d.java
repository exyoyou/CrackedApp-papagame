package cn.fly.tools.b;

import android.content.Context;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.ac;
import cn.fly.commons.ae;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.ResHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f1857a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f1858d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f1859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<String, Object> f1860c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile File f1863g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f1867k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f1868l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f1869m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f1861e = new byte[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f1862f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ConcurrentLinkedQueue<CountDownLatch> f1864h = new ConcurrentLinkedQueue<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile String f1865i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile int f1866j = -1;

    private d(Context context) {
        this.f1859b = context;
    }

    private String e() {
        try {
            String str = (String) cn.fly.commons.c.b(x.b("002Heheh"), null);
            return str == null ? (String) cn.fly.commons.c.b(x.b("009-eheecidkefchMhbg"), null) : str;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public static boolean c() {
        return f1858d;
    }

    public CountDownLatch d() {
        ConcurrentLinkedQueue<CountDownLatch> concurrentLinkedQueue = this.f1864h;
        if (concurrentLinkedQueue == null || concurrentLinkedQueue.isEmpty()) {
            return null;
        }
        return this.f1864h.peek();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str) || (strArrSplit = str.split("#")) == null || strArrSplit.length != 2) {
            return null;
        }
        return strArrSplit[1];
    }

    public int b() {
        return this.f1866j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str) || (strArrSplit = str.split("#")) == null || strArrSplit.length != 2) {
            return null;
        }
        return strArrSplit[0];
    }

    private void d(String str) {
        File dataCacheFile = ResHelper.getDataCacheFile(this.f1859b, str);
        if (!dataCacheFile.exists() || dataCacheFile.length() <= 0) {
            return;
        }
        dataCacheFile.delete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(String str) {
        return (TextUtils.isEmpty(b(str)) || TextUtils.isEmpty(c(str))) ? false : true;
    }

    public static d a(Context context) {
        if (f1857a == null) {
            synchronized (d.class) {
                if (f1857a == null) {
                    f1857a = new d(context);
                }
            }
        }
        return f1857a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File b(File file, String str) {
        if (!file.exists()) {
            file.mkdirs();
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        d(str);
        return new File(file, str);
    }

    public final CountDownLatch a() {
        return a(e());
    }

    public void a(int i10) {
        this.f1866j = i10;
    }

    public final CountDownLatch a(final String str) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        FlyLog.getInstance().d("dhs ofr: " + countDownLatch, new Object[0]);
        this.f1864h.offer(countDownLatch);
        ac.f1045d.execute(new Runnable() { // from class: cn.fly.tools.b.d.1
            @Override // java.lang.Runnable
            public void run() {
                cn.fly.commons.h hVarA;
                Throwable th;
                String string;
                int i10;
                int i11;
                String str2;
                synchronized (d.this.f1861e) {
                    cn.fly.tools.c.a.f2025c.set(Boolean.TRUE);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        FlyLog.getInstance().d("dhs stch: " + d.this.e(str), new Object[0]);
                        File file = new File(FlySDK.getContext().getFilesDir(), x.b("003%cbcbQg"));
                        if (!d.this.e(str)) {
                            boolean unused = d.f1858d = false;
                            ResHelper.deleteFileAndFolder(file);
                            d.this.f1869m = System.currentTimeMillis() - jCurrentTimeMillis;
                            FlyLog.getInstance().d("dhs ctd: " + countDownLatch, new Object[0]);
                            countDownLatch.countDown();
                            d.this.f1864h.remove(countDownLatch);
                            FlyLog.getInstance().d("dhs tt " + d.this.f1869m, new Object[0]);
                            if (d.this.f1869m > 3500 && d.this.b() == 16) {
                                cn.fly.commons.h hVarA2 = cn.fly.commons.h.a();
                                Throwable th2 = new Throwable(("-t-" + d.this.f1869m) + "-d-" + d.this.f1868l + "-l-" + d.this.f1867k + " ");
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("");
                                sb2.append(d.this.f1865i);
                                hVarA2.a(3, 11, th2, sb2.toString());
                            }
                            return;
                        }
                        d.this.a(0);
                        String strB = d.this.b(str);
                        if (TextUtils.isEmpty(strB)) {
                            boolean unused2 = d.f1858d = false;
                            cn.fly.commons.h.a().a(-1, 4, "", "");
                            d.this.f1869m = System.currentTimeMillis() - jCurrentTimeMillis;
                            FlyLog.getInstance().d("dhs ctd: " + countDownLatch, new Object[0]);
                            countDownLatch.countDown();
                            d.this.f1864h.remove(countDownLatch);
                            FlyLog.getInstance().d("dhs tt " + d.this.f1869m, new Object[0]);
                            if (d.this.f1869m > 3500 && d.this.b() == 16) {
                                cn.fly.commons.h hVarA3 = cn.fly.commons.h.a();
                                Throwable th3 = new Throwable(("-t-" + d.this.f1869m) + "-d-" + d.this.f1868l + "-l-" + d.this.f1867k + " ");
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("");
                                sb3.append(d.this.f1865i);
                                hVarA3.a(3, 11, th3, sb3.toString());
                            }
                            return;
                        }
                        try {
                            if (DH.SyncMtd.isInMainProcess()) {
                                str2 = strB;
                            } else {
                                String strReplace = DH.SyncMtd.getCurrentProcessName() + "";
                                String packageName = DH.SyncMtd.getPackageName();
                                if (strReplace.contains(packageName)) {
                                    strReplace = strReplace.replace(packageName, "");
                                }
                                str2 = strB + "_" + strReplace.replace(":", "");
                                try {
                                    FlyLog.getInstance().d("dhs cld nm " + str2, new Object[0]);
                                } catch (Throwable unused3) {
                                }
                            }
                        } catch (Throwable unused4) {
                        }
                        File fileB = d.this.b(file, str2);
                        boolean z10 = fileB != null && fileB.exists() && fileB.isFile();
                        FlyLog.getInstance().d("dhs cac: " + z10, new Object[0]);
                        String strMD5 = Data.MD5(fileB);
                        if (z10) {
                            d.this.a(5);
                            boolean zEquals = strB.equals(strMD5);
                            FlyLog.getInstance().d("dhs m5: " + zEquals, new Object[0]);
                            if (zEquals) {
                                FlyLog.getInstance().d("dhs tbm: " + d.this.f1862f.get(), new Object[0]);
                                if (!d.this.f1862f.compareAndSet(false, true)) {
                                    strMD5 = "";
                                }
                            } else {
                                d.this.a(6);
                                d dVar = d.this;
                                strMD5 = dVar.a(dVar.c(str), fileB, strB);
                            }
                        } else {
                            d.this.a(8);
                            d dVar2 = d.this;
                            strMD5 = dVar2.a(dVar2.c(str), fileB, strB);
                        }
                        FlyLog.getInstance().d("dhs cl:  tm5: " + strMD5 + ", cm5: " + d.this.f1865i, new Object[0]);
                        if (!TextUtils.isEmpty(strMD5) && !strMD5.equals(d.this.f1865i)) {
                            d.this.a(fileB);
                            HashMap mapA = d.this.a(fileB, strMD5);
                            if (mapA == null || mapA.isEmpty()) {
                                try {
                                    if (fileB.exists()) {
                                        fileB.delete();
                                    }
                                } catch (Throwable unused5) {
                                }
                                FlyLog.getInstance().d("dhs l fail", new Object[0]);
                            } else {
                                FlyLog.getInstance().d("dhs l succ", new Object[0]);
                                f fVar = new f(mapA);
                                d.this.f1865i = Data.MD5(fileB);
                                boolean unused6 = d.f1858d = c.a(d.this.f1859b).a(fVar);
                                d.this.a(16);
                                FlyLog.getInstance().d("dhs fin", new Object[0]);
                            }
                        }
                        d.this.f1869m = System.currentTimeMillis() - jCurrentTimeMillis;
                        FlyLog.getInstance().d("dhs ctd: " + countDownLatch, new Object[0]);
                        countDownLatch.countDown();
                        d.this.f1864h.remove(countDownLatch);
                        FlyLog.getInstance().d("dhs tt " + d.this.f1869m, new Object[0]);
                        if (d.this.f1869m > 3500 && d.this.b() == 16) {
                            hVarA = cn.fly.commons.h.a();
                            th = new Throwable(("-t-" + d.this.f1869m) + "-d-" + d.this.f1868l + "-l-" + d.this.f1867k + " ");
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("");
                            sb4.append(d.this.f1865i);
                            string = sb4.toString();
                            i10 = 11;
                            i11 = 3;
                            hVarA.a(i11, i10, th, string);
                        }
                        cn.fly.tools.c.a.f2025c.set(Boolean.FALSE);
                    } catch (Throwable th4) {
                        try {
                            FlyLog.getInstance().d("dhs oops: " + th4.getMessage(), new Object[0]);
                            FlyLog.getInstance().d(th4);
                            d.this.f1869m = System.currentTimeMillis() - jCurrentTimeMillis;
                            FlyLog.getInstance().d("dhs ctd: " + countDownLatch, new Object[0]);
                            countDownLatch.countDown();
                            d.this.f1864h.remove(countDownLatch);
                            FlyLog.getInstance().d("dhs tt " + d.this.f1869m, new Object[0]);
                            if (d.this.f1869m > 3500 && d.this.b() == 16) {
                                hVarA = cn.fly.commons.h.a();
                                th = new Throwable(("-t-" + d.this.f1869m) + "-d-" + d.this.f1868l + "-l-" + d.this.f1867k + " ");
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("");
                                sb5.append(d.this.f1865i);
                                string = sb5.toString();
                                i10 = 11;
                                i11 = 3;
                            }
                        } catch (Throwable th5) {
                            d.this.f1869m = System.currentTimeMillis() - jCurrentTimeMillis;
                            FlyLog.getInstance().d("dhs ctd: " + countDownLatch, new Object[0]);
                            countDownLatch.countDown();
                            d.this.f1864h.remove(countDownLatch);
                            FlyLog.getInstance().d("dhs tt " + d.this.f1869m, new Object[0]);
                            if (d.this.f1869m <= 3500 || d.this.b() != 16) {
                                throw th5;
                            }
                            cn.fly.commons.h hVarA4 = cn.fly.commons.h.a();
                            Throwable th6 = new Throwable(("-t-" + d.this.f1869m) + "-d-" + d.this.f1868l + "-l-" + d.this.f1867k + " ");
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("");
                            sb6.append(d.this.f1865i);
                            hVarA4.a(3, 11, th6, sb6.toString());
                            throw th5;
                        }
                    }
                }
            }
        });
        return countDownLatch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(File file) {
        if (this.f1863g != null && this.f1863g.exists()) {
            if (this.f1863g.delete()) {
                FlyLog.getInstance().d("dhs dof succ", new Object[0]);
            } else {
                FlyLog.getInstance().d("dhs dof fail", new Object[0]);
            }
        }
        this.f1863g = file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, Object> a(File file, String str) {
        HashMap map = new HashMap();
        String strD = ae.b().d();
        if (TextUtils.isEmpty(strD)) {
            strD = HashonHelper.fromHashMap(map);
        }
        HashMap<String, Object> map2 = new HashMap<>();
        if (this.f1860c == null) {
            HashMap<String, Object> map3 = new HashMap<>();
            this.f1860c = map3;
            map3.put("cacheMap", new ConcurrentHashMap());
            this.f1860c.put("invokeTimesMap", new ConcurrentHashMap());
            this.f1860c.put("expireTimeMap", new ConcurrentHashMap());
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = null;
        try {
            cn.fly.commons.cc.a.a(FlySDK.getContext(), file.getAbsolutePath(), strD, map2, this.f1860c);
            this.f1867k = System.currentTimeMillis() - jCurrentTimeMillis;
            FlyLog.getInstance().d(TextUtils.isEmpty(null) ? String.format("dhs l %d", Long.valueOf(this.f1867k)) : null, new Object[0]);
        } catch (Throwable th) {
            try {
                str2 = "dhs l e: " + th.getMessage();
                map2.clear();
                cn.fly.commons.h.a().a(5, b(), th, "" + str);
                FlyLog.getInstance().d(th);
            } catch (Throwable unused) {
            }
            this.f1867k = System.currentTimeMillis() - jCurrentTimeMillis;
            if (TextUtils.isEmpty(str2)) {
                str2 = String.format("dhs l %d", Long.valueOf(this.f1867k));
            }
            FlyLog.getInstance().d(str2, new Object[0]);
        }
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, File file, String str2) {
        FileOutputStream fileOutputStream;
        if (!TextUtils.isEmpty(str) && file != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String str3 = null;
            try {
                if (file.exists()) {
                    file.delete();
                }
                fileOutputStream = new FileOutputStream(file);
                try {
                    FlyLog.getInstance().d("dhs d...", new Object[0]);
                    new NetworkHelper().download(str, fileOutputStream, null);
                    String strMD5 = Data.MD5(file);
                    if (!TextUtils.equals(str2, strMD5)) {
                        cn.fly.commons.h.a().a(-1, 20, "", str2);
                        if (file.exists()) {
                            file.delete();
                        }
                        C1293r.a(fileOutputStream);
                        if (TextUtils.isEmpty(null)) {
                            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                            this.f1868l = jCurrentTimeMillis2;
                            str3 = String.format("dhs d %d", Long.valueOf(jCurrentTimeMillis2));
                        }
                        FlyLog.getInstance().d(str3, new Object[0]);
                        return "";
                    }
                    C1293r.a(fileOutputStream);
                    if (TextUtils.isEmpty(null)) {
                        long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
                        this.f1868l = jCurrentTimeMillis3;
                        str3 = String.format("dhs d %d", Long.valueOf(jCurrentTimeMillis3));
                    }
                    FlyLog.getInstance().d(str3, new Object[0]);
                    return strMD5;
                } catch (Throwable th) {
                    th = th;
                    try {
                        if (file.exists()) {
                            file.delete();
                        }
                        str3 = "dhs d e: " + th.getMessage();
                        FlyLog.getInstance().d(th);
                        cn.fly.commons.h.a().a(2, b(), th, "" + str2);
                        C1293r.a(fileOutputStream);
                        if (TextUtils.isEmpty(str3)) {
                            long jCurrentTimeMillis4 = System.currentTimeMillis() - jCurrentTimeMillis;
                            this.f1868l = jCurrentTimeMillis4;
                            str3 = String.format("dhs d %d", Long.valueOf(jCurrentTimeMillis4));
                        }
                        FlyLog.getInstance().d(str3, new Object[0]);
                        return "";
                    } catch (Throwable th2) {
                        C1293r.a(fileOutputStream);
                        if (TextUtils.isEmpty(str3)) {
                            long jCurrentTimeMillis5 = System.currentTimeMillis() - jCurrentTimeMillis;
                            this.f1868l = jCurrentTimeMillis5;
                            str3 = String.format("dhs d %d", Long.valueOf(jCurrentTimeMillis5));
                        }
                        FlyLog.getInstance().d(str3, new Object[0]);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        }
        return "";
    }
}
