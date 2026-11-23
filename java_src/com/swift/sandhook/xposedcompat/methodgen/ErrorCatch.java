package com.swift.sandhook.xposedcompat.methodgen;

import com.swift.sandhook.SandHook;
import com.swift.sandhook.xposedcompat.XposedCompat;
import java.lang.reflect.Member;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class ErrorCatch {
    public static Object callOriginError(Member member, Method method, Object obj, Object[] objArr) throws Throwable {
        if (!XposedCompat.retryWhenCallOriginError) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method <");
        sb2.append(member.toString());
        sb2.append("> use invoke to call origin!");
        return SandHook.callOriginMethod(member, method, obj, objArr);
    }
}
