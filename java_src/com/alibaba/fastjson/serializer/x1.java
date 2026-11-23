package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class x1 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6779a;

    public x1(String str) {
        this.f6779a = str;
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        if (obj == null) {
            v0Var.w().p0();
        } else {
            v0Var.L(new SimpleDateFormat(this.f6779a).format((Date) obj));
        }
    }
}
