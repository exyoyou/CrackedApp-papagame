package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class w implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f6587a = new w();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        if (!(type instanceof GenericArrayType)) {
            return (T) cVar.R(obj);
        }
        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
        if (genericComponentType instanceof TypeVariable) {
            genericComponentType = ((TypeVariable) genericComponentType).getBounds()[0];
        }
        ArrayList arrayList = new ArrayList();
        cVar.d0(genericComponentType, arrayList);
        if (!(genericComponentType instanceof Class)) {
            return (T) arrayList.toArray();
        }
        Class cls = (Class) genericComponentType;
        if (cls == Boolean.TYPE) {
            return (T) com.alibaba.fastjson.util.k.c(arrayList, boolean[].class, cVar.j());
        }
        if (cls == Short.TYPE) {
            return (T) com.alibaba.fastjson.util.k.c(arrayList, short[].class, cVar.j());
        }
        if (cls == Integer.TYPE) {
            return (T) com.alibaba.fastjson.util.k.c(arrayList, int[].class, cVar.j());
        }
        if (cls == Long.TYPE) {
            return (T) com.alibaba.fastjson.util.k.c(arrayList, long[].class, cVar.j());
        }
        if (cls == Float.TYPE) {
            return (T) com.alibaba.fastjson.util.k.c(arrayList, float[].class, cVar.j());
        }
        if (cls == Double.TYPE) {
            return (T) com.alibaba.fastjson.util.k.c(arrayList, double[].class, cVar.j());
        }
        T t10 = (T) ((Object[]) Array.newInstance((Class<?>) cls, arrayList.size()));
        arrayList.toArray((Object[]) t10);
        return t10;
    }
}
