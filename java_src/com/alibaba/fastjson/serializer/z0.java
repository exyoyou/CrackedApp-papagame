package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class z0 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0[] f6786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0[] f6787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private transient Map<String, h0> f6788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6789d;

    public z0(Class<?> cls) {
        this(cls, (Map<String, String>) null);
    }

    static Map<String, String> b(String... strArr) {
        HashMap map = new HashMap();
        for (String str : strArr) {
            map.put(str, str);
        }
        return map;
    }

    public h0 c(com.alibaba.fastjson.util.e eVar) {
        return eVar.j() == Number.class ? new g1(eVar) : new i1(eVar);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        boolean z10;
        Class<?> clsJ;
        Field fieldA;
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            v1VarW.p0();
            return;
        }
        if (k(v0Var, obj, i10)) {
            return;
        }
        h0[] h0VarArr = v1VarW.g(SerializerFeature.SortField) ? this.f6787b : this.f6786a;
        r1 context = v0Var.getContext();
        v0Var.E(context, obj, obj2, this.f6789d, i10);
        boolean zI = i(v0Var);
        char c10 = zI ? '[' : '{';
        char c11 = zI ? ']' : '}';
        try {
            try {
                v1VarW.append(c10);
                if (h0VarArr.length > 0 && v1VarW.g(SerializerFeature.PrettyFormat)) {
                    v0Var.x();
                    v0Var.B();
                }
                if (!j(v0Var, obj, type, obj2) || obj.getClass() == type) {
                    z10 = false;
                } else {
                    v1VarW.v(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
                    v0Var.K(obj.getClass());
                    z10 = true;
                }
                boolean z11 = j0.w(v0Var, obj, z10 ? StringUtil.COMMA : (char) 0) == ',';
                for (h0 h0Var : h0VarArr) {
                    if ((!v0Var.y(SerializerFeature.SkipTransientField) || (fieldA = h0Var.a()) == null || !Modifier.isTransient(fieldA.getModifiers())) && j0.i(v0Var, obj, h0Var.c())) {
                        Object objD = h0Var.d(obj);
                        if (j0.g(v0Var, obj, h0Var.c(), objD)) {
                            String strR = j0.r(v0Var, obj, h0Var.c(), objD);
                            Object objU = j0.u(v0Var, obj, h0Var.c(), objD);
                            if ((objU != null || zI || h0Var.e() || v0Var.y(SerializerFeature.WriteMapNullValue)) && (objU == null || !v0Var.y(SerializerFeature.NotWriteDefaultValue) || (((clsJ = h0Var.f6697a.j()) != Byte.TYPE || !(objU instanceof Byte) || ((Byte) objU).byteValue() != 0) && ((clsJ != Short.TYPE || !(objU instanceof Short) || ((Short) objU).shortValue() != 0) && ((clsJ != Integer.TYPE || !(objU instanceof Integer) || ((Integer) objU).intValue() != 0) && ((clsJ != Long.TYPE || !(objU instanceof Long) || ((Long) objU).longValue() != 0) && ((clsJ != Float.TYPE || !(objU instanceof Float) || ((Float) objU).floatValue() != 0.0f) && ((clsJ != Double.TYPE || !(objU instanceof Double) || ((Double) objU).doubleValue() != 0.0d) && (clsJ != Boolean.TYPE || !(objU instanceof Boolean) || ((Boolean) objU).booleanValue()))))))))) {
                                if (z11) {
                                    v1VarW.append(StringUtil.COMMA);
                                    if (v1VarW.g(SerializerFeature.PrettyFormat)) {
                                        v0Var.B();
                                    }
                                }
                                if (strR != h0Var.c()) {
                                    if (!zI) {
                                        v1VarW.v(strR);
                                    }
                                    v0Var.K(objU);
                                } else if (objD != objU) {
                                    if (!zI) {
                                        h0Var.f(v0Var);
                                    }
                                    v0Var.K(objU);
                                } else if (zI) {
                                    h0Var.h(v0Var, objU);
                                } else {
                                    h0Var.g(v0Var, objU);
                                }
                                z11 = true;
                            }
                        }
                    }
                }
                char c12 = StringUtil.COMMA;
                if (!z11) {
                    c12 = 0;
                }
                j0.v(v0Var, obj, c12);
                if (h0VarArr.length > 0 && v1VarW.g(SerializerFeature.PrettyFormat)) {
                    v0Var.d();
                    v0Var.B();
                }
                v1VarW.append(c11);
                v0Var.C(context);
            } catch (Exception e10) {
                throw new JSONException("write javaBean error", e10);
            }
        } catch (Throwable th) {
            v0Var.C(context);
            throw th;
        }
    }

    public Object e(Object obj, String str) throws Exception {
        h0 h0Var = g().get(str);
        if (h0Var == null) {
            return null;
        }
        return h0Var.d(obj);
    }

    public List<Object> f(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.f6787b.length);
        for (h0 h0Var : this.f6787b) {
            arrayList.add(h0Var.d(obj));
        }
        return arrayList;
    }

    public Map<String, h0> g() {
        if (this.f6788c == null) {
            HashMap map = new HashMap(this.f6786a.length);
            for (h0 h0Var : this.f6787b) {
                map.put(h0Var.c(), h0Var);
            }
            this.f6788c = map;
        }
        return this.f6788c;
    }

    public h0[] h() {
        return this.f6786a;
    }

    public boolean i(v0 v0Var) {
        int i10 = this.f6789d;
        SerializerFeature serializerFeature = SerializerFeature.BeanToArray;
        if (SerializerFeature.isEnabled(i10, serializerFeature)) {
            return true;
        }
        return v0Var.y(serializerFeature);
    }

    protected boolean j(v0 v0Var, Object obj, Type type, Object obj2) {
        return v0Var.z(type, obj);
    }

    public boolean k(v0 v0Var, Object obj, int i10) {
        r1 context = v0Var.getContext();
        if ((context != null && SerializerFeature.isEnabled(context.a(), i10, SerializerFeature.DisableCircularReferenceDetect)) || !v0Var.c(obj)) {
            return false;
        }
        v0Var.O(obj);
        return true;
    }

    public z0(Class<?> cls, String... strArr) {
        this(cls, b(strArr));
    }

    public z0(Class<?> cls, Map<String, String> map) {
        this.f6789d = 0;
        this.f6789d = com.alibaba.fastjson.util.k.G(cls);
        ArrayList arrayList = new ArrayList();
        Iterator<com.alibaba.fastjson.util.e> it2 = com.alibaba.fastjson.util.k.z(cls, map, false).iterator();
        while (it2.hasNext()) {
            arrayList.add(c(it2.next()));
        }
        this.f6786a = (h0[]) arrayList.toArray(new h0[arrayList.size()]);
        ArrayList arrayList2 = new ArrayList();
        Iterator<com.alibaba.fastjson.util.e> it3 = com.alibaba.fastjson.util.k.z(cls, map, true).iterator();
        while (it3.hasNext()) {
            arrayList2.add(c(it3.next()));
        }
        this.f6787b = (h0[]) arrayList2.toArray(new h0[arrayList2.size()]);
    }
}
