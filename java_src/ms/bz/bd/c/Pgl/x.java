package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class x extends pblz.pgla {
    x() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    protected final Object c(long j10, String str, Object obj) throws Throwable {
        Throwable thTt = u1.c().tt();
        if (thTt == null) {
            return null;
        }
        StackTraceElement[] stackTrace = thTt.getStackTrace();
        if (stackTrace.length < 4) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 1; i10 < 4; i10++) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            if (stackTraceElement != null && !TextUtils.isEmpty(stackTraceElement.getClassName())) {
                Class<?> cls = Class.forName(stackTrace[i10].getClassName());
                u1 u1VarC = u1.c();
                String methodName = stackTrace[i10].getMethodName();
                u1VarC.getClass();
                ArrayList arrayList2 = new ArrayList();
                if (!TextUtils.isEmpty(methodName)) {
                    for (Method method : cls.getDeclaredMethods()) {
                        if (method != null && method.getName().equals(methodName)) {
                            arrayList2.add(method);
                        }
                    }
                }
                arrayList.addAll(arrayList2);
            }
        }
        return arrayList;
    }
}
