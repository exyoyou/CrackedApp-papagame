package com.tencent.bugly.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class bd implements NativeExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f83447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final as f83448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final aa f83449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ac f83450d;

    public bd(Context context, aa aaVar, as asVar, ac acVar) {
        this.f83447a = context;
        this.f83448b = asVar;
        this.f83449c = aaVar;
        this.f83450d = acVar;
    }

    private static Map<String, String> a(String[] strArr) {
        HashMap map = new HashMap(strArr == null ? 1 : strArr.length);
        if (strArr != null) {
            for (int i10 = 0; i10 < strArr.length; i10++) {
                String str = strArr[i10];
                if (str != null) {
                    al.a("Extra message[%d]: %s", Integer.valueOf(i10), str);
                    String[] strArrSplit = str.split(SimpleComparison.EQUAL_TO_OPERATION);
                    if (strArrSplit.length == 2) {
                        map.put(strArrSplit[0], strArrSplit[1]);
                    } else {
                        al.d("bad extraMsg %s", str);
                    }
                }
            }
        } else {
            al.c("not found extraMsg", new Object[0]);
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0040  */
    /* JADX WARN: Code duplicated, block: B:21:0x0048  */
    /* JADX WARN: Code duplicated, block: B:23:0x0052 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0053  */
    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final boolean getAndUpdateAnrState() {
        boolean z10;
        if (ay.a() == null) {
            return false;
        }
        ay ayVarA = ay.a();
        if (ayVarA.f83409a.get()) {
            al.c("anr is processing, return", new Object[0]);
            return false;
        }
        ActivityManager activityManager = ayVarA.f83410b;
        if (aa.i()) {
            if (!z.a(activityManager) && az.a(activityManager, 0L) != null) {
                z10 = true;
            }
            if (!z10) {
                al.c("proc is not in anr, wait next check", new Object[0]);
                return false;
            }
            if (ayVarA.a(System.currentTimeMillis())) {
                return false;
            }
            return ayVarA.a(true);
        }
        al.c("not allow collect anr process info, anr monitor is disabled", new Object[0]);
        z10 = false;
        if (!z10) {
            al.c("proc is not in anr, wait next check", new Object[0]);
            return false;
        }
        if (ayVarA.a(System.currentTimeMillis())) {
            return false;
        }
        return ayVarA.a(true);
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final void handleNativeException(int i10, int i11, long j10, long j11, String str, String str2, String str3, String str4, int i12, String str5, int i13, int i14, int i15, String str6, String str7) {
        al.a("Native Crash Happen v1", new Object[0]);
        handleNativeException2(i10, i11, j10, j11, str, str2, str3, str4, i12, str5, i13, i14, i15, str6, str7, null);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x017b A[PHI: r4
      0x017b: PHI (r4v10 java.lang.String) = (r4v9 java.lang.String), (r4v14 java.lang.String) binds: [B:37:0x0151, B:41:0x0161] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:77:0x0230  */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final void handleNativeException2(int i10, int i11, long j10, long j11, String str, String str2, String str3, String str4, int i12, String str5, int i13, int i14, int i15, String str6, String str7, String[] strArr) {
        String str8;
        String string;
        boolean z10;
        String str9;
        String str10;
        al.a("Native Crash Happen v2", new Object[0]);
        if (i12 > 0) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("(");
                str8 = str5;
                sb2.append(str8);
                sb2.append(")");
                string = sb2.toString();
            } catch (Throwable th) {
                th = th;
                if (al.a(th)) {
                }
                th.printStackTrace();
            }
        } else {
            str8 = str5;
            string = str;
        }
        String strA = be.a(str3);
        Map<String, String> mapA = a(strArr);
        String str11 = mapA.get("HasPendingException");
        if (str11 == null || !str11.equals("true")) {
            z10 = false;
        } else {
            al.a("Native crash happened with a Java pending exception.", new Object[0]);
            z10 = true;
        }
        aa aaVar = this.f83449c;
        String str12 = mapA.get("ExceptionProcessName");
        if (str12 == null || str12.length() == 0) {
            str12 = aaVar.f83185e;
        } else {
            al.c("Name of crash process: %s", str12);
        }
        String str13 = str12;
        String str14 = mapA.get("ExceptionThreadName");
        al.c("crash thread name:%s tid:%s", str14, Integer.valueOf(i11));
        if (TextUtils.isEmpty(str14)) {
            str9 = Thread.currentThread().getName() + "(" + i11 + ")";
        } else {
            str9 = str14 + "(" + i11 + ")";
        }
        long j12 = (j11 / 1000) + (j10 * 1000);
        String str15 = mapA.get("SysLogPath");
        String str16 = mapA.get("JniLogPath");
        if (!this.f83450d.b()) {
            al.d("no remote but still store!", new Object[0]);
        }
        if (!this.f83450d.c().f83101f && this.f83450d.b()) {
            al.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
            as.a("NATIVE_CRASH", ap.a(), str13, str9, string + "\n" + str2 + "\n" + strA, null);
            ap.c(str4);
            return;
        }
        String str17 = i12 > 0 ? "KERNEL" : str8;
        String strA2 = t7.a.f97139c;
        if (i12 > 0) {
            str10 = strA2;
        } else {
            if (i13 > 0) {
                strA2 = z.a(i13);
            }
            if (strA2.equals(String.valueOf(i13))) {
                str10 = strA2;
            } else {
                str10 = strA2 + "(" + i13 + ")";
            }
        }
        String str18 = string;
        try {
            CrashDetailBean crashDetailBeanPackageCrashDatas = packageCrashDatas(str13, str9, j12, string, str2, strA, str17, str10, str4, str15, str16, str7, null, null, true, z10);
            if (crashDetailBeanPackageCrashDatas == null) {
                al.e("pkg crash datas fail!", new Object[0]);
                return;
            }
            as.a("NATIVE_CRASH", ap.a(), str13, str9, str18 + "\n" + str2 + "\n" + strA, crashDetailBeanPackageCrashDatas);
            try {
                as asVar = this.f83448b;
                if (asVar == null) {
                    al.d("crashHandler is null. Won't upload native crash.", new Object[0]);
                    return;
                }
                boolean z11 = !asVar.a(crashDetailBeanPackageCrashDatas, true);
                be.a(true, NativeCrashHandler.getInstance() != null ? NativeCrashHandler.getDumpFilePath() : null);
                if (z11) {
                    this.f83448b.b(crashDetailBeanPackageCrashDatas, true);
                }
                this.f83448b.a(crashDetailBeanPackageCrashDatas);
                at.a().f83361t.b();
            } catch (Throwable th2) {
                th = th2;
                if (al.a(th)) {
                    th.printStackTrace();
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final CrashDetailBean packageCrashDatas(String str, String str2, long j10, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, byte[] bArr, Map<String, String> map, boolean z10, boolean z11) {
        int i10;
        String str12;
        int iIndexOf;
        boolean zI = at.a().i();
        if (zI) {
            al.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.f83121b = 1;
        crashDetailBean.f83124e = this.f83449c.j();
        aa aaVar = this.f83449c;
        crashDetailBean.f83125f = aaVar.f83195p;
        crashDetailBean.f83126g = aaVar.t();
        crashDetailBean.f83132m = this.f83449c.g();
        crashDetailBean.f83133n = str3;
        crashDetailBean.f83134o = zI ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        crashDetailBean.f83135p = str4;
        String str13 = str5 != null ? str5 : "";
        crashDetailBean.f83136q = str13;
        crashDetailBean.f83137r = j10;
        crashDetailBean.f83140u = ap.c(str13.getBytes());
        crashDetailBean.A = str;
        crashDetailBean.B = str2;
        crashDetailBean.L = this.f83449c.v();
        crashDetailBean.f83127h = this.f83449c.s();
        crashDetailBean.f83128i = this.f83449c.D();
        crashDetailBean.f83141v = str8;
        String dumpFilePath = NativeCrashHandler.getInstance() != null ? NativeCrashHandler.getDumpFilePath() : null;
        String strA = be.a(dumpFilePath, str8);
        if (!ap.b(strA)) {
            crashDetailBean.Z = strA;
        }
        crashDetailBean.f83120aa = be.b(dumpFilePath);
        crashDetailBean.f83142w = be.a(str9, at.f83346f, at.f83351k, at.f83356p);
        crashDetailBean.f83143x = be.a(str10, at.f83346f, null, true);
        crashDetailBean.N = str7;
        crashDetailBean.O = str6;
        crashDetailBean.P = str11;
        crashDetailBean.F = this.f83449c.n();
        crashDetailBean.G = this.f83449c.m();
        crashDetailBean.H = this.f83449c.o();
        crashDetailBean.I = ab.b(this.f83447a);
        crashDetailBean.J = ab.g();
        crashDetailBean.K = ab.h();
        if (z10) {
            crashDetailBean.C = ab.j();
            crashDetailBean.D = ab.f();
            crashDetailBean.E = ab.l();
            crashDetailBean.f83144y = ao.a();
            aa aaVar2 = this.f83449c;
            crashDetailBean.Q = aaVar2.f83182b;
            crashDetailBean.R = aaVar2.a();
            crashDetailBean.f83145z = ap.a(this.f83449c.R, at.f83348h);
            int iIndexOf2 = crashDetailBean.f83136q.indexOf("java:\n");
            if (iIndexOf2 > 0 && (i10 = iIndexOf2 + 6) < crashDetailBean.f83136q.length()) {
                String str14 = crashDetailBean.f83136q;
                String strSubstring = str14.substring(i10, str14.length() - 1);
                if (strSubstring.length() > 0 && crashDetailBean.f83145z.containsKey(crashDetailBean.B) && (iIndexOf = (str12 = crashDetailBean.f83145z.get(crashDetailBean.B)).indexOf(strSubstring)) > 0) {
                    String strSubstring2 = str12.substring(iIndexOf);
                    crashDetailBean.f83145z.put(crashDetailBean.B, strSubstring2);
                    crashDetailBean.f83136q = crashDetailBean.f83136q.substring(0, i10);
                    crashDetailBean.f83136q += strSubstring2;
                }
            }
            if (str == null) {
                crashDetailBean.A = this.f83449c.f83185e;
            }
            crashDetailBean.U = this.f83449c.C();
            aa aaVar3 = this.f83449c;
            crashDetailBean.V = aaVar3.f83204y;
            crashDetailBean.W = aaVar3.w();
            crashDetailBean.X = this.f83449c.B();
        } else {
            crashDetailBean.C = -1L;
            crashDetailBean.D = -1L;
            crashDetailBean.E = -1L;
            if (crashDetailBean.f83142w == null) {
                crashDetailBean.f83142w = "This crash occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
            }
            crashDetailBean.Q = -1L;
            crashDetailBean.U = -1;
            crashDetailBean.V = -1;
            crashDetailBean.W = map;
            crashDetailBean.X = this.f83449c.B();
            crashDetailBean.f83145z = null;
            if (str == null) {
                crashDetailBean.A = "unknown(record)";
            }
            if (bArr != null) {
                crashDetailBean.f83144y = bArr;
            }
        }
        return crashDetailBean;
    }
}
