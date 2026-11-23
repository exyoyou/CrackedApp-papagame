package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import java.net.InetAddress;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes7.dex */
public class o0 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static o0 f6727a = new o0();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        InetAddress inetAddress = null;
        if (dVarZ.b() == 8) {
            dVarZ.j();
            return null;
        }
        cVar.a(12);
        int I = 0;
        while (true) {
            String strR = dVarZ.R();
            dVarZ.l(17);
            if (strR.equals("address")) {
                cVar.a(17);
                inetAddress = (InetAddress) cVar.m0(InetAddress.class);
            } else if (strR.equals("port")) {
                cVar.a(17);
                if (dVarZ.b() != 2) {
                    throw new JSONException("port is not int");
                }
                I = dVarZ.I();
                dVarZ.j();
            } else {
                cVar.a(17);
                cVar.Q();
            }
            if (dVarZ.b() != 16) {
                cVar.a(13);
                return (T) new InetSocketAddress(inetAddress, I);
            }
            dVarZ.j();
        }
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        if (obj == null) {
            v0Var.N();
            return;
        }
        v1 v1VarW = v0Var.w();
        InetSocketAddress inetSocketAddress = (InetSocketAddress) obj;
        InetAddress address = inetSocketAddress.getAddress();
        v1VarW.m('{');
        if (address != null) {
            v1VarW.v("address");
            v0Var.K(address);
            v1VarW.m(StringUtil.COMMA);
        }
        v1VarW.v("port");
        v1VarW.j0(inetSocketAddress.getPort());
        v1VarW.m('}');
    }
}
