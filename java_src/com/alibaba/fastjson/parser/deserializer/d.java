package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONArray;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes7.dex */
public class d implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f6554a = new d();

    /* JADX WARN: Code duplicated, block: B:27:0x0054  */
    private <T> T d(com.alibaba.fastjson.parser.c cVar, Class<?> cls, JSONArray jSONArray) {
        Object objC;
        if (jSONArray == null) {
            return null;
        }
        int size = jSONArray.size();
        T t10 = (T) Array.newInstance(cls, size);
        for (int i10 = 0; i10 < size; i10++) {
            Object objD = jSONArray.get(i10);
            if (objD == jSONArray) {
                Array.set(t10, i10, t10);
            } else if (cls.isArray()) {
                if (!cls.isInstance(objD)) {
                    objD = d(cVar, cls, (JSONArray) objD);
                }
                Array.set(t10, i10, objD);
            } else {
                if (objD instanceof JSONArray) {
                    JSONArray jSONArray2 = (JSONArray) objD;
                    int size2 = jSONArray2.size();
                    boolean z10 = false;
                    for (int i11 = 0; i11 < size2; i11++) {
                        if (jSONArray2.get(i11) == jSONArray) {
                            jSONArray2.set(i10, t10);
                            z10 = true;
                        }
                    }
                    if (z10) {
                        objC = jSONArray2.toArray();
                    } else {
                        objC = null;
                    }
                } else {
                    objC = null;
                }
                if (objC == null) {
                    objC = com.alibaba.fastjson.util.k.c(objD, cls, cVar.j());
                }
                Array.set(t10, i10, objC);
            }
        }
        jSONArray.setRelatedArray(t10);
        jSONArray.setComponentType(cls);
        return t10;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 14;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        Class<?> componentType;
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        Type type2 = null;
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
            return null;
        }
        if (dVarZ.b() == 4) {
            T t10 = (T) dVarZ.o();
            dVarZ.l(16);
            return t10;
        }
        if (type instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
            if (genericComponentType instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) genericComponentType;
                Type type3 = cVar.getContext().getType();
                componentType = Object.class;
                if (type3 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type3;
                    Type rawType = parameterizedType.getRawType();
                    if (rawType instanceof Class) {
                        TypeVariable<Class<T>>[] typeParameters = ((Class) rawType).getTypeParameters();
                        for (int i10 = 0; i10 < typeParameters.length; i10++) {
                            if (typeParameters[i10].getName().equals(typeVariable.getName())) {
                                type2 = parameterizedType.getActualTypeArguments()[i10];
                            }
                        }
                    }
                    if (type2 instanceof Class) {
                        componentType = (Class) type2;
                    }
                }
            } else {
                componentType = (Class) genericComponentType;
            }
        } else {
            componentType = ((Class) type).getComponentType();
        }
        JSONArray jSONArray = new JSONArray();
        cVar.e0(componentType, jSONArray, obj);
        return (T) d(cVar, componentType, jSONArray);
    }
}
