package com.alibaba.fastjson.util;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class h implements ParameterizedType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Type[] f6840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f6841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Type f6842d;

    public h(Type[] typeArr, Type type, Type type2) {
        this.f6840b = typeArr;
        this.f6841c = type;
        this.f6842d = type2;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type[] getActualTypeArguments() {
        return this.f6840b;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getOwnerType() {
        return this.f6841c;
    }

    @Override // java.lang.reflect.ParameterizedType
    public Type getRawType() {
        return this.f6842d;
    }
}
