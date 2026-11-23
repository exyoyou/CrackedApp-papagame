package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes7.dex */
public class j implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f6562a = new j();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 14;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        Collection collection;
        if (cVar.z().b() == 8) {
            cVar.z().l(16);
            return null;
        }
        Class<?> clsD = d(type);
        Type type2 = Object.class;
        if (clsD == AbstractCollection.class) {
            collection = (T) new ArrayList();
        } else if (clsD.isAssignableFrom(HashSet.class)) {
            collection = (T) new HashSet();
        } else if (clsD.isAssignableFrom(LinkedHashSet.class)) {
            collection = (T) new LinkedHashSet();
        } else if (clsD.isAssignableFrom(TreeSet.class)) {
            collection = (T) new TreeSet();
        } else if (clsD.isAssignableFrom(ArrayList.class)) {
            collection = (T) new ArrayList();
        } else if (clsD.isAssignableFrom(EnumSet.class)) {
            collection = (T) EnumSet.noneOf((Class) (type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments()[0] : type2));
        } else {
            try {
                collection = (T) ((Collection) clsD.newInstance());
            } catch (Exception unused) {
                throw new JSONException("create instane error, class " + clsD.getName());
            }
        }
        cVar.e0(type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments()[0] : Object.class, collection, obj);
        return (T) collection;
    }

    public Class<?> d(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return d(((ParameterizedType) type).getRawType());
        }
        throw new JSONException("TODO");
    }
}
