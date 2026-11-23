package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class e0 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f6691a = new e0();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            v0Var.w().p0();
        } else if (v0Var.y(SerializerFeature.WriteEnumUsingToString)) {
            v0Var.L(((Enum) obj).toString());
        } else {
            v1VarW.j0(((Enum) obj).ordinal());
        }
    }
}
