package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public class l1 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l1 f6720a = new l1();

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
        return (T) Pattern.compile((String) objQ);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        if (obj == null) {
            v0Var.N();
        } else {
            v0Var.L(((Pattern) obj).pattern());
        }
    }
}
