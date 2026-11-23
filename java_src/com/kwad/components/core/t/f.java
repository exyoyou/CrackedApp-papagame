package com.kwad.components.core.t;

import androidx.annotation.Nullable;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes2.dex */
public final class f {
    public static String a(StackTraceElement stackTraceElement) {
        return stackTraceElement.getClassName() + o0.f49827a + stackTraceElement.getMethodName();
    }

    public static boolean bl(@Nullable String str) {
        if (str == null) {
            return false;
        }
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            if (a(stackTraceElement).equals(str)) {
                return true;
            }
        }
        return false;
    }
}
