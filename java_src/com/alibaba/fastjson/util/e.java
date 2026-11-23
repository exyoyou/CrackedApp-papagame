package com.alibaba.fastjson.util;

import com.alibaba.fastjson.annotation.JSONField;
import com.join.mgps.Util.o0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes7.dex */
public class e implements Comparable<e> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f6813c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Field f6814d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6815e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Class<?> f6816f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Type f6817g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Class<?> f6818h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f6819i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f6820j;

    public e(String str, Class<?> cls, Class<?> cls2, Type type, Field field) {
        this(str, cls, cls2, type, field, 0, 0);
    }

    public static Type l(Class<?> cls, Type type, Type type2) {
        if (cls != null && type != null) {
            if (type2 instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type2).getGenericComponentType();
                Type typeL = l(cls, type, genericComponentType);
                return genericComponentType != typeL ? Array.newInstance(k.B(typeL), 0).getClass() : type2;
            }
            if (!k.I(type)) {
                return type2;
            }
            if (type2 instanceof TypeVariable) {
                ParameterizedType parameterizedType = (ParameterizedType) k.D(type);
                Class<?> clsB = k.B(parameterizedType);
                TypeVariable typeVariable = (TypeVariable) type2;
                for (int i10 = 0; i10 < clsB.getTypeParameters().length; i10++) {
                    if (clsB.getTypeParameters()[i10].getName().equals(typeVariable.getName())) {
                        return parameterizedType.getActualTypeArguments()[i10];
                    }
                }
            }
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                boolean z10 = false;
                for (int i11 = 0; i11 < actualTypeArguments.length; i11++) {
                    Type type3 = actualTypeArguments[i11];
                    if (type3 instanceof TypeVariable) {
                        TypeVariable typeVariable2 = (TypeVariable) type3;
                        if (type instanceof ParameterizedType) {
                            ParameterizedType parameterizedType3 = (ParameterizedType) type;
                            for (int i12 = 0; i12 < cls.getTypeParameters().length; i12++) {
                                if (cls.getTypeParameters()[i12].getName().equals(typeVariable2.getName())) {
                                    actualTypeArguments[i11] = parameterizedType3.getActualTypeArguments()[i12];
                                    z10 = true;
                                }
                            }
                        }
                    }
                }
                if (z10) {
                    return new h(actualTypeArguments, parameterizedType2.getOwnerType(), parameterizedType2.getRawType());
                }
            }
        }
        return type2;
    }

    public static Type n(Class<?> cls, TypeVariable<?> typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        while (true) {
            Type genericSuperclass = cls.getGenericSuperclass();
            if (genericSuperclass == null) {
                return null;
            }
            if (genericSuperclass instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
                if (parameterizedType.getRawType() == genericDeclaration) {
                    TypeVariable<?>[] typeParameters = genericDeclaration.getTypeParameters();
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    for (int i10 = 0; i10 < typeParameters.length; i10++) {
                        if (typeParameters[i10] == typeVariable) {
                            return actualTypeArguments[i10];
                        }
                    }
                    return null;
                }
            }
            cls = k.B(genericSuperclass);
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(e eVar) {
        int i10 = this.f6815e;
        int i11 = eVar.f6815e;
        if (i10 < i11) {
            return -1;
        }
        if (i10 > i11) {
            return 1;
        }
        return this.f6812b.compareTo(eVar.f6812b);
    }

    public String e() {
        Member memberO = o();
        return memberO.getDeclaringClass().getName() + o0.f49827a + memberO.getName();
    }

    public Object f(Object obj) throws IllegalAccessException, InvocationTargetException {
        Method method = this.f6813c;
        return method != null ? method.invoke(obj, new Object[0]) : this.f6814d.get(obj);
    }

    public <T extends Annotation> T g(Class<T> cls) {
        Field field;
        Method method = this.f6813c;
        T t10 = method != null ? (T) method.getAnnotation(cls) : null;
        return (t10 != null || (field = this.f6814d) == null) ? t10 : (T) field.getAnnotation(cls);
    }

    public String getName() {
        return this.f6812b;
    }

    public Class<?> h() {
        return this.f6818h;
    }

    public Field i() {
        return this.f6814d;
    }

    public Class<?> j() {
        return this.f6816f;
    }

    public Type k() {
        return this.f6817g;
    }

    public String m() {
        JSONField jSONField = (JSONField) g(JSONField.class);
        if (jSONField == null) {
            return null;
        }
        String str = jSONField.format();
        if (str.trim().length() == 0) {
            return null;
        }
        return str;
    }

    public Member o() {
        Method method = this.f6813c;
        return method != null ? method : this.f6814d;
    }

    public Method p() {
        return this.f6813c;
    }

    public int q() {
        return this.f6820j;
    }

    public boolean r() {
        return this.f6819i;
    }

    public void s(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
        Method method = this.f6813c;
        if (method != null) {
            method.invoke(obj, obj2);
        } else {
            this.f6814d.set(obj, obj2);
        }
    }

    public void t(boolean z10) throws SecurityException {
        Method method = this.f6813c;
        if (method != null) {
            k.L(method);
        } else {
            k.L(this.f6814d);
        }
    }

    public String toString() {
        return this.f6812b;
    }

    public e(String str, Class<?> cls, Class<?> cls2, Type type, Field field, int i10, int i11) {
        this.f6819i = false;
        this.f6812b = str;
        this.f6818h = cls;
        this.f6816f = cls2;
        this.f6817g = type;
        this.f6813c = null;
        this.f6814d = field;
        this.f6815e = i10;
        this.f6820j = i11;
        if (field != null) {
            k.L(field);
        }
    }

    public e(String str, Method method, Field field) {
        this(str, method, field, (Class<?>) null, (Type) null);
    }

    public e(String str, Method method, Field field, int i10, int i11) {
        this(str, method, field, (Class<?>) null, (Type) null, i10, i11);
    }

    public e(String str, Method method, Field field, Class<?> cls, Type type) {
        this(str, method, field, cls, type, 0, 0);
    }

    public e(String str, Method method, Field field, Class<?> cls, Type type, int i10, int i11) {
        Class<?> type2;
        Type type3;
        Type typeN;
        this.f6819i = false;
        this.f6812b = str;
        this.f6813c = method;
        this.f6814d = field;
        this.f6815e = i10;
        this.f6820j = i11;
        if (method != null) {
            k.L(method);
        }
        if (field != null) {
            k.L(field);
        }
        if (method != null) {
            if (method.getParameterTypes().length == 1) {
                type2 = method.getParameterTypes()[0];
                type3 = method.getGenericParameterTypes()[0];
            } else {
                type2 = method.getReturnType();
                Type genericReturnType = method.getGenericReturnType();
                this.f6819i = true;
                type3 = genericReturnType;
            }
            this.f6818h = method.getDeclaringClass();
        } else {
            type2 = field.getType();
            Type genericType = field.getGenericType();
            this.f6818h = field.getDeclaringClass();
            type3 = genericType;
        }
        if (cls != null && type2 == Object.class && (type3 instanceof TypeVariable) && (typeN = n(cls, (TypeVariable) type3)) != null) {
            this.f6816f = k.B(typeN);
            this.f6817g = typeN;
            return;
        }
        Type typeL = l(cls, type, type3);
        if (typeL != type3 && ((typeL instanceof ParameterizedType) || (typeL instanceof Class))) {
            type2 = k.B(typeL);
        }
        this.f6817g = typeL;
        this.f6816f = type2;
    }
}
