package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class h implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f6696a = new h();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v0Var.w().j0(((AtomicInteger) obj).get());
    }
}
