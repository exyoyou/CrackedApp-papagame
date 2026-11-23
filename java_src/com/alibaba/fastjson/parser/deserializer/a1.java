package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class a1 implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a1 f6550a = new a1();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.j();
            return null;
        }
        if (dVarZ.b() != 12 && dVarZ.b() != 16) {
            throw new JSONException("syntax error: " + com.alibaba.fastjson.parser.h.a(dVarZ.b()));
        }
        String strR = null;
        String strR2 = null;
        String strR3 = null;
        int I = 0;
        while (true) {
            String strC0 = dVarZ.c0(cVar.M());
            if (strC0 == null) {
                if (dVarZ.b() == 13) {
                    dVarZ.l(16);
                    break;
                }
                if (dVarZ.b() != 16 || !dVarZ.c(Feature.AllowArbitraryCommas)) {
                }
            }
            dVarZ.L(4);
            if ("className".equals(strC0)) {
                if (dVarZ.b() == 8) {
                    strR = null;
                } else {
                    if (dVarZ.b() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strR = dVarZ.R();
                }
            } else if ("methodName".equals(strC0)) {
                if (dVarZ.b() == 8) {
                    strR2 = null;
                } else {
                    if (dVarZ.b() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strR2 = dVarZ.R();
                }
            } else if ("fileName".equals(strC0)) {
                if (dVarZ.b() == 8) {
                    strR3 = null;
                } else {
                    if (dVarZ.b() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strR3 = dVarZ.R();
                }
            } else if ("lineNumber".equals(strC0)) {
                if (dVarZ.b() == 8) {
                    I = 0;
                } else {
                    if (dVarZ.b() != 2) {
                        throw new JSONException("syntax error");
                    }
                    I = dVarZ.I();
                }
            } else if ("nativeMethod".equals(strC0)) {
                if (dVarZ.b() != 8 && dVarZ.b() != 6 && dVarZ.b() != 7) {
                    throw new JSONException("syntax error");
                }
                dVarZ.l(16);
            } else {
                if (strC0 != com.alibaba.fastjson.a.DEFAULT_TYPE_KEY) {
                    throw new JSONException("syntax error : " + strC0);
                }
                if (dVarZ.b() == 4) {
                    String strR4 = dVarZ.R();
                    if (!strR4.equals("java.lang.StackTraceElement")) {
                        throw new JSONException("syntax error : " + strR4);
                    }
                } else if (dVarZ.b() != 8) {
                    throw new JSONException("syntax error");
                }
            }
            if (dVarZ.b() == 13) {
                dVarZ.l(16);
                break;
            }
        }
        return (T) new StackTraceElement(strR, strR2, strR3, I);
    }
}
