package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class f implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f6693a = new f();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (((AtomicBoolean) obj).get()) {
            v1VarW.append("true");
        } else {
            v1VarW.append("false");
        }
    }
}
