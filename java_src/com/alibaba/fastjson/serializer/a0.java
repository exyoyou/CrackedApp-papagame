package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes7.dex */
public class a0 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a0 f6667a = new a0();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            v1VarW.p0();
            return;
        }
        String pattern = ((SimpleDateFormat) obj).toPattern();
        if (!v1VarW.g(SerializerFeature.WriteClassName) || obj.getClass() == type) {
            v1VarW.q0(pattern);
            return;
        }
        v1VarW.m('{');
        v1VarW.v(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
        v0Var.L(obj.getClass().getName());
        v1VarW.a0(StringUtil.COMMA, "val", pattern);
        v1VarW.m('}');
    }
}
