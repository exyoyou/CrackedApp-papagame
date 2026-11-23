package com.byazt.yx;

import com.byazt.eg.my;
import com.byazt.eg.yv;
import java.net.Proxy;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 252, 42})
public final class i {
    public static String c(yv yvVar, Proxy.Type type) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(yvVar.tt());
        sb2.append(' ');
        if (tt(yvVar, type)) {
            sb2.append(yvVar.c());
        } else {
            sb2.append(c(yvVar.c()));
        }
        sb2.append(" HTTP/1.1");
        return sb2.toString();
    }

    private static boolean tt(yv yvVar, Proxy.Type type) {
        return !yvVar.x() && type == Proxy.Type.HTTP;
    }

    public static String c(my myVar) {
        String strI = myVar.i();
        try {
            String strSl = myVar.sl();
            if (strSl != null) {
                return strI + '?' + strSl;
            }
        } catch (OutOfMemoryError unused) {
        }
        return strI;
    }
}
