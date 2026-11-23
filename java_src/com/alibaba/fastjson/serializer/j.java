package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public class j implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f6714a = new j();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v0Var.w().n0(((AtomicLong) obj).get());
    }
}
