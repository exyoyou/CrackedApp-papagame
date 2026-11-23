package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class y0 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static y0 f6781a = new y0();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        ((com.alibaba.fastjson.e) obj).writeJSONString(v0Var.w());
    }
}
