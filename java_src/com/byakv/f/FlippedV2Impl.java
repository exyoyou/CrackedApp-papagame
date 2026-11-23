package com.byakv.f;

import android.util.Log;
import androidx.annotation.Keep;
import com.byazt.bog.a;
import com.byazt.bzd.sp;
import com.byazt.fus.ve;
import com.bytedance.pangle.GlobalParam;
import dalvik.system.VMRuntime;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class FlippedV2Impl implements ve {
    public static final String TAG = "FlippedV2Impl";

    static {
        sp.c("pangleflipped");
    }

    private native Method getDeclaredMethod(Object obj, String str, Class<?>[] clsArr);

    @Override // com.byazt.fus.ve
    public void invokeHiddenApiRestrictions() {
        GlobalParam.getInstance().getReporter().c("zeus_stage_flipped", "v2");
        try {
            Method declaredMethod = getDeclaredMethod(VMRuntime.class, "getRuntime", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            Method declaredMethod2 = getDeclaredMethod(VMRuntime.class, "setHiddenApiExemptions", new Class[]{String[].class});
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(objInvoke, new String[]{"L"});
        } catch (Exception e10) {
            GlobalParam.getInstance().getReporter().c("zeus_stage_flipped", "V2 invokeHiddenApiRestrictions fail: " + Log.getStackTraceString(e10));
            a.n(TAG, "V2 invokeHiddenApiRestrictions fail: " + Log.getStackTraceString(e10));
        }
    }
}
