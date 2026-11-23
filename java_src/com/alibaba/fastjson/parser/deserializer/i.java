package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class i implements x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f6561a = new i();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.j();
            return null;
        }
        if (dVarZ.b() != 4) {
            throw new JSONException("expect className");
        }
        String strR = dVarZ.R();
        dVarZ.l(16);
        return (T) com.alibaba.fastjson.util.k.K(strR);
    }
}
