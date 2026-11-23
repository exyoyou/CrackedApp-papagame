package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class k extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Collection f6563c;

    public k(com.alibaba.fastjson.parser.c cVar, Collection collection) {
        super(null, null);
        this.f6563c = collection;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map) {
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void j(Object obj, Object obj2) {
        this.f6563c.add(obj2);
    }
}
