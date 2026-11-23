package com.alibaba.fastjson.serializer;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class b implements com.alibaba.fastjson.asm.i {
    private com.alibaba.fastjson.util.a Z0 = new com.alibaba.fastjson.util.a();

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    private final AtomicLong f6670a1 = new AtomicLong();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f6672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f6673c = 9;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Map<String, Integer> f6674d = new HashMap();

        public a(String str, int i10) {
            this.f6671a = str;
            this.f6672b = i10;
        }

        public int b() {
            return 5;
        }

        public int c() {
            return 6;
        }

        public String d() {
            return this.f6671a;
        }

        public int e() {
            return this.f6673c;
        }

        public int f() {
            return 2;
        }

        public int g() {
            return 7;
        }

        public int h() {
            return 3;
        }

        public int i() {
            return 4;
        }

        public int j() {
            return 8;
        }

        public int k() {
            return 1;
        }

        public int l(String str) {
            if (this.f6674d.get(str) == null) {
                Map<String, Integer> map = this.f6674d;
                int i10 = this.f6673c;
                this.f6673c = i10 + 1;
                map.put(str, Integer.valueOf(i10));
            }
            return this.f6674d.get(str).intValue();
        }

        public int m(String str, int i10) {
            if (this.f6674d.get(str) == null) {
                this.f6674d.put(str, Integer.valueOf(this.f6673c));
                this.f6673c += i10;
            }
            return this.f6674d.get(str).intValue();
        }
    }

    private void A(Class<?> cls, com.alibaba.fastjson.asm.g gVar, List<com.alibaba.fastjson.util.e> list, a aVar) throws Exception {
        int i10;
        int i11 = 25;
        gVar.g(25, aVar.l("out"));
        gVar.g(16, 91);
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(C)V");
        int size = list.size();
        if (size == 0) {
            gVar.g(25, aVar.l("out"));
            gVar.g(16, 93);
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(C)V");
            return;
        }
        int i12 = 0;
        while (i12 < size) {
            int i13 = i12 == size + (-1) ? 93 : 44;
            com.alibaba.fastjson.util.e eVar = list.get(i12);
            Class<?> clsJ = eVar.j();
            gVar.c(eVar.getName());
            gVar.g(58, aVar.c());
            if (clsJ == Byte.TYPE || clsJ == Short.TYPE || clsJ == Integer.TYPE) {
                size = size;
                gVar.g(25, aVar.l("out"));
                l(gVar, aVar, eVar);
                gVar.g(16, i13);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeIntAndChar", "(IC)V");
            } else if (clsJ == Long.TYPE) {
                gVar.g(i11, aVar.l("out"));
                l(gVar, aVar, eVar);
                gVar.g(16, i13);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeLongAndChar", "(JC)V");
            } else if (clsJ == Float.TYPE) {
                gVar.g(i11, aVar.l("out"));
                l(gVar, aVar, eVar);
                gVar.g(16, i13);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFloatAndChar", "(FC)V");
            } else if (clsJ == Double.TYPE) {
                gVar.g(i11, aVar.l("out"));
                l(gVar, aVar, eVar);
                gVar.g(16, i13);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeDoubleAndChar", "(DC)V");
            } else if (clsJ == Boolean.TYPE) {
                gVar.g(i11, aVar.l("out"));
                l(gVar, aVar, eVar);
                gVar.g(16, i13);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeBooleanAndChar", "(ZC)V");
            } else if (clsJ == Character.TYPE) {
                gVar.g(i11, aVar.l("out"));
                l(gVar, aVar, eVar);
                gVar.g(16, i13);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeCharacterAndChar", "(CC)V");
            } else if (clsJ == String.class) {
                gVar.g(i11, aVar.l("out"));
                l(gVar, aVar, eVar);
                gVar.g(16, i13);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeString", "(Ljava/lang/String;C)V");
            } else if (clsJ.isEnum()) {
                gVar.g(i11, aVar.l("out"));
                l(gVar, aVar, eVar);
                gVar.g(16, i13);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeEnum", "(Ljava/lang/Enum;C)V");
            } else {
                String strM = eVar.m();
                gVar.g(i11, aVar.k());
                l(gVar, aVar, eVar);
                if (strM != null) {
                    gVar.c(strM);
                    gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
                } else {
                    gVar.g(i11, aVar.c());
                    if ((eVar.k() instanceof Class) && ((Class) eVar.k()).isPrimitive()) {
                        gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
                    } else {
                        gVar.g(i11, 0);
                        gVar.b(180, aVar.d(), eVar.getName() + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                        gVar.c(Integer.valueOf(eVar.q()));
                        i10 = 182;
                        gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                    }
                    gVar.g(25, aVar.l("out"));
                    gVar.g(16, i13);
                    gVar.l(i10, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(C)V");
                }
                i10 = 182;
                gVar.g(25, aVar.l("out"));
                gVar.g(16, i13);
                gVar.l(i10, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(C)V");
            }
            i12++;
            size = size;
            i11 = 25;
        }
    }

    private void B(Class<?> cls, com.alibaba.fastjson.asm.g gVar, List<com.alibaba.fastjson.util.e> list, a aVar) throws Exception {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        int size = list.size();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        gVar.g(25, aVar.l("out"));
        gVar.b(178, "com/alibaba/fastjson/serializer/SerializerFeature", "PrettyFormat", "Lcom/alibaba/fastjson/serializer/SerializerFeature;");
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "isEnabled", "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z");
        gVar.f(153, fVar2);
        gVar.g(25, 0);
        gVar.b(180, aVar.d(), "nature", "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;");
        gVar.f(199, fVar3);
        gVar.e(fVar3);
        gVar.g(25, 0);
        gVar.b(180, aVar.d(), "nature", "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;");
        gVar.g(25, 1);
        gVar.g(25, 2);
        gVar.g(25, 3);
        gVar.g(25, 4);
        gVar.g(21, 5);
        gVar.l(182, "com/alibaba/fastjson/serializer/JavaBeanSerializer", "write", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
        gVar.j(177);
        gVar.e(fVar2);
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        gVar.g(25, 0);
        gVar.b(180, aVar.d(), "nature", "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;");
        gVar.f(199, fVar5);
        gVar.e(fVar5);
        gVar.g(25, 0);
        gVar.b(180, aVar.d(), "nature", "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;");
        gVar.g(25, 1);
        gVar.g(25, 2);
        gVar.g(21, 5);
        gVar.l(182, "com/alibaba/fastjson/serializer/JavaBeanSerializer", "writeReference", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z");
        gVar.f(153, fVar4);
        gVar.j(177);
        gVar.e(fVar4);
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        gVar.g(25, 0);
        gVar.b(180, aVar.d(), "nature", "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;");
        gVar.g(25, aVar.k());
        gVar.l(182, "com/alibaba/fastjson/serializer/JavaBeanSerializer", "isWriteAsArray", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z");
        gVar.f(153, fVar6);
        gVar.g(25, 0);
        gVar.g(25, 1);
        gVar.g(25, 2);
        gVar.g(25, 3);
        gVar.g(25, 4);
        gVar.l(182, aVar.d(), "writeAsArray", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V");
        gVar.j(177);
        gVar.e(fVar6);
        gVar.g(25, aVar.k());
        gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "getContext", "()Lcom/alibaba/fastjson/serializer/SerialContext;");
        gVar.g(58, aVar.l("parent"));
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.l("parent"));
        gVar.g(25, aVar.f());
        gVar.g(25, aVar.h());
        gVar.c(Integer.valueOf(aVar.f6672b));
        gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "setContext", "(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V");
        com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.i());
        gVar.g(25, aVar.f());
        gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
        gVar.f(153, fVar8);
        gVar.g(25, aVar.i());
        gVar.g(25, aVar.f());
        gVar.l(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
        gVar.f(165, fVar8);
        gVar.e(fVar9);
        gVar.g(25, aVar.l("out"));
        gVar.c("{\"" + com.alibaba.fastjson.a.DEFAULT_TYPE_KEY + "\":\"" + cls.getName() + x.a.f97579g);
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(Ljava/lang/String;)V");
        gVar.g(16, 44);
        gVar.f(167, fVar7);
        gVar.e(fVar8);
        gVar.g(16, 123);
        gVar.e(fVar7);
        gVar.g(54, aVar.l("seperator"));
        c(gVar, aVar);
        for (int i10 = 0; i10 < size; i10++) {
            com.alibaba.fastjson.util.e eVar = list.get(i10);
            Class<?> clsJ = eVar.j();
            gVar.c(eVar.getName());
            gVar.g(58, aVar.c());
            if (clsJ == Byte.TYPE) {
                e(cls, gVar, eVar, aVar);
            } else if (clsJ == Short.TYPE) {
                w(cls, gVar, eVar, aVar);
            } else if (clsJ == Integer.TYPE) {
                n(cls, gVar, eVar, aVar);
            } else if (clsJ == Long.TYPE) {
                p(cls, gVar, eVar, aVar);
            } else if (clsJ == Float.TYPE) {
                k(cls, gVar, eVar, aVar);
            } else if (clsJ == Double.TYPE) {
                h(cls, gVar, eVar, aVar);
            } else if (clsJ == Boolean.TYPE) {
                d(cls, gVar, eVar, aVar);
            } else if (clsJ == Character.TYPE) {
                f(cls, gVar, eVar, aVar);
            } else if (clsJ == String.class) {
                x(cls, gVar, eVar, aVar);
            } else if (clsJ == BigDecimal.class) {
                g(cls, gVar, eVar, aVar);
            } else if (List.class.isAssignableFrom(clsJ)) {
                o(cls, gVar, eVar, aVar);
            } else if (clsJ.isEnum()) {
                i(cls, gVar, eVar, aVar);
            } else {
                s(cls, gVar, eVar, aVar);
            }
        }
        a(gVar, aVar);
        com.alibaba.fastjson.asm.f fVar10 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar11 = new com.alibaba.fastjson.asm.f();
        gVar.g(21, aVar.l("seperator"));
        gVar.i(16, 123);
        gVar.f(160, fVar10);
        gVar.g(25, aVar.l("out"));
        gVar.g(16, 123);
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(C)V");
        gVar.e(fVar10);
        gVar.g(25, aVar.l("out"));
        gVar.g(16, 125);
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(C)V");
        gVar.e(fVar11);
        gVar.e(fVar);
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.l("parent"));
        gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "setContext", "(Lcom/alibaba/fastjson/serializer/SerialContext;)V");
    }

    private void a(com.alibaba.fastjson.asm.g gVar, a aVar) {
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.f());
        gVar.g(21, aVar.l("seperator"));
        gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "writeAfter", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C");
        gVar.g(54, aVar.l("seperator"));
    }

    private void b(com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        Class<?> clsJ = eVar.j();
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.f());
        gVar.g(25, aVar.c());
        if (clsJ == Byte.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.BYTE));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z");
            return;
        }
        if (clsJ == Short.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.SHORT));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Z");
            return;
        }
        if (clsJ == Integer.TYPE) {
            gVar.g(21, aVar.l("int"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Z");
            return;
        }
        if (clsJ == Character.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.CHAR));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Z");
            return;
        }
        if (clsJ == Long.TYPE) {
            gVar.g(22, aVar.m(MethodReflectParams.LONG, 2));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Z");
            return;
        }
        if (clsJ == Float.TYPE) {
            gVar.g(23, aVar.l("float"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Z");
            return;
        }
        if (clsJ == Double.TYPE) {
            gVar.g(24, aVar.m(MethodReflectParams.DOUBLE, 2));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Z");
            return;
        }
        if (clsJ == Boolean.TYPE) {
            gVar.g(21, aVar.l("boolean"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z");
            return;
        }
        if (clsJ == BigDecimal.class) {
            gVar.g(25, aVar.l("decimal"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
            return;
        }
        if (clsJ == String.class) {
            gVar.g(25, aVar.l(TypedValues.Custom.S_STRING));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
        } else if (clsJ.isEnum()) {
            gVar.g(25, aVar.l("enum"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
        } else if (List.class.isAssignableFrom(clsJ)) {
            gVar.g(25, aVar.l("list"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
        } else {
            gVar.g(25, aVar.l("object"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "apply", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
        }
    }

    private void c(com.alibaba.fastjson.asm.g gVar, a aVar) {
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.f());
        gVar.g(21, aVar.l("seperator"));
        gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "writeBefore", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C");
        gVar.g(54, aVar.l("seperator"));
    }

    private void d(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(54, aVar.l("boolean"));
        j(gVar, eVar, aVar, fVar);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(21, aVar.l("boolean"));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;Z)V");
        v(gVar, aVar);
        gVar.e(fVar);
    }

    private void e(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(54, aVar.l(MethodReflectParams.BYTE));
        j(gVar, eVar, aVar, fVar);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(21, aVar.l(MethodReflectParams.BYTE));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;I)V");
        v(gVar, aVar);
        gVar.e(fVar);
    }

    private void f(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(54, aVar.l(MethodReflectParams.CHAR));
        j(gVar, eVar, aVar, fVar);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(21, aVar.l(MethodReflectParams.CHAR));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;C)V");
        v(gVar, aVar);
        gVar.e(fVar);
    }

    private void g(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(58, aVar.l("decimal"));
        j(gVar, eVar, aVar, fVar);
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        gVar.e(fVar2);
        gVar.g(25, aVar.l("decimal"));
        gVar.f(199, fVar3);
        m(gVar, eVar, aVar);
        gVar.f(167, fVar4);
        gVar.e(fVar3);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(25, aVar.l("decimal"));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;Ljava/math/BigDecimal;)V");
        v(gVar, aVar);
        gVar.f(167, fVar4);
        gVar.e(fVar4);
        gVar.e(fVar);
    }

    private void h(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(57, aVar.m(MethodReflectParams.DOUBLE, 2));
        j(gVar, eVar, aVar, fVar);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(24, aVar.m(MethodReflectParams.DOUBLE, 2));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;D)V");
        v(gVar, aVar);
        gVar.e(fVar);
    }

    private void i(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        JSONField jSONField = (JSONField) eVar.g(JSONField.class);
        int i10 = 0;
        if (jSONField != null) {
            SerializerFeature[] serializerFeatureArrSerialzeFeatures = jSONField.serialzeFeatures();
            int length = serializerFeatureArrSerialzeFeatures.length;
            int i11 = 0;
            while (i10 < length) {
                if (serializerFeatureArrSerialzeFeatures[i10] == SerializerFeature.WriteEnumUsingToString) {
                    i11 = 1;
                }
                i10++;
            }
            i10 = i11;
        }
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar3);
        l(gVar, aVar, eVar);
        gVar.d(192, "java/lang/Enum");
        gVar.g(58, aVar.l("enum"));
        j(gVar, eVar, aVar, fVar3);
        gVar.g(25, aVar.l("enum"));
        gVar.f(199, fVar);
        m(gVar, eVar, aVar);
        gVar.f(167, fVar2);
        gVar.e(fVar);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(25, aVar.l("enum"));
        if (i10 != 0) {
            gVar.l(182, "java/lang/Object", "toString", "()Ljava/lang/String;");
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;Ljava/lang/Enum;)V");
        }
        v(gVar, aVar);
        gVar.e(fVar2);
        gVar.e(fVar3);
    }

    private void j(com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar, com.alibaba.fastjson.asm.f fVar) {
        if (eVar.i() != null && Modifier.isTransient(eVar.i().getModifiers())) {
            gVar.g(25, aVar.l("out"));
            gVar.b(178, "com/alibaba/fastjson/serializer/SerializerFeature", "SkipTransientField", "Lcom/alibaba/fastjson/serializer/SerializerFeature;");
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "isEnabled", "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z");
            gVar.f(154, fVar);
        }
        r(gVar, eVar, aVar, fVar);
        b(gVar, eVar, aVar);
        gVar.f(153, fVar);
        t(gVar, eVar, aVar);
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        u(gVar, eVar, aVar);
        gVar.g(25, aVar.g());
        gVar.g(25, aVar.j());
        gVar.f(165, fVar2);
        y(gVar, eVar, aVar, fVar);
        gVar.f(167, fVar);
        gVar.e(fVar2);
    }

    private void k(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(56, aVar.l("float"));
        j(gVar, eVar, aVar, fVar);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(23, aVar.l("float"));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;F)V");
        v(gVar, aVar);
        gVar.e(fVar);
    }

    private void l(com.alibaba.fastjson.asm.g gVar, a aVar, com.alibaba.fastjson.util.e eVar) {
        Method methodP = eVar.p();
        if (methodP != null) {
            gVar.g(25, aVar.l("entity"));
            gVar.l(182, com.alibaba.fastjson.util.b.getType(methodP.getDeclaringClass()), methodP.getName(), com.alibaba.fastjson.util.b.c(methodP));
        } else {
            gVar.g(25, aVar.l("entity"));
            gVar.b(180, com.alibaba.fastjson.util.b.getType(eVar.h()), eVar.i().getName(), com.alibaba.fastjson.util.b.b(eVar.j()));
        }
    }

    private void m(com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        Class<?> clsJ = eVar.j();
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        gVar.e(fVar);
        JSONField jSONField = (JSONField) eVar.g(JSONField.class);
        int i10 = 0;
        if (jSONField != null) {
            SerializerFeature[] serializerFeatureArrSerialzeFeatures = jSONField.serialzeFeatures();
            int length = serializerFeatureArrSerialzeFeatures.length;
            int i11 = 0;
            z10 = false;
            z11 = false;
            z12 = false;
            z13 = false;
            while (i10 < length) {
                SerializerFeature serializerFeature = serializerFeatureArrSerialzeFeatures[i10];
                if (serializerFeature == SerializerFeature.WriteMapNullValue) {
                    i11 = 1;
                } else if (serializerFeature == SerializerFeature.WriteNullNumberAsZero) {
                    z11 = true;
                } else if (serializerFeature == SerializerFeature.WriteNullStringAsEmpty) {
                    z10 = true;
                } else if (serializerFeature == SerializerFeature.WriteNullBooleanAsFalse) {
                    z12 = true;
                } else if (serializerFeature == SerializerFeature.WriteNullListAsEmpty) {
                    z13 = true;
                }
                i10++;
            }
            i10 = i11;
        } else {
            z10 = false;
            z11 = false;
            z12 = false;
            z13 = false;
        }
        if (i10 == 0) {
            gVar.g(25, aVar.l("out"));
            gVar.b(178, "com/alibaba/fastjson/serializer/SerializerFeature", "WriteMapNullValue", "Lcom/alibaba/fastjson/serializer/SerializerFeature;");
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "isEnabled", "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z");
            gVar.f(153, fVar2);
        }
        gVar.e(fVar3);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        if (clsJ == String.class || clsJ == Character.class) {
            if (z10) {
                gVar.c("");
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;Ljava/lang/String;)V");
            } else {
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldNullString", "(CLjava/lang/String;)V");
            }
        } else if (Number.class.isAssignableFrom(clsJ)) {
            if (z11) {
                gVar.j(3);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;I)V");
            } else {
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldNullNumber", "(CLjava/lang/String;)V");
            }
        } else if (clsJ == Boolean.class) {
            if (z12) {
                gVar.j(3);
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;Z)V");
            } else {
                gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldNullBoolean", "(CLjava/lang/String;)V");
            }
        } else if (!Collection.class.isAssignableFrom(clsJ) && !clsJ.isArray()) {
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldNull", "(CLjava/lang/String;)V");
        } else if (z13) {
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldEmptyList", "(CLjava/lang/String;)V");
        } else {
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldNullList", "(CLjava/lang/String;)V");
        }
        v(gVar, aVar);
        gVar.f(167, fVar4);
        gVar.e(fVar2);
        gVar.e(fVar4);
    }

    private void n(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(54, aVar.l("int"));
        j(gVar, eVar, aVar, fVar);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(21, aVar.l("int"));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;I)V");
        v(gVar, aVar);
        gVar.e(fVar);
    }

    private void o(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        int i10;
        String str;
        String str2;
        String str3;
        int i11;
        int i12;
        Type typeK = eVar.k();
        Type type = typeK instanceof Class ? Object.class : ((ParameterizedType) typeK).getActualTypeArguments()[0];
        Class cls2 = type instanceof Class ? (Class) type : null;
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        gVar.e(fVar2);
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.d(192, "java/util/List");
        gVar.g(58, aVar.l("list"));
        j(gVar, eVar, aVar, fVar);
        gVar.g(25, aVar.l("list"));
        gVar.f(199, fVar3);
        m(gVar, eVar, aVar);
        gVar.f(167, fVar4);
        gVar.e(fVar3);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(C)V");
        gVar.g(25, aVar.l("out"));
        gVar.g(25, aVar.c());
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldName", "(Ljava/lang/String;)V");
        gVar.g(25, aVar.l("list"));
        gVar.l(185, "java/util/List", "size", "()I");
        gVar.g(54, aVar.l("int"));
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
        gVar.e(fVar5);
        gVar.g(21, aVar.l("int"));
        gVar.j(3);
        gVar.f(160, fVar6);
        gVar.g(25, aVar.l("out"));
        gVar.c(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(Ljava/lang/String;)V");
        gVar.f(167, fVar7);
        gVar.e(fVar6);
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.l("list"));
        gVar.g(25, aVar.c());
        gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)V");
        gVar.g(25, aVar.l("out"));
        gVar.g(16, 91);
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(C)V");
        gVar.j(1);
        gVar.d(192, "com/alibaba/fastjson/serializer/ObjectSerializer");
        gVar.g(58, aVar.l("list_ser"));
        com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
        gVar.j(3);
        gVar.g(54, aVar.l("i"));
        gVar.e(fVar8);
        gVar.g(21, aVar.l("i"));
        gVar.g(21, aVar.l("int"));
        gVar.j(4);
        gVar.j(100);
        gVar.f(162, fVar9);
        if (type == String.class) {
            gVar.g(25, aVar.l("out"));
            gVar.g(25, aVar.l("list"));
            gVar.g(21, aVar.l("i"));
            gVar.l(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            gVar.d(192, "java/lang/String");
            gVar.g(16, 44);
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeString", "(Ljava/lang/String;C)V");
            str2 = "write";
            str3 = "(C)V";
            str = "out";
        } else {
            gVar.g(25, aVar.k());
            gVar.g(25, aVar.l("list"));
            gVar.g(21, aVar.l("i"));
            gVar.l(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            gVar.g(21, aVar.l("i"));
            gVar.l(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                i10 = 182;
                gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                gVar.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b((Class) type)));
                gVar.c(Integer.valueOf(eVar.q()));
                i10 = 182;
                gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
            str = "out";
            gVar.g(25, aVar.l(str));
            gVar.g(16, 44);
            str2 = "write";
            str3 = "(C)V";
            gVar.l(i10, "com/alibaba/fastjson/serializer/SerializeWriter", str2, str3);
        }
        String str4 = str3;
        gVar.h(aVar.l("i"), 1);
        gVar.f(167, fVar8);
        gVar.e(fVar9);
        if (type == String.class) {
            gVar.g(25, aVar.l(str));
            gVar.g(25, aVar.l("list"));
            gVar.g(21, aVar.l("int"));
            gVar.j(4);
            gVar.j(100);
            gVar.l(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            gVar.d(192, "java/lang/String");
            gVar.g(16, 93);
            i11 = 182;
            gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeString", "(Ljava/lang/String;C)V");
            i12 = 25;
        } else {
            gVar.g(25, aVar.k());
            gVar.g(25, aVar.l("list"));
            gVar.g(21, aVar.l("i"));
            gVar.l(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            gVar.g(21, aVar.l("i"));
            gVar.l(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                i11 = 182;
                gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                gVar.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b((Class) type)));
                gVar.c(Integer.valueOf(eVar.q()));
                i11 = 182;
                gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
            i12 = 25;
            gVar.g(25, aVar.l(str));
            gVar.g(16, 93);
            gVar.l(i11, "com/alibaba/fastjson/serializer/SerializeWriter", str2, str4);
        }
        gVar.g(i12, aVar.k());
        gVar.l(i11, "com/alibaba/fastjson/serializer/JSONSerializer", "popContext", "()V");
        gVar.e(fVar7);
        v(gVar, aVar);
        gVar.e(fVar4);
        gVar.e(fVar);
    }

    private void p(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(55, aVar.m(MethodReflectParams.LONG, 2));
        j(gVar, eVar, aVar, fVar);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(22, aVar.m(MethodReflectParams.LONG, 2));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;J)V");
        v(gVar, aVar);
        gVar.e(fVar);
    }

    private void q(com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar, com.alibaba.fastjson.asm.f fVar) {
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.f());
        gVar.g(25, aVar.c());
        gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "applyName", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z");
        gVar.f(153, fVar);
    }

    private void r(com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar, com.alibaba.fastjson.asm.f fVar) {
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        gVar.g(25, aVar.l("out"));
        gVar.b(178, "com/alibaba/fastjson/serializer/SerializerFeature", "NotWriteDefaultValue", "Lcom/alibaba/fastjson/serializer/SerializerFeature;");
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "isEnabled", "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z");
        gVar.f(153, fVar2);
        Class<?> clsJ = eVar.j();
        if (clsJ == Boolean.TYPE) {
            gVar.g(21, aVar.l("boolean"));
            gVar.f(153, fVar);
        } else if (clsJ == Byte.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.BYTE));
            gVar.f(153, fVar);
        } else if (clsJ == Short.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.SHORT));
            gVar.f(153, fVar);
        } else if (clsJ == Integer.TYPE) {
            gVar.g(21, aVar.l("int"));
            gVar.f(153, fVar);
        } else if (clsJ == Long.TYPE) {
            gVar.g(22, aVar.l(MethodReflectParams.LONG));
            gVar.j(9);
            gVar.j(148);
            gVar.f(153, fVar);
        } else if (clsJ == Float.TYPE) {
            gVar.g(23, aVar.l("float"));
            gVar.j(11);
            gVar.j(149);
            gVar.f(153, fVar);
        } else if (clsJ == Double.TYPE) {
            gVar.g(24, aVar.l(MethodReflectParams.DOUBLE));
            gVar.j(14);
            gVar.j(151);
            gVar.f(153, fVar);
        }
        gVar.e(fVar2);
    }

    private void s(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(58, aVar.l("object"));
        j(gVar, eVar, aVar, fVar);
        y(gVar, eVar, aVar, fVar);
        gVar.e(fVar);
    }

    private void t(com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        Class<?> clsJ = eVar.j();
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.f());
        gVar.g(25, aVar.c());
        if (clsJ == Byte.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.BYTE));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Ljava/lang/String;");
        } else if (clsJ == Short.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.SHORT));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Ljava/lang/String;");
        } else if (clsJ == Integer.TYPE) {
            gVar.g(21, aVar.l("int"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;");
        } else if (clsJ == Character.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.CHAR));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Ljava/lang/String;");
        } else if (clsJ == Long.TYPE) {
            gVar.g(22, aVar.m(MethodReflectParams.LONG, 2));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;");
        } else if (clsJ == Float.TYPE) {
            gVar.g(23, aVar.l("float"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Ljava/lang/String;");
        } else if (clsJ == Double.TYPE) {
            gVar.g(24, aVar.m(MethodReflectParams.DOUBLE, 2));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Ljava/lang/String;");
        } else if (clsJ == Boolean.TYPE) {
            gVar.g(21, aVar.l("boolean"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;");
        } else if (clsJ == BigDecimal.class) {
            gVar.g(25, aVar.l("decimal"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        } else if (clsJ == String.class) {
            gVar.g(25, aVar.l(TypedValues.Custom.S_STRING));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        } else if (clsJ.isEnum()) {
            gVar.g(25, aVar.l("enum"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        } else if (List.class.isAssignableFrom(clsJ)) {
            gVar.g(25, aVar.l("list"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        } else {
            gVar.g(25, aVar.l("object"));
            gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processKey", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        }
        gVar.g(58, aVar.c());
    }

    private void u(com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        Class<?> clsJ = eVar.j();
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.f());
        gVar.g(25, aVar.c());
        if (clsJ == Byte.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.BYTE));
            gVar.l(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
        } else if (clsJ == Short.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.SHORT));
            gVar.l(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
        } else if (clsJ == Integer.TYPE) {
            gVar.g(21, aVar.l("int"));
            gVar.l(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        } else if (clsJ == Character.TYPE) {
            gVar.g(21, aVar.l(MethodReflectParams.CHAR));
            gVar.l(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
        } else if (clsJ == Long.TYPE) {
            gVar.g(22, aVar.m(MethodReflectParams.LONG, 2));
            gVar.l(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
        } else if (clsJ == Float.TYPE) {
            gVar.g(23, aVar.l("float"));
            gVar.l(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
        } else if (clsJ == Double.TYPE) {
            gVar.g(24, aVar.m(MethodReflectParams.DOUBLE, 2));
            gVar.l(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
        } else if (clsJ == Boolean.TYPE) {
            gVar.g(21, aVar.l("boolean"));
            gVar.l(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
        } else if (clsJ == BigDecimal.class) {
            gVar.g(25, aVar.l("decimal"));
        } else if (clsJ == String.class) {
            gVar.g(25, aVar.l(TypedValues.Custom.S_STRING));
        } else if (clsJ.isEnum()) {
            gVar.g(25, aVar.l("enum"));
        } else if (List.class.isAssignableFrom(clsJ)) {
            gVar.g(25, aVar.l("list"));
        } else {
            gVar.g(25, aVar.l("object"));
        }
        gVar.g(58, aVar.g());
        gVar.g(25, aVar.g());
        gVar.l(184, "com/alibaba/fastjson/serializer/FilterUtils", "processValue", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;");
        gVar.g(58, aVar.j());
    }

    private void v(com.alibaba.fastjson.asm.g gVar, a aVar) {
        gVar.g(16, 44);
        gVar.g(54, aVar.l("seperator"));
    }

    private void w(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(54, aVar.l(MethodReflectParams.SHORT));
        j(gVar, eVar, aVar, fVar);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(21, aVar.l(MethodReflectParams.SHORT));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;I)V");
        v(gVar, aVar);
        gVar.e(fVar);
    }

    private void x(Class<?> cls, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(gVar, eVar, aVar, fVar);
        l(gVar, aVar, eVar);
        gVar.g(58, aVar.l(TypedValues.Custom.S_STRING));
        j(gVar, eVar, aVar, fVar);
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        gVar.g(25, aVar.l(TypedValues.Custom.S_STRING));
        gVar.f(199, fVar2);
        m(gVar, eVar, aVar);
        gVar.f(167, fVar3);
        gVar.e(fVar2);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.g(25, aVar.c());
        gVar.g(25, aVar.l(TypedValues.Custom.S_STRING));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldValue", "(CLjava/lang/String;Ljava/lang/String;)V");
        v(gVar, aVar);
        gVar.e(fVar3);
        gVar.e(fVar);
    }

    private void y(com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, a aVar, com.alibaba.fastjson.asm.f fVar) {
        String strM = eVar.m();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        gVar.g(25, aVar.j());
        gVar.f(199, fVar2);
        m(gVar, eVar, aVar);
        gVar.f(167, fVar);
        gVar.e(fVar2);
        gVar.g(25, aVar.l("out"));
        gVar.g(21, aVar.l("seperator"));
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "write", "(C)V");
        gVar.g(25, aVar.l("out"));
        gVar.g(25, aVar.c());
        gVar.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "writeFieldName", "(Ljava/lang/String;)V");
        gVar.g(25, aVar.k());
        gVar.g(25, aVar.j());
        if (strM != null) {
            gVar.c(strM);
            gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
        } else {
            gVar.g(25, aVar.c());
            if ((eVar.k() instanceof Class) && ((Class) eVar.k()).isPrimitive()) {
                gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                gVar.g(25, 0);
                gVar.b(180, aVar.d(), eVar.getName() + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                gVar.c(Integer.valueOf(eVar.q()));
                gVar.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
        }
        v(gVar, aVar);
    }

    public String C(Class<?> cls) {
        return "Serializer_" + this.f6670a1.incrementAndGet();
    }

    public boolean D(Class<?> cls) {
        return this.Z0.c(cls);
    }

    public j1 z(Class<?> cls, Map<String, String> map) throws Exception {
        int i10;
        if (cls.isPrimitive()) {
            throw new JSONException("unsupportd class " + cls.getName());
        }
        int i11 = 0;
        List<com.alibaba.fastjson.util.e> listZ = com.alibaba.fastjson.util.k.z(cls, map, false);
        Iterator<com.alibaba.fastjson.util.e> it2 = listZ.iterator();
        while (it2.hasNext()) {
            if (!com.alibaba.fastjson.util.b.a(it2.next().o().getName())) {
                return null;
            }
        }
        String strC = C(cls);
        int iG = com.alibaba.fastjson.util.k.G(cls);
        com.alibaba.fastjson.asm.b bVar = new com.alibaba.fastjson.asm.b();
        bVar.o(49, 33, strC, "com/alibaba/fastjson/serializer/ASMJavaBeanSerializer", new String[]{"com/alibaba/fastjson/serializer/ObjectSerializer"});
        for (com.alibaba.fastjson.util.e eVar : listZ) {
            bVar.p(1, eVar.getName() + "_asm_fieldPrefix", "Ljava/lang/reflect/Type;").a();
            bVar.p(1, eVar.getName() + "_asm_fieldType", "Ljava/lang/reflect/Type;").a();
        }
        com.alibaba.fastjson.asm.g gVarQ = bVar.q(1, "<init>", "()V", null, null);
        int i12 = 25;
        gVarQ.g(25, 0);
        gVarQ.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(cls)));
        gVarQ.l(183, "com/alibaba/fastjson/serializer/ASMJavaBeanSerializer", "<init>", "(Ljava/lang/Class;)V");
        for (com.alibaba.fastjson.util.e eVar2 : listZ) {
            gVarQ.g(i12, i11);
            gVarQ.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(eVar2.h())));
            if (eVar2.p() != null) {
                gVarQ.c(eVar2.p().getName());
                gVarQ.l(184, "com/alibaba/fastjson/util/ASMUtils", "getMethodType", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;");
            } else {
                gVarQ.c(eVar2.i().getName());
                gVarQ.l(184, "com/alibaba/fastjson/util/ASMUtils", "getFieldType", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;");
            }
            gVarQ.b(181, strC, eVar2.getName() + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            i11 = 0;
            i12 = 25;
        }
        gVarQ.j(177);
        gVarQ.k(4, 4);
        gVarQ.a();
        a aVar = new a(strC, iG);
        com.alibaba.fastjson.asm.g gVarQ2 = bVar.q(1, "write", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V", null, new String[]{"java/io/IOException"});
        gVarQ2.g(25, aVar.k());
        gVarQ2.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "getWriter", "()Lcom/alibaba/fastjson/serializer/SerializeWriter;");
        gVarQ2.g(58, aVar.l("out"));
        JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
        if (jSONType == null || jSONType.alphabetic()) {
            com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
            gVarQ2.g(25, aVar.l("out"));
            gVarQ2.b(178, "com/alibaba/fastjson/serializer/SerializerFeature", "SortField", "Lcom/alibaba/fastjson/serializer/SerializerFeature;");
            gVarQ2.l(182, "com/alibaba/fastjson/serializer/SerializeWriter", "isEnabled", "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z");
            gVarQ2.f(153, fVar);
            i10 = 25;
            gVarQ2.g(25, 0);
            gVarQ2.g(25, 1);
            gVarQ2.g(25, 2);
            gVarQ2.g(25, 3);
            gVarQ2.g(25, 4);
            gVarQ2.g(21, 5);
            gVarQ2.l(182, strC, "write1", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            gVarQ2.j(177);
            gVarQ2.e(fVar);
        } else {
            i10 = 25;
        }
        gVarQ2.g(i10, aVar.f());
        gVarQ2.d(192, com.alibaba.fastjson.util.b.getType(cls));
        gVarQ2.g(58, aVar.l("entity"));
        B(cls, gVarQ2, listZ, aVar);
        gVarQ2.j(177);
        gVarQ2.k(6, aVar.e() + 1);
        gVarQ2.a();
        List<com.alibaba.fastjson.util.e> listZ2 = com.alibaba.fastjson.util.k.z(cls, map, true);
        a aVar2 = new a(strC, iG);
        com.alibaba.fastjson.asm.g gVarQ3 = bVar.q(1, "write1", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V", null, new String[]{"java/io/IOException"});
        gVarQ3.g(25, aVar2.k());
        gVarQ3.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "getWriter", "()Lcom/alibaba/fastjson/serializer/SerializeWriter;");
        gVarQ3.g(58, aVar2.l("out"));
        gVarQ3.g(25, aVar2.f());
        gVarQ3.d(192, com.alibaba.fastjson.util.b.getType(cls));
        gVarQ3.g(58, aVar2.l("entity"));
        B(cls, gVarQ3, listZ2, aVar2);
        gVarQ3.j(177);
        gVarQ3.k(6, aVar2.e() + 1);
        gVarQ3.a();
        a aVar3 = new a(strC, iG);
        com.alibaba.fastjson.asm.g gVarQ4 = bVar.q(1, "writeAsArray", "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V", null, new String[]{"java/io/IOException"});
        gVarQ4.g(25, aVar3.k());
        gVarQ4.l(182, "com/alibaba/fastjson/serializer/JSONSerializer", "getWriter", "()Lcom/alibaba/fastjson/serializer/SerializeWriter;");
        gVarQ4.g(58, aVar3.l("out"));
        gVarQ4.g(25, aVar3.f());
        gVarQ4.d(192, com.alibaba.fastjson.util.b.getType(cls));
        gVarQ4.g(58, aVar3.l("entity"));
        A(cls, gVarQ4, listZ2, aVar3);
        gVarQ4.j(177);
        gVarQ4.k(6, aVar3.e() + 1);
        gVarQ4.a();
        byte[] bArrN = bVar.n();
        return (j1) this.Z0.a(strC, bArrN, 0, bArrN.length).newInstance();
    }
}
