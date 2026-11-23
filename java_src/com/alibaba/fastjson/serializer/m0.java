package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import io.netty.util.internal.StringUtil;
import java.awt.Font;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class m0 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m0 f6722a = new m0();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        String strR = null;
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
            return null;
        }
        if (dVarZ.b() != 12 && dVarZ.b() != 16) {
            throw new JSONException("syntax error");
        }
        dVarZ.j();
        int I = 0;
        int I2 = 0;
        while (dVarZ.b() != 13) {
            if (dVarZ.b() != 4) {
                throw new JSONException("syntax error");
            }
            String strR2 = dVarZ.R();
            dVarZ.L(2);
            if (strR2.equalsIgnoreCase("name")) {
                if (dVarZ.b() != 4) {
                    throw new JSONException("syntax error");
                }
                strR = dVarZ.R();
                dVarZ.j();
            } else if (strR2.equalsIgnoreCase("style")) {
                if (dVarZ.b() != 2) {
                    throw new JSONException("syntax error");
                }
                I = dVarZ.I();
                dVarZ.j();
            } else {
                if (!strR2.equalsIgnoreCase("size")) {
                    throw new JSONException("syntax error, " + strR2);
                }
                if (dVarZ.b() != 2) {
                    throw new JSONException("syntax error");
                }
                I2 = dVarZ.I();
                dVarZ.j();
            }
            if (dVarZ.b() == 16) {
                dVarZ.l(4);
            }
        }
        dVarZ.j();
        return (T) new Font(strR, I, I2);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        Font font = (Font) obj;
        if (font == null) {
            v1VarW.p0();
            return;
        }
        char c10 = '{';
        if (v1VarW.g(SerializerFeature.WriteClassName)) {
            v1VarW.m('{');
            v1VarW.v(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
            v1VarW.q0(Font.class.getName());
            c10 = StringUtil.COMMA;
        }
        v1VarW.a0(c10, "name", font.getName());
        v1VarW.P(StringUtil.COMMA, "style", font.getStyle());
        v1VarW.P(StringUtil.COMMA, "size", font.getSize());
        v1VarW.m('}');
    }
}
