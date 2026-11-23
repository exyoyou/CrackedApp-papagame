package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.Constructor;
import java.lang.reflect.Type;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class c1 extends v {
    public c1(com.alibaba.fastjson.parser.k kVar, Class<?> cls) {
        super(kVar, cls);
    }

    private Throwable p(String str, Throwable th, Class<?> cls) throws Exception {
        Constructor<?> constructor = null;
        Constructor<?> constructor2 = null;
        Constructor<?> constructor3 = null;
        for (Constructor<?> constructor4 : cls.getConstructors()) {
            if (constructor4.getParameterTypes().length == 0) {
                constructor3 = constructor4;
            } else if (constructor4.getParameterTypes().length == 1 && constructor4.getParameterTypes()[0] == String.class) {
                constructor2 = constructor4;
            } else if (constructor4.getParameterTypes().length == 2 && constructor4.getParameterTypes()[0] == String.class && constructor4.getParameterTypes()[1] == Throwable.class) {
                constructor = constructor4;
            }
        }
        if (constructor != null) {
            return (Throwable) constructor.newInstance(str, th);
        }
        if (constructor2 != null) {
            return (Throwable) constructor2.newInstance(str);
        }
        if (constructor3 != null) {
            return (Throwable) constructor3.newInstance(new Object[0]);
        }
        return null;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.v, com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0038  */
    @Override // com.alibaba.fastjson.parser.deserializer.v, com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        Class<?> clsK;
        Object obj2;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.j();
            return null;
        }
        if (cVar.J() == 2) {
            cVar.y0(0);
        } else if (dVarZ.b() != 12) {
            throw new JSONException("syntax error");
        }
        if (type == null || !(type instanceof Class)) {
            clsK = null;
        } else {
            clsK = (Class) type;
            if (!Throwable.class.isAssignableFrom(clsK)) {
                clsK = null;
            }
        }
        HashMap map = new HashMap();
        Throwable th = null;
        String strR = null;
        StackTraceElement[] stackTraceElementArr = null;
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
            if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(strC0)) {
                if (dVarZ.b() != 4) {
                    throw new JSONException("syntax error");
                }
                clsK = com.alibaba.fastjson.util.k.K(dVarZ.R());
                dVarZ.l(16);
            } else if ("message".equals(strC0)) {
                if (dVarZ.b() == 8) {
                    strR = null;
                } else {
                    if (dVarZ.b() != 4) {
                        throw new JSONException("syntax error");
                    }
                    strR = dVarZ.R();
                }
                dVarZ.j();
            } else if ("cause".equals(strC0)) {
                th = (Throwable) c(cVar, null, "cause");
            } else if ("stackTrace".equals(strC0)) {
                stackTraceElementArr = (StackTraceElement[]) cVar.m0(StackTraceElement[].class);
            } else {
                map.put(strC0, cVar.Q());
            }
            if (dVarZ.b() == 13) {
                dVarZ.l(16);
                break;
            }
        }
        if (clsK == null) {
            obj2 = (T) new Exception(strR, th);
        } else {
            try {
                obj2 = (T) p(strR, th, clsK);
                if (obj2 == null) {
                    obj2 = (T) new Exception(strR, th);
                }
            } catch (Exception e10) {
                throw new JSONException("create instance error", e10);
            }
        }
        if (stackTraceElementArr != null) {
            ((Throwable) obj2).setStackTrace(stackTraceElementArr);
        }
        return (T) obj2;
    }
}
