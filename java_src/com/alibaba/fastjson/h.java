package com.alibaba.fastjson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class h<T> {
    public static final Type LIST_STRING = new a().getType();
    private final Type type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];

    static class a extends h<List<String>> {
        a() {
        }
    }

    protected h() {
    }

    public Type getType() {
        return this.type;
    }
}
