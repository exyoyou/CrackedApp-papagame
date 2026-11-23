package com.yxcorp.kuaishou.addfp.android.a;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.kuaishou.weapon.p0.t;
import com.yxcorp.kuaishou.addfp.KWEGIDDFP;
import com.yxcorp.kuaishou.addfp.ResponseDfpCallback;
import com.yxcorp.kuaishou.addfp.android.Orange;
import com.yxcorp.kuaishou.addfp.android.b.f;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.zip.CRC32;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f90313d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f90314e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f90315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f90316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ReentrantLock f90317c;

    private c() {
        this.f90316b = "";
        this.f90317c = new ReentrantLock();
    }

    public static c c() {
        return b.f90312a;
    }

    public String a() {
        try {
            return !TextUtils.isEmpty(this.f90315a) ? this.f90315a : "KWE_N";
        } catch (Throwable th) {
            th.printStackTrace();
            return "KWE_N";
        }
    }

    public void b(String str) {
        this.f90315a = str;
    }

    private static String a(String str) {
        return TextUtils.isEmpty(str) ? "KWE_N" : str.replace(SimpleComparison.EQUAL_TO_OPERATION, "").replace(x.a.f97576d, "");
    }

    public static String b() {
        try {
            if (!f90313d) {
                return "KWE_NPN";
            }
            if (f90314e == 0) {
                int i10 = Build.VERSION.SDK_INT;
                boolean z10 = true;
                if (i10 < 33) {
                    boolean z11 = false;
                    if (i10 >= 29) {
                        String str = Build.MODEL;
                        if (!TextUtils.isEmpty(str) && str.toLowerCase().contains("redmi") && str.toLowerCase().contains("note 7")) {
                            z11 = true;
                        }
                        if (!Build.BRAND.equalsIgnoreCase("HONOR")) {
                            z10 = z11;
                        }
                    } else {
                        z10 = false;
                    }
                }
                if (!z10) {
                    String strGSer = Orange.getInstance().gSer();
                    if (!TextUtils.isEmpty(strGSer) && !strGSer.startsWith("KWE")) {
                        return strGSer;
                    }
                }
            }
            return !TextUtils.isEmpty("") ? "" : "KWE_N";
        } catch (Throwable th) {
            th.printStackTrace();
            return "KWE_N";
        }
    }

    public static void a(JSONObject jSONObject) {
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if ("64".equals(next) && jSONObject.optInt(next, 1) == 0) {
                    f90313d = false;
                }
                if ("64_level".equals(next)) {
                    f90314e = jSONObject.optInt(next, 0);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public String a(Context context, ResponseDfpCallback responseDfpCallback, boolean z10) {
        long jCurrentTimeMillis;
        String eGidLocal;
        String strReplace;
        long blockCount;
        BufferedReader bufferedReader;
        long j10;
        String strReplace2;
        System.currentTimeMillis();
        try {
            this.f90317c.lock();
            if (!TextUtils.isEmpty(this.f90316b)) {
                String str = this.f90316b;
                this.f90317c.unlock();
                return str;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("k23", f.a(a(Build.MANUFACTURER)));
            jSONObject.put("k61", f.a(a(Build.BRAND)));
            jSONObject.put("k27", f.a(a(Build.MODEL)));
            jSONObject.put("k64", f.a(b()));
            jSONObject.put("k31", f.a(com.yxcorp.kuaishou.addfp.android.b.d.c(false)));
            jSONObject.put("k117", f.a(com.yxcorp.kuaishou.addfp.android.b.d.c(true)));
            jSONObject.put("k66", f.a(com.yxcorp.kuaishou.addfp.android.b.d.a(false)));
            jSONObject.put("k116", f.a(com.yxcorp.kuaishou.addfp.android.b.d.a(true)));
            try {
                jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
            } catch (Throwable th) {
                th.printStackTrace();
                jCurrentTimeMillis = 0;
            }
            jSONObject.put("k39", f.a(Long.toString(jCurrentTimeMillis)));
            jSONObject.put("k101", Orange.getInstance().getResSoc("0"));
            jSONObject.put("k102", f.a("KWE_NPN"));
            jSONObject.put("k57", f.a(com.yxcorp.kuaishou.addfp.android.b.d.b(false)));
            jSONObject.put("k118", f.a(com.yxcorp.kuaishou.addfp.android.b.d.b(true)));
            jSONObject.put("k68", f.a(com.yxcorp.kuaishou.addfp.android.b.d.e(false)));
            jSONObject.put("k120", f.a(com.yxcorp.kuaishou.addfp.android.b.d.e(true)));
            jSONObject.put("k105", f.a(Orange.getInstance().gRdi()));
            try {
                eGidLocal = KWEGIDDFP.instance().getEGidLocal(context, c().a(), false);
                if (TextUtils.isEmpty(eGidLocal)) {
                    eGidLocal = "KWE_N";
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
                eGidLocal = "KWE_PE";
            }
            jSONObject.put("k83", f.a(eGidLocal));
            jSONObject.put("k86", f.a(com.yxcorp.kuaishou.addfp.c.a.a.a(context)));
            try {
                strReplace = context.getPackageName().replace(SimpleComparison.EQUAL_TO_OPERATION, "").replace(x.a.f97576d, "");
            } catch (Throwable th3) {
                th3.printStackTrace();
                strReplace = "KWE_PE";
            }
            jSONObject.put("k3", f.a(strReplace));
            jSONObject.put("k109", f.a(Orange.getInstance().gProps()));
            jSONObject.put("k36", f.a("1.4.6.83.10f752d7"));
            jSONObject.put("k14", f.a("AD_AND"));
            try {
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
            } catch (Throwable unused) {
                blockCount = 0;
            }
            jSONObject.put("k5", f.a(Long.toString(blockCount)));
            try {
                bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
                try {
                    j10 = Long.parseLong(bufferedReader.readLine().split("\\s+")[1]) * 1024;
                    try {
                        bufferedReader.close();
                    } catch (IOException unused2) {
                    }
                } catch (Throwable th4) {
                    th = th4;
                    try {
                        th.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        j10 = 0;
                    } catch (Throwable th5) {
                        if (bufferedReader == null) {
                            throw th5;
                        }
                        try {
                            bufferedReader.close();
                            throw th5;
                        } catch (IOException unused4) {
                            throw th5;
                        }
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                bufferedReader = null;
            }
            jSONObject.put("k46", f.a(Long.toString(j10)));
            try {
                strReplace2 = Build.VERSION.RELEASE.replace(SimpleComparison.EQUAL_TO_OPERATION, "").replace(x.a.f97576d, "");
            } catch (Throwable unused5) {
                strReplace2 = "KWE_PE";
            }
            jSONObject.put("k35", f.a(strReplace2));
            jSONObject.put("k110", f.a(Orange.getInstance().gKpsd()));
            jSONObject.put("k111", f.a("KWE_NPN"));
            jSONObject.put("k112", f.a(Orange.getInstance().sted(context, null, false)));
            jSONObject.put("k113", f.a(Orange.getInstance().gManu(context, com.yxcorp.kuaishou.addfp.c.a.a.a())));
            jSONObject.put("k115", f.a(com.yxcorp.kuaishou.addfp.android.b.d.d(true)));
            String strD = com.yxcorp.kuaishou.addfp.android.b.d.d(false);
            if (z10 && !strD.equals("KWE_NPN") && strD.startsWith("KWE")) {
                if (Build.VERSION.SDK_INT >= 29) {
                    try {
                        new CountDownLatch(1).await(1000L, TimeUnit.MILLISECONDS);
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                }
                strD = com.yxcorp.kuaishou.addfp.android.b.d.d(false);
            }
            jSONObject.put("k97", f.a(strD));
            try {
                CRC32 crc32 = new CRC32();
                for (int i10 = 1; i10 <= 120; i10++) {
                    String str2 = t.f74876a + i10;
                    if (jSONObject.has(str2)) {
                        crc32.update(jSONObject.optString(str2).getBytes());
                    }
                }
                jSONObject.put("k14", f.a("AD_AND:" + String.valueOf(crc32.getValue())));
            } catch (Throwable th7) {
                th7.printStackTrace();
            }
            jSONObject.toString();
            int length = jSONObject.toString().getBytes().length;
            System.currentTimeMillis();
            byte[] magicWrapper = Orange.getInstance().getMagicWrapper(context, jSONObject.toString().getBytes(), 0);
            int length2 = magicWrapper.length;
            this.f90316b = URLEncoder.encode(Base64.encodeToString(magicWrapper, 0), "utf-8");
        } catch (Throwable th8) {
            try {
                th8.printStackTrace();
                this.f90316b = "KWE_PE";
                responseDfpCallback.onFailed(-1, f.a(th8));
            } catch (Throwable th9) {
                this.f90317c.unlock();
                throw th9;
            }
        }
        this.f90317c.unlock();
        if (TextUtils.isEmpty(this.f90316b)) {
            this.f90316b = "KWE_N";
        }
        return this.f90316b;
    }
}
