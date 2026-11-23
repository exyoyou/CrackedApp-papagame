package cn.fly.commons;

import android.text.TextUtils;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.log.NLog;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.FileLocker;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.ResHelper;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.umeng.analytics.pro.bm;
import java.io.File;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile j f1357d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile ArrayList<String> f1360g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<String> f1361h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ReentrantReadWriteLock f1362i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ScheduledExecutorService f1366m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private volatile boolean f1367n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final CountDownLatch f1356c = new CountDownLatch(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static HashMap<String, String> f1354a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ArrayList<String> f1355b = new ArrayList<>(Arrays.asList("cfgc.zztfly.com"));

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile CountDownLatch f1363j = f1356c;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f1364k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AtomicBoolean f1365l = new AtomicBoolean(false);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f1368o = "1/AHtA5SU4S98A+xZeKe64Gh3JIq961UY1+qEpKPZ+k=,niSzpNQDCJiJro9C6C+GneOoUjWk70xX1KLHPpNB9Nc=,ENwvHToz6w+XCZAmjNfqU3VuOyh/Ss2zb3+H65LBFuo=,WiR8mRXE8y0bUCBXb5ANHm6FxZc88IkTfazvI4W1xEI=,o49gWtV4hzbcs49d8AZNHkmSuZgJzeVA6xzi0UvfYV4=,Dg4ufHH1m2l1ciTqHX9C64n/ck/WQuYF28F9TYx0nFU=,IPXH1AK0hdLdtpo1cpFKjhaO57Sa0ltYg1rPQw3KxhY=,gjbOGpHpQjcKECAVdj2APwUZFeHIk0W9phwI2ldEJZo=,rSGUi5gypYk5upy3k46aciTvh+HztGIDmfs99pr7tb8=,ju2QK9VWinXtv6vWLwfj1n6RSVxbfFyU4rMUuyLW1uU=,lQHPokrqL9VDRkQn8+Lipyy34Q458Ej+inousRqw/LA=,OD7M5KRKKIKwj33r+CkGWY/8uTQGFkfVbf0gtEkNJm8=,uacHev2j7Cz6UmfQBKQk2MPmNgWnoxFH693vr8ubGAc=,V+fPpvjbDqW7yWki/gLvfJY5chlN8MDo9vRkktzB2Ls=,tXVPXd36IOCjqd/wtwxqSWWT/awmw+T4qMZoeEhgT1M=";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f1369p = "ezqF9qISN8ShdhR2agxPrZukVky3cdvFDIGa38SQmb0=,A3YEcd462Jz9Q/qaKF6dX/X7zxwiGzqrzV6JMLRFR6o=,3jxEu1sdMQq3HBHxXguwhyLSvJvM4EIHgF5Zv9MUE9U=,BNlrrD3MVpkIOwPn0nIMjHomP+yzbg1eGLh0Bifzuhg=,DQ9m4i6OwE3Ox4rtEbBj/1ycI8MYMRqWS5e8Ggmn1LM=,LN0Qtw/zlINc/6ZsffuwUZXqnu9VYk0CkhzekIbpNJE=,6uGthZL9XlaMUBrffAhZQWHmrYX8cbavo+HOtFc8sk4=,oC4zi6fe8JbZBHXHwGcPXeBEfWeQ+3v4tPStXOU9v9Y=,axdtozQ1KvV6GYJ5/JnVqzqVuLmzyYScUWJoOzD5bmM=,kZ4B2pbpNP38dU4qkHo2xvCX0Km3UIU/eK7+GJva/go=,9FnPiuPbw6uEux20ekcYp9QYLBJAsd7e7DCx2tgaUKE=,I/pGSfVmP68clpkMjeumvF991FtKZXiAwM0sNwq4MGI=,/CSbPmuBBhYaOEf1tspQF6NpHYsS3VRJeq+D6vJo3M0=,f/uKR9QlIpBApIcBfm4rhc4SpdJWuSdJfN4O1tj8pKk=,i1l9ocj9Rzep1zQWi6RwCuav0M1+v4isP/sCESvtyMI=";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile HashMap<String, HashMap<String, ArrayList<String>>> f1358e = ae.b().n();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile HashMap<String, HashMap<String, ArrayList<String>>> f1359f = ae.b().o();

    private class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList<String> f1377b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f1378c;

        private long a(long j10) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jMax = Math.max(jCurrentTimeMillis, j10 + 10800000);
            Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Asia/Shanghai"));
            calendar.setTimeInMillis(jMax);
            int i10 = calendar.get(11);
            if (!((i10 >= 0 && i10 < 8) || (i10 >= 20 && i10 <= 23))) {
                calendar.set(11, 20);
                calendar.set(12, 0);
                calendar.set(13, 0);
                calendar.set(14, 0);
                jMax = calendar.getTimeInMillis();
            }
            return Math.max(0L, jMax - jCurrentTimeMillis);
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th;
            long jA;
            long j10 = e0.a.f90863b;
            try {
                jA = a(this.f1378c);
                try {
                    if (jA == 0) {
                        j.this.a(this.f1377b);
                        if (j.this.f1363j.getCount() > 0) {
                            j.this.f1363j.await();
                        }
                        if (!j.this.f1367n) {
                            ae.b().a((Long) 0L);
                        }
                    } else {
                        j.this.f1367n = true;
                        j10 = jA;
                    }
                    try {
                        if (j.this.f1367n) {
                            j.this.f1366m.schedule(this, j10, TimeUnit.MILLISECONDS);
                        }
                    } catch (Throwable th2) {
                        FlyLog.getInstance().d(th2, "DM " + th2.getMessage(), new Object[0]);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
                        try {
                            if (j.this.f1367n) {
                            }
                        } catch (Throwable th4) {
                            FlyLog.getInstance().d(th4, "DM " + th4.getMessage(), new Object[0]);
                        }
                    } finally {
                        try {
                            if (j.this.f1367n) {
                                j.this.f1366m.schedule(this, jA, TimeUnit.MILLISECONDS);
                            }
                        } catch (Throwable th5) {
                            FlyLog.getInstance().d(th5, "DM " + th5.getMessage(), new Object[0]);
                        }
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                jA = 300000;
            }
        }

        private a(ArrayList<String> arrayList, long j10) {
            this.f1377b = arrayList;
            this.f1378c = j10;
        }
    }

    private class b {
        private b() {
        }

        private HashMap<String, String> b() {
            HashMap<String, String> map = (HashMap) ae.b().c("key_bnd_hst", null);
            NLog flyLog = FlyLog.getInstance();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("DM HSB r bnd hst buf. sz: ");
            sb2.append((map == null || map.isEmpty()) ? 0 : map.size());
            flyLog.d(sb2.toString(), new Object[0]);
            if (map != null && map.containsKey("sdkVer")) {
                String str = map.get("sdkVer");
                NLog flyLog2 = FlyLog.getInstance();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("DM HSB hst_v: ");
                sb3.append(str);
                sb3.append(", sdk_v: ");
                String str2 = FlySDK.SDK_VERSION_NAME;
                sb3.append(str2);
                flyLog2.d(sb3.toString(), new Object[0]);
                if (str2.equals(str)) {
                    map.remove("sdkVer");
                    return map;
                }
            }
            return null;
        }

        private HashMap<String, String> c(String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return null;
            }
            try {
                String strAES128PaddingDecode = Data.AES128PaddingDecode(str, str2);
                if (a(strAES128PaddingDecode)) {
                    return HashonHelper.fromJson(strAES128PaddingDecode);
                }
                FlyLog.getInstance().d("DM HSB bnd hst NOT hit: not json", new Object[0]);
                return null;
            } catch (Throwable th) {
                FlyLog.getInstance().d("DM HSB bnd hst NOT hit: " + th.getMessage(), new Object[0]);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            try {
                FlyLog.getInstance().d("DM HSB =====> start. ehp-len: " + j.this.f1368o.length() + ", ehk-len: " + j.this.f1369p.length(), new Object[0]);
                if ((!TextUtils.isEmpty(j.this.f1368o) && !"null".equals(j.this.f1368o)) || (!TextUtils.isEmpty(j.this.f1369p) && !"null".equals(j.this.f1369p))) {
                    HashMap<String, String> mapB = b();
                    NLog flyLog = FlyLog.getInstance();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("DM HSB found bnd hst: ");
                    sb2.append(mapB != null ? mapB.size() : 0);
                    flyLog.d(sb2.toString(), new Object[0]);
                    if (mapB == null || mapB.isEmpty()) {
                        FlyLog.getInstance().d("DM HSB try hit bnd hst by 'p'", new Object[0]);
                        mapB = b(DH.SyncMtd.getPackageName(), j.this.f1368o);
                        if (mapB == null || mapB.isEmpty()) {
                            FlyLog.getInstance().d("DM HSB try hit bnd hst by 'k'", new Object[0]);
                            mapB = b(FlySDK.getAppkey(), j.this.f1369p);
                        }
                        if (mapB == null || mapB.isEmpty()) {
                            FlyLog.getInstance().d("DM HSB bnd hst not hit, use def", new Object[0]);
                            mapB = new HashMap<>();
                            mapB.putAll(j.f1354a);
                        }
                        FlyLog.getInstance().d("DM HSB w bnd hst buf. sz: " + mapB.size(), new Object[0]);
                        mapB.put("sdkVer", FlySDK.SDK_VERSION_NAME);
                        a(new HashMap<>(mapB));
                    }
                    b(mapB);
                    FlyLog.getInstance().d("DM HSB =====> end", new Object[0]);
                    return;
                }
                FlyLog.getInstance().d("DM HSB =====> end", new Object[0]);
            } catch (Throwable th) {
                try {
                    FlyLog.getInstance().d(th, "DM HSB " + cn.fly.commons.a.m.a("005g+ekekelek"), new Object[0]);
                    FlyLog.getInstance().d("DM HSB =====> end", new Object[0]);
                } catch (Throwable th2) {
                    FlyLog.getInstance().d("DM HSB =====> end", new Object[0]);
                    throw th2;
                }
            }
        }

        private void b(HashMap<String, String> map) {
            int iA;
            if (map != null) {
                map.remove("sdkVer");
                iA = 0;
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    iA += a(entry.getKey(), entry.getValue());
                }
            } else {
                iA = 0;
            }
            FlyLog.getInstance().d("DM HSB def hst replaced: " + iA, new Object[0]);
        }

        private HashMap<String, String> b(String str, String str2) {
            HashMap<String, String> mapC = null;
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                String[] strArrSplit = str2.split(",");
                FlyLog.getInstance().d("DM HSB enTxt sz: " + strArrSplit.length, new Object[0]);
                for (String str3 : strArrSplit) {
                    mapC = c(str, str3);
                    if (mapC != null) {
                        FlyLog.getInstance().d("DM HSB bnd hst hit by: " + str, new Object[0]);
                        break;
                    }
                }
            }
            return mapC;
        }

        private void a(HashMap<String, String> map) {
            ae.b().b("key_bnd_hst", map);
        }

        private int a(String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return 0;
            }
            try {
                if ("gcfg".equals(str)) {
                    j.f1355b.clear();
                    j.f1355b.add(str2);
                }
                j.f1354a.put(str, str2);
                return 1;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th, "DM HSB replace def hst error", new Object[0]);
                return 0;
            }
        }

        private boolean a(String str) {
            if (str != null && !str.trim().isEmpty()) {
                String strTrim = str.trim();
                if ((strTrim.startsWith("{") && strTrim.endsWith("}")) || (strTrim.startsWith("[") && strTrim.endsWith("]"))) {
                    try {
                        try {
                            new JSONObject(strTrim);
                            return true;
                        } catch (JSONException unused) {
                            new JSONArray(strTrim);
                            return true;
                        }
                    } catch (JSONException unused2) {
                    }
                }
            }
            return false;
        }
    }

    static {
        f1354a.put("gcfg", "cfgc.zztfly.com");
        f1354a.put("gclg", "upc.zztfly.com");
        f1354a.put(com.kuaishou.weapon.p0.t.f74889n, "errc.zztfly.com");
        f1354a.put("dg", "devc.zztfly.com");
        f1354a.put("dtc", "fdl.zztfly.com");
        f1354a.put("tcig", "tgc.zztfly.com");
        f1354a.put("gdg", "gd.zztfly.com");
    }

    private j() {
        a(this.f1359f);
        ArrayList<String> arrayListQ = ae.b().q();
        this.f1361h = arrayListQ;
        if (arrayListQ == null || arrayListQ.isEmpty()) {
            this.f1361h = f1355b;
        }
        this.f1362i = new ReentrantReadWriteLock();
        new b().a();
    }

    private ArrayList<String> f() {
        if (this.f1360g != null && !this.f1360g.isEmpty()) {
            return this.f1360g;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            File dataCacheFile = ResHelper.getDataCacheFile(FlySDK.getContext(), ".dmfbd");
            if (dataCacheFile.exists() && dataCacheFile.length() > 0) {
                arrayList.addAll((ArrayList) C1293r.a(dataCacheFile, Data.rawMD5(DH.SyncMtd.getPackageName())));
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        File[] fileArrListFiles;
        try {
            ArrayList arrayList = new ArrayList();
            File file = new File(FlySDK.getContext().getFilesDir(), "sblf");
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0) {
                arrayList.add(file);
                v.a(v.a(v.f1435i), new u() { // from class: cn.fly.commons.j.4
                    /* JADX WARN: Bottom block not found for handler: all -> 0x000b */
                    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
                    
                        return true;
                     */
                    @Override // cn.fly.commons.u
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public boolean a(cn.fly.tools.utils.FileLocker r4) {
                        /*
                            r3 = this;
                            java.lang.Object r4 = cn.fly.commons.v.f1439m     // Catch: java.lang.Throwable -> Lb
                            monitor-enter(r4)     // Catch: java.lang.Throwable -> Lb
                            r4.notifyAll()     // Catch: java.lang.Throwable -> L8
                            monitor-exit(r4)     // Catch: java.lang.Throwable -> L8
                            goto L2b
                        L8:
                            r0 = move-exception
                            monitor-exit(r4)     // Catch: java.lang.Throwable -> L8
                            throw r0     // Catch: java.lang.Throwable -> Lb
                        Lb:
                            r4 = move-exception
                            cn.fly.tools.log.NLog r0 = cn.fly.tools.FlyLog.getInstance()
                            java.lang.StringBuilder r1 = new java.lang.StringBuilder
                            r1.<init>()
                            java.lang.String r2 = "DM "
                            r1.append(r2)
                            java.lang.String r2 = r4.getMessage()
                            r1.append(r2)
                            java.lang.String r1 = r1.toString()
                            r2 = 0
                            java.lang.Object[] r2 = new java.lang.Object[r2]
                            r0.d(r4, r1, r2)
                        L2b:
                            r4 = 1
                            return r4
                        */
                        throw new UnsupportedOperationException("Method not decompiled: cn.fly.commons.j.AnonymousClass4.a(cn.fly.tools.utils.FileLocker):boolean");
                    }
                });
            }
            if (arrayList.isEmpty()) {
                long jLongValue = ae.b().r().longValue();
                if (jLongValue == 0) {
                    jLongValue = System.currentTimeMillis();
                    ae.b().a(Long.valueOf(jLongValue));
                }
                long j10 = jLongValue;
                ArrayList<String> arrayListF = f();
                if (arrayListF == null || arrayListF.isEmpty()) {
                    return;
                }
                ScheduledExecutorService scheduledExecutorService = ac.f1047f;
                this.f1366m = scheduledExecutorService;
                scheduledExecutorService.schedule(new a(arrayListF, j10), 0L, TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
        }
    }

    public void b() {
        this.f1364k = false;
    }

    public void c() {
        a(this.f1361h);
    }

    public void d() {
        try {
            if (this.f1365l.compareAndSet(false, true)) {
                ac.f1042a.execute(new Runnable() { // from class: cn.fly.commons.j.3
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean z10;
                        boolean z11;
                        boolean z12;
                        try {
                            FlyLog.getInstance().d("DM ck start", new Object[0]);
                            if (j.this.f1358e == null || j.this.f1358e.isEmpty()) {
                                z10 = true;
                            } else {
                                HashMap map = new HashMap();
                                z10 = true;
                                for (Map.Entry entry : j.this.f1358e.entrySet()) {
                                    String str = (String) entry.getKey();
                                    HashMap map2 = (HashMap) entry.getValue();
                                    HashMap map3 = new HashMap();
                                    if (map2 != null && !map2.isEmpty()) {
                                        for (Map.Entry entry2 : map2.entrySet()) {
                                            String str2 = (String) entry2.getKey();
                                            ArrayList<String> arrayList = (ArrayList) entry2.getValue();
                                            ArrayList arrayList2 = new ArrayList();
                                            if (arrayList != null && !arrayList.isEmpty()) {
                                                for (String str3 : arrayList) {
                                                    if (j.this.b(str3)) {
                                                        arrayList2.add(str3);
                                                    }
                                                }
                                            }
                                            if (!arrayList2.isEmpty()) {
                                                map3.put(str2, arrayList2);
                                            } else if (str2.equals("gcfg") && str.equals("FCOMMON")) {
                                                z10 = false;
                                            }
                                        }
                                    }
                                    if (!map3.isEmpty()) {
                                        map.put(str, map3);
                                    }
                                }
                                if (map.isEmpty()) {
                                    FlyLog.getInstance().d("DM busi no avai dm", new Object[0]);
                                } else {
                                    try {
                                        FlyLog.getInstance().d("DM busi w 2 cac: " + map, new Object[0]);
                                        if (j.this.f1362i.writeLock().tryLock(BaseCloudFileManager.ACK_TIMEOUT, TimeUnit.MILLISECONDS)) {
                                            j.this.f1359f.clear();
                                            j.this.f1359f.putAll(map);
                                            ae.b().c(j.this.f1359f);
                                        }
                                        try {
                                            j.this.f1362i.writeLock().unlock();
                                        } catch (Throwable th) {
                                            FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
                                        }
                                    } catch (Throwable th2) {
                                        try {
                                            FlyLog.getInstance().d(th2, "DM " + th2.getMessage(), new Object[0]);
                                            try {
                                                j.this.f1362i.writeLock().unlock();
                                            } catch (Throwable th3) {
                                                FlyLog.getInstance().d(th3, "DM " + th3.getMessage(), new Object[0]);
                                            }
                                        } catch (Throwable th4) {
                                            try {
                                                j.this.f1362i.writeLock().unlock();
                                            } catch (Throwable th5) {
                                                FlyLog.getInstance().d(th5, "DM " + th5.getMessage(), new Object[0]);
                                            }
                                            throw th4;
                                        }
                                    }
                                }
                            }
                            try {
                                if (j.this.f1361h == null || j.this.f1361h.isEmpty()) {
                                    z12 = true;
                                } else {
                                    ArrayList arrayList3 = new ArrayList();
                                    for (String str4 : j.this.f1361h) {
                                        if (j.this.b(str4)) {
                                            arrayList3.add(str4);
                                        }
                                    }
                                    if (arrayList3.isEmpty()) {
                                        try {
                                            FlyLog.getInstance().d("DM prx no avai dm", new Object[0]);
                                            z12 = false;
                                        } catch (Throwable th6) {
                                            th = th6;
                                            z11 = false;
                                            FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
                                            z12 = z11;
                                        }
                                    } else {
                                        FlyLog.getInstance().d("DM prx w 2 cac: " + arrayList3, new Object[0]);
                                        j.this.f1361h.clear();
                                        j.this.f1361h.addAll(arrayList3);
                                        ae.b().a(j.this.f1361h);
                                        z12 = true;
                                    }
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                z11 = true;
                            }
                            if (z10 || z12) {
                                ae.b().a((Long) 0L);
                            } else {
                                j.this.f1367n = true;
                                j.this.g();
                            }
                        } catch (Throwable th8) {
                            FlyLog.getInstance().d(th8, "DM " + th8.getMessage(), new Object[0]);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        InetAddress[] allByName;
        if (!TextUtils.isEmpty(str)) {
            try {
                synchronized (j.class) {
                    allByName = InetAddress.getAllByName(str);
                }
                if (allByName != null) {
                    for (InetAddress inetAddress : allByName) {
                        if (!c(inetAddress.getHostAddress())) {
                            FlyLog.getInstance().d("DM ck ht: " + str + ", fai", new Object[0]);
                            return false;
                        }
                    }
                }
                FlyLog.getInstance().d("DM ck ht: " + str + ", suc", new Object[0]);
                return true;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
            }
        }
        FlyLog.getInstance().d("DM ck ht: " + str + ", fai_emp|exp", new Object[0]);
        return false;
    }

    private static boolean c(String str) {
        if (TextUtils.isEmpty(str) || str.equals("127.0.0.1") || str.startsWith("10.") || str.startsWith("192.168")) {
            return false;
        }
        if (str.startsWith("172.")) {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit.length > 1) {
                try {
                    int i10 = Integer.parseInt(strArrSplit[1]);
                    return i10 < 16 || i10 > 31;
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
                }
            }
        }
        return true;
    }

    private void a(HashMap<String, HashMap<String, ArrayList<String>>> map) {
        try {
            HashMap<String, String> mapP = ae.b().p();
            if ((map == null || map.isEmpty()) && mapP != null && !mapP.isEmpty()) {
                HashMap<String, HashMap<String, ArrayList<String>>> map2 = new HashMap<>();
                Set<String> setKeySet = mapP.keySet();
                if (setKeySet != null) {
                    for (String str : setKeySet) {
                        if (!TextUtils.isEmpty(str) && str.contains("-")) {
                            HashMap<String, ArrayList<String>> map3 = new HashMap<>();
                            String strSubstring = str.substring(0, str.indexOf("-"));
                            String strSubstring2 = str.substring(str.indexOf("-") + 1);
                            if (!TextUtils.isEmpty(strSubstring) && !TextUtils.isEmpty(strSubstring2)) {
                                ArrayList<String> arrayList = new ArrayList<>();
                                arrayList.add(mapP.get(str));
                                map3.put(strSubstring2, arrayList);
                                map2.put(strSubstring, map3);
                            }
                        }
                    }
                }
                if (map2.isEmpty()) {
                    ae.b().c(map2);
                    ae.b().d((HashMap<String, String>) null);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void b(ArrayList<String> arrayList) {
        try {
            File dataCacheFile = ResHelper.getDataCacheFile(FlySDK.getContext(), ".dmfbd", true);
            if (dataCacheFile.exists()) {
                C1293r.a(dataCacheFile, Data.rawMD5(DH.SyncMtd.getPackageName()), arrayList);
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
        }
    }

    public static j a() {
        if (f1357d == null) {
            synchronized (j.class) {
                if (f1357d == null) {
                    f1357d = new j();
                }
            }
        }
        return f1357d;
    }

    public String a(String str) {
        return C1293r.a(a().a("FCOMMON", str, f1354a.get(str), false));
    }

    public String a(String str, String str2, String str3, boolean z10) {
        HashMap<String, ArrayList<String>> map;
        ArrayList<String> arrayList;
        FlyLog.getInstance().d("DM get: " + str + "-" + str2 + "-" + str3 + "-" + z10, new Object[0]);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && this.f1364k) {
            try {
                if (this.f1362i.readLock().tryLock(BaseCloudFileManager.ACK_TIMEOUT, TimeUnit.MILLISECONDS)) {
                    if (this.f1358e != null && this.f1358e.containsKey(str)) {
                        HashMap<String, ArrayList<String>> map2 = this.f1358e.get(str);
                        if (map2 != null && map2.containsKey(str2)) {
                            ArrayList<String> arrayList2 = map2.get(str2);
                            if (arrayList2 != null && !arrayList2.isEmpty()) {
                                if (this.f1359f != null && this.f1359f.containsKey(str) && (map = this.f1359f.get(str)) != null && map.containsKey(str2) && (arrayList = map.get(str2)) != null) {
                                    for (String str4 : arrayList) {
                                        if (arrayList2.contains(str4)) {
                                            try {
                                                this.f1362i.readLock().unlock();
                                            } catch (Throwable th) {
                                                FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
                                            }
                                            return str4;
                                        }
                                    }
                                }
                                String str5 = arrayList2.get(0);
                                try {
                                    this.f1362i.readLock().unlock();
                                } catch (Throwable th2) {
                                    FlyLog.getInstance().d(th2, "DM " + th2.getMessage(), new Object[0]);
                                }
                                return str5;
                            }
                            try {
                                this.f1362i.readLock().unlock();
                            } catch (Throwable th3) {
                                FlyLog.getInstance().d(th3, "DM " + th3.getMessage(), new Object[0]);
                            }
                            return str3;
                        }
                        try {
                            this.f1362i.readLock().unlock();
                        } catch (Throwable th4) {
                            FlyLog.getInstance().d(th4, "DM " + th4.getMessage(), new Object[0]);
                        }
                        return str3;
                    }
                    try {
                        this.f1362i.readLock().unlock();
                    } catch (Throwable th5) {
                        FlyLog.getInstance().d(th5, "DM " + th5.getMessage(), new Object[0]);
                    }
                    return str3;
                }
                try {
                    this.f1362i.readLock().unlock();
                } catch (Throwable th6) {
                    FlyLog.getInstance().d(th6, "DM " + th6.getMessage(), new Object[0]);
                }
            } catch (Throwable th7) {
                try {
                    FlyLog.getInstance().d(th7, "DM " + th7.getMessage(), new Object[0]);
                    try {
                        this.f1362i.readLock().unlock();
                    } catch (Throwable th8) {
                        FlyLog.getInstance().d(th8, "DM " + th8.getMessage(), new Object[0]);
                    }
                } catch (Throwable th9) {
                    try {
                        this.f1362i.readLock().unlock();
                    } catch (Throwable th10) {
                        FlyLog.getInstance().d(th10, "DM " + th10.getMessage(), new Object[0]);
                    }
                    throw th9;
                }
            }
            return str3;
        }
        FlyLog.getInstance().d("DM Params 'sName' or 'aName' is null", new Object[0]);
        return str3;
    }

    public void a(final ArrayList<String> arrayList) {
        if (this.f1363j != f1356c && this.f1363j.getCount() != 0) {
            FlyLog.getInstance().d("DM obt abort", new Object[0]);
            return;
        }
        FlyLog.getInstance().d("DM obt start", new Object[0]);
        this.f1363j = new CountDownLatch(1);
        ac.f1042a.execute(new Runnable() { // from class: cn.fly.commons.j.1
            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                jVar.a(jVar.f1363j, 0, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:128:0x041b A[Catch: all -> 0x048d, TryCatch #4 {all -> 0x048d, blocks: (B:119:0x03ec, B:121:0x03fc, B:123:0x0400, B:125:0x0404, B:126:0x0415, B:128:0x041b, B:130:0x0434, B:131:0x043c, B:133:0x0442, B:135:0x0456, B:136:0x045f), top: B:176:0x03ec, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:130:0x0434 A[Catch: all -> 0x048d, TryCatch #4 {all -> 0x048d, blocks: (B:119:0x03ec, B:121:0x03fc, B:123:0x0400, B:125:0x0404, B:126:0x0415, B:128:0x041b, B:130:0x0434, B:131:0x043c, B:133:0x0442, B:135:0x0456, B:136:0x045f), top: B:176:0x03ec, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0442 A[Catch: all -> 0x048d, TryCatch #4 {all -> 0x048d, blocks: (B:119:0x03ec, B:121:0x03fc, B:123:0x0400, B:125:0x0404, B:126:0x0415, B:128:0x041b, B:130:0x0434, B:131:0x043c, B:133:0x0442, B:135:0x0456, B:136:0x045f), top: B:176:0x03ec, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x053e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:176:0x03ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:206:0x045f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x0456 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x043c A[SYNTHETIC] */
    public void a(CountDownLatch countDownLatch, int i10, ArrayList<String> arrayList) {
        HashMap<String, ArrayList<String>> value;
        HashMap<String, ArrayList<String>> map;
        String key;
        ArrayList<String> value2;
        Object obj;
        if (arrayList != null) {
            try {
                if (i10 < arrayList.size()) {
                    String strA = C1293r.a(arrayList.get(i10) + "/nndm");
                    HashMap<String, Object> map2 = new HashMap<>();
                    map2.put(cn.fly.commons.a.m.a("006ekkDfi;gHfd"), q.a());
                    map2.put(cn.fly.commons.a.m.a("007@ee!g?ekgjejel f"), Integer.valueOf(cn.fly.commons.cc.a.a()));
                    NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                    networkTimeOut.connectionTimeout = 3000;
                    networkTimeOut.readTimout = 5000;
                    String strHttpGetNew = new NetworkHelper().httpGetNew(strA, map2, null, networkTimeOut);
                    FlyLog.getInstance().d("DM resp: " + strHttpGetNew, new Object[0]);
                    HashMap mapFromJson = HashonHelper.fromJson(strHttpGetNew);
                    if (mapFromJson != null && !mapFromJson.isEmpty() && (obj = mapFromJson.get(cn.fly.commons.a.m.a("004dReled'g"))) != null && ((Integer) obj).intValue() == 200) {
                        String str = (String) mapFromJson.get(cn.fly.commons.a.m.a("004>ed%eje"));
                        if (!TextUtils.isEmpty(str)) {
                            final HashMap mapFromJson2 = HashonHelper.fromJson(new String(Data.AES128Decode(Data.byteToHex(Data.rawMD5(q.a())).getBytes("UTF-8"), Base64.decode(str, 2), false), "utf-8"));
                            if (mapFromJson2 != null && !mapFromJson2.isEmpty()) {
                                this.f1367n = false;
                                ae.b().a((Long) 0L);
                                try {
                                    HashMap map3 = (HashMap) mapFromJson2.get(cn.fly.commons.a.m.a("004<edPeje"));
                                    if (map3 != null && !map3.isEmpty()) {
                                        HashMap map4 = new HashMap();
                                        for (Map.Entry entry : map3.entrySet()) {
                                            String str2 = (String) entry.getKey();
                                            HashMap map5 = (HashMap) entry.getValue();
                                            HashMap map6 = new HashMap();
                                            if (map5 != null && !map5.isEmpty()) {
                                                for (Map.Entry entry2 : map5.entrySet()) {
                                                    String str3 = (String) entry2.getKey();
                                                    ArrayList arrayList2 = (ArrayList) entry2.getValue();
                                                    ArrayList arrayList3 = new ArrayList();
                                                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                                                        arrayList3.addAll(arrayList2);
                                                    }
                                                    if (!arrayList3.isEmpty()) {
                                                        map6.put(str3, arrayList3);
                                                    }
                                                }
                                            }
                                            if (!map6.isEmpty()) {
                                                map4.put(str2, map6);
                                            }
                                        }
                                        if (!map4.isEmpty()) {
                                            try {
                                                FlyLog.getInstance().d("DM busi w 2 cac: " + map4, new Object[0]);
                                                if (this.f1362i.writeLock().tryLock(BaseCloudFileManager.ACK_TIMEOUT, TimeUnit.MILLISECONDS)) {
                                                    this.f1358e.clear();
                                                    this.f1358e.putAll(map4);
                                                    ae.b().b(this.f1358e);
                                                }
                                                try {
                                                    this.f1362i.writeLock().unlock();
                                                } catch (Throwable th) {
                                                    FlyLog.getInstance().d(th, "DM " + th.getMessage(), new Object[0]);
                                                }
                                            } catch (Throwable th2) {
                                                try {
                                                    FlyLog.getInstance().d(th2, "DM " + th2.getMessage(), new Object[0]);
                                                    try {
                                                        this.f1362i.writeLock().unlock();
                                                    } catch (Throwable th3) {
                                                        FlyLog.getInstance().d(th3, "DM " + th3.getMessage(), new Object[0]);
                                                    }
                                                } catch (Throwable th4) {
                                                    try {
                                                        this.f1362i.writeLock().unlock();
                                                        throw th4;
                                                    } catch (Throwable th5) {
                                                        FlyLog.getInstance().d(th5, "DM " + th5.getMessage(), new Object[0]);
                                                        throw th4;
                                                    }
                                                }
                                            }
                                        } else {
                                            FlyLog.getInstance().d("DM busi no avai dm", new Object[0]);
                                        }
                                    } else {
                                        ae.b().b((HashMap<String, HashMap<String, ArrayList<String>>>) null);
                                    }
                                    try {
                                        ArrayList arrayList4 = (ArrayList) mapFromJson2.get("p");
                                        if (arrayList4 != null && !arrayList4.isEmpty()) {
                                            ArrayList arrayList5 = new ArrayList();
                                            arrayList5.addAll(arrayList4);
                                            if (!arrayList5.isEmpty()) {
                                                FlyLog.getInstance().d("DM prx w 2 cac: " + arrayList5, new Object[0]);
                                                this.f1361h.clear();
                                                this.f1361h.addAll(arrayList5);
                                                ae.b().a(this.f1361h);
                                            } else {
                                                FlyLog.getInstance().d("DM prx no avai dm", new Object[0]);
                                            }
                                        } else {
                                            ae.b().a((ArrayList<String>) null);
                                        }
                                    } catch (Throwable th6) {
                                        FlyLog.getInstance().d(th6, "DM " + th6.getMessage(), new Object[0]);
                                    }
                                    try {
                                        ArrayList arrayList6 = (ArrayList) mapFromJson2.get(com.xinzhu.overmind.server.os.f.TAG);
                                        if (arrayList6 != null && !arrayList6.isEmpty()) {
                                            ArrayList arrayList7 = new ArrayList();
                                            arrayList7.addAll(arrayList6);
                                            if (!arrayList7.isEmpty()) {
                                                FlyLog.getInstance().d("DM fil w 2 cac: " + arrayList7, new Object[0]);
                                                if (this.f1360g == null) {
                                                    this.f1360g = new ArrayList<>();
                                                }
                                                this.f1360g.clear();
                                                this.f1360g.addAll(arrayList7);
                                                b(this.f1360g);
                                            } else {
                                                FlyLog.getInstance().d("DM prx no avai dm", new Object[0]);
                                            }
                                        }
                                    } catch (Throwable th7) {
                                        FlyLog.getInstance().d(th7, "DM " + th7.getMessage(), new Object[0]);
                                    }
                                    try {
                                        v.a(v.a(v.f1435i), false, new u() { // from class: cn.fly.commons.j.2
                                            @Override // cn.fly.commons.u
                                            public boolean a(FileLocker fileLocker) {
                                                try {
                                                    File file = new File(FlySDK.getContext().getFilesDir(), "sblf");
                                                    HashMap map7 = (HashMap) mapFromJson2.get(bm.aM);
                                                    if (map7 != null && !map7.isEmpty() && map7.containsKey(cn.fly.commons.a.m.a("002KfgMh")) && map7.containsKey(com.kuaishou.weapon.p0.t.f74888m)) {
                                                        synchronized (v.f1439m) {
                                                            d.a((HashMap<String, String>) map7);
                                                        }
                                                        return false;
                                                    }
                                                    C1293r.a(file);
                                                    return false;
                                                } catch (Throwable th8) {
                                                    FlyLog.getInstance().d(th8, "DM " + th8.getMessage(), new Object[0]);
                                                }
                                            }
                                        });
                                    } catch (Throwable th8) {
                                        FlyLog.getInstance().d(th8, "DM " + th8.getMessage(), new Object[0]);
                                    }
                                } catch (Throwable th9) {
                                    try {
                                        FlyLog.getInstance().d(th9, "DM " + th9.getMessage(), new Object[0]);
                                    } catch (Throwable th10) {
                                        countDownLatch.countDown();
                                        throw th10;
                                    }
                                }
                                countDownLatch.countDown();
                            } else {
                                ae.b().a((ArrayList<String>) null);
                                ae.b().b((HashMap<String, HashMap<String, ArrayList<String>>>) null);
                            }
                        }
                    } else {
                        a(countDownLatch, i10 + 1, arrayList);
                    }
                } else {
                    try {
                        if (this.f1362i.writeLock().tryLock(BaseCloudFileManager.ACK_TIMEOUT, TimeUnit.MILLISECONDS) && this.f1358e == null && this.f1359f != null) {
                            this.f1358e = new HashMap<>();
                            for (Map.Entry<String, HashMap<String, ArrayList<String>>> entry3 : this.f1359f.entrySet()) {
                                String key2 = entry3.getKey();
                                value = entry3.getValue();
                                map = new HashMap<>();
                                if (value != null) {
                                    for (Map.Entry<String, ArrayList<String>> entry4 : value.entrySet()) {
                                        key = entry4.getKey();
                                        value2 = entry4.getValue();
                                        if (value2 != null) {
                                            map.put(key, new ArrayList<>(value2));
                                        }
                                    }
                                }
                                this.f1358e.put(key2, map);
                            }
                        }
                        try {
                            this.f1362i.writeLock().unlock();
                        } catch (Throwable th11) {
                            FlyLog.getInstance().d(th11, "DM " + th11.getMessage(), new Object[0]);
                        }
                    } catch (Throwable th12) {
                        try {
                            FlyLog.getInstance().d(th12, "DM " + th12.getMessage(), new Object[0]);
                            try {
                                this.f1362i.writeLock().unlock();
                            } catch (Throwable th13) {
                                FlyLog.getInstance().d(th13, "DM " + th13.getMessage(), new Object[0]);
                            }
                        } catch (Throwable th14) {
                            try {
                                this.f1362i.writeLock().unlock();
                                throw th14;
                            } catch (Throwable th15) {
                                FlyLog.getInstance().d(th15, "DM " + th15.getMessage(), new Object[0]);
                                throw th14;
                            }
                        }
                    }
                    FlyLog.getInstance().w("DM No pdm");
                }
                if (countDownLatch.getCount() <= 0) {
                }
            } catch (Throwable th16) {
                try {
                    FlyLog.getInstance().d(th16, "DM " + th16.getMessage(), new Object[0]);
                    a(countDownLatch, i10 + 1, arrayList);
                } finally {
                    if (countDownLatch.getCount() > 0) {
                        countDownLatch.countDown();
                    }
                }
            }
        } else {
            if (this.f1362i.writeLock().tryLock(BaseCloudFileManager.ACK_TIMEOUT, TimeUnit.MILLISECONDS)) {
                this.f1358e = new HashMap<>();
                while (r0.hasNext()) {
                    String key3 = entry3.getKey();
                    value = entry3.getValue();
                    map = new HashMap<>();
                    if (value != null) {
                        while (r5.hasNext()) {
                            key = entry4.getKey();
                            value2 = entry4.getValue();
                            if (value2 != null) {
                                map.put(key, new ArrayList<>(value2));
                            }
                        }
                    }
                    this.f1358e.put(key3, map);
                }
            }
            this.f1362i.writeLock().unlock();
            FlyLog.getInstance().w("DM No pdm");
            if (countDownLatch.getCount() <= 0) {
            }
        }
    }
}
