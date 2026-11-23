package com.alibaba.fastjson.serializer;

import com.android.dex.DexFormat;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class t implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f6743a = new t();

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
        return (T) com.alibaba.fastjson.util.k.k(objQ);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        Character ch = (Character) obj;
        if (ch == null) {
            v1VarW.q0("");
        } else if (ch.charValue() == 0) {
            v1VarW.q0(DexFormat.MAGIC_SUFFIX);
        } else {
            v1VarW.q0(ch.toString());
        }
    }
}
