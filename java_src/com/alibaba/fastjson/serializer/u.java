package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes7.dex */
public class u implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f6748a = new u();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        Object objQ = cVar.Q();
        if (objQ == null) {
            return null;
        }
        return (T) Charset.forName((String) objQ);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        if (obj == null) {
            v0Var.N();
        } else {
            v0Var.L(((Charset) obj).toString());
        }
    }
}
