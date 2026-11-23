package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONArray;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicIntegerArray;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class g implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f6695a = new g();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 14;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.util.concurrent.atomic.AtomicIntegerArray] */
    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        if (cVar.z().b() == 8) {
            cVar.z().l(16);
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        cVar.f0(jSONArray);
        ?? r10 = (T) new AtomicIntegerArray(jSONArray.size());
        for (int i10 = 0; i10 < jSONArray.size(); i10++) {
            r10.set(i10, jSONArray.getInteger(i10).intValue());
        }
        return r10;
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            if (v1VarW.g(SerializerFeature.WriteNullListAsEmpty)) {
                v1VarW.write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
        int length = atomicIntegerArray.length();
        v1VarW.append('[');
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = atomicIntegerArray.get(i11);
            if (i11 != 0) {
                v1VarW.m(StringUtil.COMMA);
            }
            v1VarW.j0(i12);
        }
        v1VarW.append(']');
    }
}
