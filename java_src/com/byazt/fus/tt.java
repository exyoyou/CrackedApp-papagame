package com.byazt.fus;

import android.annotation.SuppressLint;
import android.util.Log;
import com.byazt.bog.a;
import com.bytedance.pangle.GlobalParam;
import dalvik.system.VMRuntime;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1805, 13})
public class tt implements ve {
    @Override // com.byazt.fus.ve
    @SuppressLint({"DiscouragedPrivateApi"})
    public void invokeHiddenApiRestrictions() {
        GlobalParam.getInstance().getReporter().c("zeus_stage_flipped", "v1");
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Method method = (Method) declaredMethod.invoke(VMRuntime.class, "getRuntime", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, new Object[0]);
            Method method2 = (Method) declaredMethod.invoke(VMRuntime.class, "setHiddenApiExemptions", new Class[]{String[].class});
            method2.setAccessible(true);
            method2.invoke(objInvoke, new String[]{"L"});
        } catch (Exception e10) {
            GlobalParam.getInstance().getReporter().c("zeus_stage_flipped", "V1 invokeHiddenApiRestrictions fail: " + Log.getStackTraceString(e10));
            a.n("FlippedV1Impl", "V1 invokeHiddenApiRestrictions fail: " + Log.getStackTraceString(e10));
        }
    }
}
