package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONArray;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class t implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f6576a = new t();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 14;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, com.alibaba.fastjson.JSONArray, java.util.Collection] */
    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        ?? r10 = (T) new JSONArray();
        cVar.f0(r10);
        return r10;
    }
}
