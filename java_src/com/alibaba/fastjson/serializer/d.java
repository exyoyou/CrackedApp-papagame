package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class d implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f6684a = new d();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        if (obj != null) {
            v0Var.L(obj.toString());
            return;
        }
        v1 v1VarW = v0Var.w();
        if (v1VarW.g(SerializerFeature.WriteNullStringAsEmpty)) {
            v1VarW.q0("");
        } else {
            v1VarW.p0();
        }
    }
}
