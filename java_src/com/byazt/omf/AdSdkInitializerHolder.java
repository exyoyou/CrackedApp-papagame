package com.byazt.omf;

import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import androidx.annotation.Keep;
import com.byazt.ut.ATSKeep;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 31, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_L2_VALUE})
public class AdSdkInitializerHolder implements com.byazt.dna.i, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile ve f17929c;
    public static volatile Object tt;

    private static int c() {
        try {
            return TTAdSdk.class.getField("SDK_VERSION_CODE").getInt(null);
        } catch (Throwable th) {
            com.byazt.ukr.yp.c().c("init", th);
            com.byazt.nr.m.c(th);
            return 0;
        }
    }

    @Keep
    public static Object getNewInstance(Bundle bundle) {
        com.byazt.dna.my myVar;
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        if (f17929c == null) {
            synchronized (AdSdkInitializerHolder.class) {
                if (f17929c == null) {
                    f17929c = new ve(bundle);
                    if (p.f18091c.booleanValue() && (myVar = (com.byazt.dna.my) com.byazt.ut.uj.getService(com.kuaishou.weapon.p0.t.f74888m)) != null) {
                        tt = myVar.getDispatchAdSdkInitializer(bundle, f17929c);
                    }
                }
            }
        }
        int iC = bundle.getInt("api_sdk_version", 0);
        if (iC == 0) {
            iC = c();
            com.byazt.nr.m.c("wzj,通过反射取apiSdkVersion值=".concat(String.valueOf(iC)));
            if (iC == 0) {
                return null;
            }
        }
        com.byazt.mta.c.c().c(iC);
        if (iC < 6803) {
            return tt != null ? new com.byazt.ap.tt(n0.c.a(tt)) : new com.byazt.ap.c(f17929c);
        }
        return tt != null ? tt : f17929c;
    }

    public static boolean hasDispatchAdSdkInitializer() {
        return tt != null;
    }

    public static boolean isSdkInitSuccess() {
        if (f17929c != null) {
            return f17929c.isInitSuccess();
        }
        return false;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        return getInitialInstance((Bundle) sparseArray.get(1));
    }

    @Override // com.byazt.dna.i
    public Object getInitialInstance(Bundle bundle) {
        return getNewInstance(bundle);
    }
}
