package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONArray;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class s0 extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6573c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f6574d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.alibaba.fastjson.parser.c f6575e;

    public s0(com.alibaba.fastjson.parser.c cVar, List list, int i10) {
        super(null, null);
        this.f6575e = cVar;
        this.f6573c = i10;
        this.f6574d = list;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void g(com.alibaba.fastjson.parser.c cVar, Object obj, Type type, Map<String, Object> map) {
    }

    @Override // com.alibaba.fastjson.parser.deserializer.r
    public void j(Object obj, Object obj2) {
        JSONArray jSONArray;
        Object relatedArray;
        this.f6574d.set(this.f6573c, obj2);
        List list = this.f6574d;
        if (!(list instanceof JSONArray) || (relatedArray = (jSONArray = (JSONArray) list).getRelatedArray()) == null || Array.getLength(relatedArray) <= this.f6573c) {
            return;
        }
        if (jSONArray.getComponentType() != null) {
            obj2 = com.alibaba.fastjson.util.k.e(obj2, jSONArray.getComponentType(), this.f6575e.j());
        }
        Array.set(relatedArray, this.f6573c, obj2);
    }
}
