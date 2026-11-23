package com.kuaishou.weapon.p0.jni;

import android.content.Context;
import android.text.TextUtils;
import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.bf;
import com.kuaishou.weapon.p0.bn;
import com.kuaishou.weapon.p0.bo;
import com.kuaishou.weapon.p0.ci;
import com.kuaishou.weapon.p0.dd;
import com.kuaishou.weapon.p0.h;
import com.kuaishou.weapon.p0.t;
import java.lang.reflect.Member;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class Engine {
    private static volatile Engine instance;
    public static volatile int loadSoCount;
    public static volatile boolean loadSuccess;
    public static volatile String soPath;
    public static volatile String soVersion;

    public static native String abc();

    public static native String bcd();

    public static synchronized Engine getInstance(Context context) {
        if (!TextUtils.isEmpty(soVersion) && !loadSuccess && instance == null) {
            if (instance == null) {
                instance = new Engine();
            }
            h hVarA = h.a(context, "re_po_rt");
            try {
                if (!bn.a(context, bo.f74527d + soVersion.replace(o0.f49827a, "") + ".so")) {
                    loadSuccess = false;
                    return instance;
                }
                String strB = hVarA.b(dd.f74729f, "");
                if (TextUtils.isEmpty(strB)) {
                    strB = soVersion;
                    hVarA.c(dd.f74729f, strB, false);
                }
                loadSoCount = hVarA.c(dd.bg);
                if (!TextUtils.equals(strB, soVersion)) {
                    String str = soVersion;
                    loadSoCount = 0;
                    hVarA.c(dd.f74729f, str, false);
                }
                if (loadSoCount + 1 < 10) {
                    loadSoCount++;
                    hVarA.d(dd.bg, loadSoCount);
                    System.loadLibrary(bo.f74527d + soVersion.replace(o0.f49827a, ""));
                    bcd();
                    loadSoCount = 0;
                    loadSuccess = true;
                }
                hVarA.d(dd.bg, loadSoCount);
            } catch (Throwable th) {
                loadSuccess = false;
                try {
                    HashMap map = new HashMap();
                    map.put("e", th.getMessage());
                    map.put("v", soVersion);
                    map.put(t.f74879d, ci.f74603k);
                    bf.a(context, ci.f74594b, map);
                } catch (Exception unused) {
                }
            }
        }
        return instance;
    }

    public static native int mmo(Member member, int i10, int i11);

    public static native int mqc(Member member, int i10);

    public static native int off();

    public static native String tao(int i10, long j10, Object obj);

    public native byte[] ac(byte[] bArr, byte[] bArr2);

    public native byte[] ar(byte[] bArr, byte[] bArr2);

    public native String cde();

    public native byte[] dc(byte[] bArr, byte[] bArr2);

    public native String def();

    public native byte[] dr(byte[] bArr, byte[] bArr2);

    public native String efg();

    public native String eopq(int i10, int i11, int i12, String str);

    public native String fgh();

    public native String ghi();

    public native String hij();

    public native String klm(int i10, String str);

    public native String nop();

    public native String pqr(int i10, int i11, int i12, String str);

    public native String qrs();

    public native String stu(int i10, int i11, int i12, int i13, String str);
}
