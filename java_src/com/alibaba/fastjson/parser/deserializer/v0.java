package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class v0 extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f6585c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f6586d;

    public v0(Map map, String str) {
        super(null, null);
        this.f6585c = str;
        this.f6586d = map;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map) {
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void j(Object obj, Object obj2) {
        this.f6586d.put(this.f6585c, obj2);
    }
}
