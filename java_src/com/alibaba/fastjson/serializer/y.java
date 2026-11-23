package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import io.netty.util.internal.StringUtil;
import java.awt.Color;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class y implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y f6780a = new y();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() != 12 && dVarZ.b() != 16) {
            throw new JSONException("syntax error");
        }
        dVarZ.j();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (dVarZ.b() != 13) {
            if (dVarZ.b() != 4) {
                throw new JSONException("syntax error");
            }
            String strR = dVarZ.R();
            dVarZ.L(2);
            if (dVarZ.b() != 2) {
                throw new JSONException("syntax error");
            }
            int I = dVarZ.I();
            dVarZ.j();
            if (strR.equalsIgnoreCase("r")) {
                i10 = I;
            } else if (strR.equalsIgnoreCase("g")) {
                i11 = I;
            } else if (strR.equalsIgnoreCase(com.kuaishou.weapon.p0.t.f74887l)) {
                i12 = I;
            } else {
                if (!strR.equalsIgnoreCase("alpha")) {
                    throw new JSONException("syntax error, " + strR);
                }
                i13 = I;
            }
            if (dVarZ.b() == 16) {
                dVarZ.l(4);
            }
        }
        dVarZ.j();
        return (T) new Color(i10, i11, i12, i13);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        Color color = (Color) obj;
        if (color == null) {
            v1VarW.p0();
            return;
        }
        char c10 = '{';
        if (v1VarW.g(SerializerFeature.WriteClassName)) {
            v1VarW.m('{');
            v1VarW.v(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
            v1VarW.q0(Color.class.getName());
            c10 = StringUtil.COMMA;
        }
        v1VarW.P(c10, "r", color.getRed());
        v1VarW.P(StringUtil.COMMA, "g", color.getGreen());
        v1VarW.P(StringUtil.COMMA, com.kuaishou.weapon.p0.t.f74887l, color.getBlue());
        if (color.getAlpha() > 0) {
            v1VarW.P(StringUtil.COMMA, "alpha", color.getAlpha());
        }
        v1VarW.m('}');
    }
}
