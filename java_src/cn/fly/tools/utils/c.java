package cn.fly.tools.utils;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import cn.fly.commons.C1293r;
import cn.fly.tools.FlyLog;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2276a;

    public c(Context context) {
        this.f2276a = context;
    }

    private boolean b() {
        try {
            Object objInvokeStaticMethodNoThrow = ReflectHelper.invokeStaticMethodNoThrow(ReflectHelper.importClassNoThrow(cn.fly.commons.a.m.a("027ef3edekelejedemelgjemfmfdgjPjgCeghmekelAkgKek_j+ejNgOgj"), null), cn.fly.commons.a.m.a("003Ofk=gj"), "", "ro.build.tags");
            String strValueOf = objInvokeStaticMethodNoThrow != null ? String.valueOf(objInvokeStaticMethodNoThrow) : null;
            return (strValueOf != null && strValueOf.contains(cn.fly.commons.a.m.a("009jg,gj*j1ilfi9gXfdgj"))) || g();
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean c() {
        return "0".equals(cn.fly.tools.b.b.a(this.f2276a).a(cn.fly.commons.a.m.a("020%ekelemggelel.jQemfg5he*gjXiBemHhYelFdBfi]gLed")));
    }

    private boolean d() {
        String strA = cn.fly.tools.b.b.a(this.f2276a).a(cn.fly.commons.a.m.a("025(ekelemggelel!j5emeeFgVekejfgejOgXedggelelXjQgj*jejg"));
        if (strA != null) {
            return TextUtils.equals(strA.toLowerCase(), "orange") || TextUtils.equals(strA.toLowerCase(), "red");
        }
        return false;
    }

    private boolean e() {
        String strA = cn.fly.tools.b.b.a(this.f2276a).a(cn.fly.commons.a.m.a("027-ekelemggelel3j:emeeggeg%gjeCemedCgTeeejOdgAeigjSjejg"));
        return strA != null && TextUtils.equals(cn.fly.commons.a.m.a("0086ehDfh5elMdIfi,gOed"), strA.toLowerCase());
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009c  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    private boolean f() {
        Object objC;
        InputStream inputStream;
        ?? bufferedReader;
        int iMyPid = Process.myPid();
        StringBuilder sb2 = new StringBuilder();
        try {
            objC = C1293r.c(cn.fly.commons.a.m.a("010dejCjg?mk,ekel>dm") + (iMyPid + cn.fly.commons.a.m.a("007mZegelehJfj5gj")));
            try {
                inputStream = (InputStream) ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.a.m.a("0140fk4gj_ff:fkGehBj2fm[j<ekKge=eg"), null, new Object[0]);
                if (inputStream != null) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                sb2.append(line);
                                sb2.append("\n");
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    FlyLog.getInstance().d(th);
                                    C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                                    if (objC != null) {
                                        ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.a.m.a("007@edQg9gj6jDekelfd"), null, new Object[0]);
                                    }
                                } catch (Throwable th2) {
                                    C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                                    if (objC != null) {
                                        ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.a.m.a("007@edQg9gj6jDekelfd"), null, new Object[0]);
                                    }
                                    throw th2;
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = 0;
                    }
                } else {
                    bufferedReader = 0;
                }
                C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                if (objC != null) {
                    ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.a.m.a("007@edQg9gj6jDekelfd"), null, new Object[0]);
                }
            } catch (Throwable th4) {
                th = th4;
                inputStream = null;
                bufferedReader = inputStream;
                FlyLog.getInstance().d(th);
                C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                if (objC != null) {
                    ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.a.m.a("007@edQg9gj6jDekelfd"), null, new Object[0]);
                }
                return sb2.toString().contains(cn.fly.commons.a.m.a("006WegKeUfkejgjfi"));
            }
        } catch (Throwable th5) {
            th = th5;
            objC = null;
            inputStream = null;
        }
        return sb2.toString().contains(cn.fly.commons.a.m.a("006WegKeUfkejgjfi"));
    }

    private boolean g() {
        try {
            if (new File(cn.fly.commons.a.m.a("025m?gjfdgj)jgOeg[mekkm3fmehUkgKekehgj[g9ekemXek$fi")).exists()) {
                return true;
            }
            String[] strArr = {cn.fly.commons.a.m.a("012m.ed@ejemh]el!dehm"), cn.fly.commons.a.m.a("016mEedVejemh9el@dehm+ggej@fm"), cn.fly.commons.a.m.a("017mQed@ejemhRel2dehmNfjggej:fm"), cn.fly.commons.a.m.a("006m8gjggej^fm"), cn.fly.commons.a.m.a("008m7gjeh@mMggejSfm"), cn.fly.commons.a.m.a("012m5gjfdgj,jgJeg'm;ggej3fm"), cn.fly.commons.a.m.a("017m]gjfdgjGjgEeg2mIggej7fm(emBg5fj9jm"), cn.fly.commons.a.m.a("021mKgjfdgj;jgKeg,m%ggej$fm@fg8e@ejUh[gj.eSfg=gm"), cn.fly.commons.a.m.a("016mKgjfdgj:jgHegKm=gjedWmKfjggej:fm"), cn.fly.commons.a.m.a("025mNgjfdgjBjg eg:mLehgjekCm(ghEg1ilBfgg^edilekelelGjm"), cn.fly.commons.a.m.a("013mMgjfdgj)jg-egSmUfjggejKfm"), cn.fly.commons.a.m.a("013m]gjfdgj^jgNegJm;gjggejFfm"), cn.fly.commons.a.m.a("012mTee<gf@edelekZmSggej_fm"), cn.fly.commons.a.m.a("006mdedig"), cn.fly.commons.a.m.a("005m,ed)eje"), cn.fly.commons.a.m.a("004m+ed+g'ee")};
            for (int i10 = 0; i10 < 16; i10++) {
                if (new File(strArr[i10], cn.fly.commons.a.m.a("002_gjeh")).exists()) {
                    return true;
                }
            }
            for (int i11 = 0; i11 < 16; i11++) {
                if (new File(strArr[i11], cn.fly.commons.a.m.a("007:ggehgjfdggelfj")).exists()) {
                    return true;
                }
            }
            for (int i12 = 0; i12 < 16; i12++) {
                if (new File(strArr[i12], cn.fly.commons.a.m.a("0061eg;e9fkejgjfi")).exists()) {
                    return true;
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
        }
        return false;
    }

    public String a() {
        StringBuilder sb2 = new StringBuilder("");
        try {
            if (d()) {
                sb2.append("1");
            } else {
                sb2.append("0");
            }
            if (e()) {
                sb2.append("1");
            } else {
                sb2.append("0");
            }
            if (c()) {
                sb2.append("1");
            } else {
                sb2.append("0");
            }
            if (b()) {
                sb2.append("1");
            } else {
                sb2.append("0");
            }
            if (f()) {
                sb2.append("1");
            } else {
                sb2.append("0");
            }
        } catch (Throwable unused) {
        }
        return sb2.toString();
    }
}
