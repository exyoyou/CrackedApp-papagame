package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import java.io.IOException;
import java.lang.reflect.Type;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes7.dex */
public class n0 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static n0 f6725a = new n0();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        String str = (String) cVar.Q();
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            return (T) InetAddress.getByName(str);
        } catch (UnknownHostException e10) {
            throw new JSONException("deserialize error", e10);
        }
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        if (obj == null) {
            v0Var.N();
        } else {
            v0Var.L(((InetAddress) obj).getHostAddress());
        }
    }
}
