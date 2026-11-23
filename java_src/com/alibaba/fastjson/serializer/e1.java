package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes7.dex */
public class e1 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static e1 f6692a = new e1();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        Map treeMap;
        boolean z10;
        Object objU;
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            v1VarW.p0();
            return;
        }
        Map map = (Map) obj;
        if (!v1VarW.g(SerializerFeature.SortField) || (map instanceof SortedMap) || (map instanceof LinkedHashMap)) {
            treeMap = map;
        } else {
            try {
                treeMap = new TreeMap(map);
            } catch (Exception unused) {
                treeMap = map;
            }
        }
        if (v0Var.c(obj)) {
            v0Var.O(obj);
            return;
        }
        r1 context = v0Var.getContext();
        v0Var.D(context, obj, obj2, 0);
        try {
            v1VarW.m('{');
            v0Var.x();
            if (v1VarW.g(SerializerFeature.WriteClassName)) {
                v1VarW.v(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
                v1VarW.q0(obj.getClass().getName());
                z10 = false;
            } else {
                z10 = true;
            }
            Class<?> cls = null;
            j1 j1Var = null;
            for (Map.Entry entry : treeMap.entrySet()) {
                Object value = entry.getValue();
                Object key = entry.getKey();
                List<o1> listS = v0Var.s();
                if (listS != null && listS.size() > 0) {
                    if (key == null || (key instanceof String)) {
                        if (!j0.i(v0Var, obj, (String) key)) {
                        }
                    } else if ((key.getClass().isPrimitive() || (key instanceof Number)) && !j0.i(v0Var, obj, com.alibaba.fastjson.a.toJSONString(key))) {
                    }
                }
                List<n1> listQ = v0Var.q();
                if (listQ != null && listQ.size() > 0) {
                    if (key == null || (key instanceof String)) {
                        if (!j0.g(v0Var, obj, (String) key, value)) {
                        }
                    } else if ((key.getClass().isPrimitive() || (key instanceof Number)) && !j0.g(v0Var, obj, com.alibaba.fastjson.a.toJSONString(key), value)) {
                    }
                }
                List<f1> listN = v0Var.n();
                if (listN != null && listN.size() > 0) {
                    if (key == null || (key instanceof String)) {
                        key = j0.r(v0Var, obj, (String) key, value);
                    } else if (key.getClass().isPrimitive() || (key instanceof Number)) {
                        key = j0.r(v0Var, obj, com.alibaba.fastjson.a.toJSONString(key), value);
                    }
                }
                Object obj3 = key;
                List<e2> listV = v0Var.v();
                if (listV != null && listV.size() > 0) {
                    if (obj3 == null || (obj3 instanceof String)) {
                        objU = j0.u(v0Var, obj, (String) obj3, value);
                    } else if (obj3.getClass().isPrimitive() || (obj3 instanceof Number)) {
                        objU = j0.u(v0Var, obj, com.alibaba.fastjson.a.toJSONString(obj3), value);
                    }
                    value = objU;
                }
                if (value != null || v0Var.y(SerializerFeature.WriteMapNullValue)) {
                    if (obj3 instanceof String) {
                        String str = (String) obj3;
                        if (!z10) {
                            v1VarW.m(StringUtil.COMMA);
                        }
                        if (v1VarW.g(SerializerFeature.PrettyFormat)) {
                            v0Var.B();
                        }
                        v1VarW.x(str, true);
                    } else {
                        if (!z10) {
                            v1VarW.m(StringUtil.COMMA);
                        }
                        if (v1VarW.g(SerializerFeature.BrowserCompatible) || v1VarW.g(SerializerFeature.WriteNonStringKeyAsString)) {
                            v0Var.L(com.alibaba.fastjson.a.toJSONString(obj3));
                        } else {
                            v0Var.K(obj3);
                        }
                        v1VarW.m(':');
                    }
                    if (value == null) {
                        v1VarW.p0();
                    } else {
                        Class<?> cls2 = value.getClass();
                        if (cls2 == cls) {
                            j1Var.d(v0Var, value, obj3, null, 0);
                        } else {
                            j1 j1VarO = v0Var.o(cls2);
                            j1VarO.d(v0Var, value, obj3, null, 0);
                            j1Var = j1VarO;
                            cls = cls2;
                        }
                    }
                    z10 = false;
                }
            }
            v0Var.C(context);
            v0Var.d();
            if (v1VarW.g(SerializerFeature.PrettyFormat) && treeMap.size() > 0) {
                v0Var.B();
            }
            v1VarW.m('}');
        } catch (Throwable th) {
            v0Var.C(context);
            throw th;
        }
    }
}
