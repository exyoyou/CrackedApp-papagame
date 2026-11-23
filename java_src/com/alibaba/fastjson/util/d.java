package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONCreator;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.umeng.analytics.pro.bm;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f6805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Constructor<?> f6806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Constructor<?> f6807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Method f6808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<e> f6809e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<e> f6810f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6811g;

    public d(Class<?> cls) {
        this.f6811g = 0;
        this.f6805a = cls;
        this.f6811g = k.F(cls);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x02b6  */
    public static d b(Class<?> cls, Type type) {
        JSONField jSONField;
        JSONField jSONField2;
        String str;
        int i10;
        int i11;
        int iOrdinal;
        int iOf;
        String strA;
        int iOrdinal2;
        int iOf2;
        JSONField jSONField3;
        d dVar = new d(cls);
        Constructor<?> constructorG = g(cls);
        if (constructorG != null) {
            k.L(constructorG);
            dVar.o(constructorG);
        } else if (constructorG == null && !cls.isInterface() && !Modifier.isAbstract(cls.getModifiers())) {
            Constructor<?> constructorE = e(cls);
            if (constructorE != null) {
                k.L(constructorE);
                dVar.n(constructorE);
                for (int i12 = 0; i12 < constructorE.getParameterTypes().length; i12++) {
                    Annotation[] annotationArr = constructorE.getParameterAnnotations()[i12];
                    int length = annotationArr.length;
                    int i13 = 0;
                    while (true) {
                        if (i13 >= length) {
                            jSONField2 = null;
                            break;
                        }
                        Annotation annotation = annotationArr[i13];
                        if (annotation instanceof JSONField) {
                            jSONField2 = (JSONField) annotation;
                            break;
                        }
                        i13++;
                    }
                    if (jSONField2 == null) {
                        throw new JSONException("illegal json creator");
                    }
                    dVar.a(new e(jSONField2.name(), cls, constructorE.getParameterTypes()[i12], constructorE.getGenericParameterTypes()[i12], k.C(cls, jSONField2.name()), jSONField2.ordinal(), SerializerFeature.of(jSONField2.serialzeFeatures())));
                }
                return dVar;
            }
            Method methodI = i(cls);
            if (methodI == null) {
                throw new JSONException("default constructor not found. " + cls);
            }
            k.L(methodI);
            dVar.p(methodI);
            for (int i14 = 0; i14 < methodI.getParameterTypes().length; i14++) {
                Annotation[] annotationArr2 = methodI.getParameterAnnotations()[i14];
                int length2 = annotationArr2.length;
                int i15 = 0;
                while (true) {
                    if (i15 >= length2) {
                        jSONField = null;
                        break;
                    }
                    Annotation annotation2 = annotationArr2[i15];
                    if (annotation2 instanceof JSONField) {
                        jSONField = (JSONField) annotation2;
                        break;
                    }
                    i15++;
                }
                if (jSONField == null) {
                    throw new JSONException("illegal json creator");
                }
                dVar.a(new e(jSONField.name(), cls, methodI.getParameterTypes()[i14], methodI.getGenericParameterTypes()[i14], k.C(cls, jSONField.name()), jSONField.ordinal(), SerializerFeature.of(jSONField.serialzeFeatures())));
            }
            return dVar;
        }
        for (Method method : cls.getMethods()) {
            String name = method.getName();
            if (name.length() >= 4 && !Modifier.isStatic(method.getModifiers()) && ((method.getReturnType().equals(Void.TYPE) || method.getReturnType().equals(cls)) && method.getParameterTypes().length == 1)) {
                JSONField jSONFieldH = (JSONField) method.getAnnotation(JSONField.class);
                if (jSONFieldH == null) {
                    jSONFieldH = k.H(cls, method);
                }
                if (jSONFieldH == null) {
                    iOrdinal = 0;
                    iOf = 0;
                } else if (jSONFieldH.deserialize()) {
                    iOrdinal = jSONFieldH.ordinal();
                    iOf = SerializerFeature.of(jSONFieldH.serialzeFeatures());
                    if (jSONFieldH.name().length() != 0) {
                        dVar.a(new e(jSONFieldH.name(), method, (Field) null, cls, type, iOrdinal, iOf));
                        k.L(method);
                    }
                }
                if (name.startsWith("set")) {
                    char cCharAt = name.charAt(3);
                    if (Character.isUpperCase(cCharAt)) {
                        strA = k.f6857a ? k.A(name.substring(3)) : Character.toLowerCase(name.charAt(3)) + name.substring(4);
                    } else if (cCharAt == '_') {
                        strA = name.substring(4);
                    } else if (cCharAt == 'f') {
                        strA = name.substring(3);
                    } else if (name.length() >= 5 && Character.isUpperCase(name.charAt(4))) {
                        strA = k.A(name.substring(3));
                    }
                    String str2 = strA;
                    Field fieldC = k.C(cls, str2);
                    if (fieldC == null && method.getParameterTypes()[0] == Boolean.TYPE) {
                        fieldC = k.C(cls, bm.ae + Character.toUpperCase(str2.charAt(0)) + str2.substring(1));
                    }
                    Field field = fieldC;
                    if (field == null || (jSONField3 = (JSONField) field.getAnnotation(JSONField.class)) == null) {
                        iOrdinal2 = iOrdinal;
                        iOf2 = iOf;
                    } else {
                        iOrdinal2 = jSONField3.ordinal();
                        iOf2 = SerializerFeature.of(jSONField3.serialzeFeatures());
                        if (jSONField3.name().length() != 0) {
                            dVar.a(new e(jSONField3.name(), method, field, cls, type, iOrdinal2, iOf2));
                        }
                    }
                    dVar.a(new e(str2, method, (Field) null, cls, type, iOrdinal2, iOf2));
                    k.L(method);
                }
            }
        }
        for (Field field2 : cls.getFields()) {
            if (!Modifier.isStatic(field2.getModifiers())) {
                Iterator<e> it2 = dVar.k().iterator();
                boolean z10 = false;
                while (it2.hasNext()) {
                    if (it2.next().getName().equals(field2.getName())) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    String name2 = field2.getName();
                    JSONField jSONField4 = (JSONField) field2.getAnnotation(JSONField.class);
                    if (jSONField4 != null) {
                        int iOrdinal3 = jSONField4.ordinal();
                        int iOf3 = SerializerFeature.of(jSONField4.serialzeFeatures());
                        if (jSONField4.name().length() != 0) {
                            name2 = jSONField4.name();
                        }
                        str = name2;
                        i10 = iOrdinal3;
                        i11 = iOf3;
                    } else {
                        str = name2;
                        i10 = 0;
                        i11 = 0;
                    }
                    dVar.a(new e(str, (Method) null, field2, cls, type, i10, i11));
                }
            }
        }
        for (Method method2 : cls.getMethods()) {
            String name3 = method2.getName();
            if (name3.length() >= 4 && !Modifier.isStatic(method2.getModifiers()) && name3.startsWith("get")) {
                if (Character.isUpperCase(name3.charAt(3)) && method2.getParameterTypes().length == 0 && (Collection.class.isAssignableFrom(method2.getReturnType()) || Map.class.isAssignableFrom(method2.getReturnType()) || AtomicBoolean.class == method2.getReturnType() || AtomicInteger.class == method2.getReturnType() || AtomicLong.class == method2.getReturnType())) {
                    JSONField jSONField5 = (JSONField) method2.getAnnotation(JSONField.class);
                    String strName = (jSONField5 == null || jSONField5.name().length() <= 0) ? Character.toLowerCase(name3.charAt(3)) + name3.substring(4) : jSONField5.name();
                    if (dVar.j(strName) == null) {
                        dVar.a(new e(strName, method2, (Field) null, cls, type));
                        k.L(method2);
                    }
                }
            }
        }
        return dVar;
    }

    public static Constructor<?> e(Class<?> cls) {
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            if (((JSONCreator) constructor.getAnnotation(JSONCreator.class)) != null) {
                return constructor;
            }
        }
        return null;
    }

    public static Constructor<?> g(Class<?> cls) {
        Constructor<?> constructor = null;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        for (Constructor<?> constructor2 : cls.getDeclaredConstructors()) {
            if (constructor2.getParameterTypes().length == 0) {
                constructor = constructor2;
                break;
            }
        }
        if (constructor != null || !cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
            return constructor;
        }
        for (Constructor<?> constructor3 : cls.getDeclaredConstructors()) {
            if (constructor3.getParameterTypes().length == 1 && constructor3.getParameterTypes()[0].equals(cls.getDeclaringClass())) {
                return constructor3;
            }
        }
        return constructor;
    }

    public static Method i(Class<?> cls) {
        for (Method method : cls.getDeclaredMethods()) {
            if (Modifier.isStatic(method.getModifiers()) && cls.isAssignableFrom(method.getReturnType()) && ((JSONCreator) method.getAnnotation(JSONCreator.class)) != null) {
                return method;
            }
        }
        return null;
    }

    public boolean a(e eVar) {
        for (e eVar2 : this.f6809e) {
            if (eVar2.getName().equals(eVar.getName()) && (!eVar2.r() || eVar.r())) {
                return false;
            }
        }
        this.f6809e.add(eVar);
        this.f6810f.add(eVar);
        Collections.sort(this.f6810f);
        return true;
    }

    public Class<?> c() {
        return this.f6805a;
    }

    public Constructor<?> d() {
        return this.f6807c;
    }

    public Constructor<?> f() {
        return this.f6806b;
    }

    public Method h() {
        return this.f6808d;
    }

    public e j(String str) {
        for (e eVar : this.f6809e) {
            if (eVar.getName().equals(str)) {
                return eVar;
            }
        }
        return null;
    }

    public List<e> k() {
        return this.f6809e;
    }

    public int l() {
        return this.f6811g;
    }

    public List<e> m() {
        return this.f6810f;
    }

    public void n(Constructor<?> constructor) {
        this.f6807c = constructor;
    }

    public void o(Constructor<?> constructor) {
        this.f6806b = constructor;
    }

    public void p(Method method) {
        this.f6808d = method;
    }
}
