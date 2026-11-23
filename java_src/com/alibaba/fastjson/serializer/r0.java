package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class r0 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static r0 f6735a = new r0();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v0Var.w().write(((com.alibaba.fastjson.b) obj).toJSONString());
    }
}
