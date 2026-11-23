package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import io.netty.util.internal.StringUtil;
import java.awt.Rectangle;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class p1 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p1 f6730a = new p1();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.j();
            return null;
        }
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
            if (strR.equalsIgnoreCase("x")) {
                i10 = I;
            } else if (strR.equalsIgnoreCase("y")) {
                i11 = I;
            } else if (strR.equalsIgnoreCase("width")) {
                i12 = I;
            } else {
                if (!strR.equalsIgnoreCase("height")) {
                    throw new JSONException("syntax error, " + strR);
                }
                i13 = I;
            }
            if (dVarZ.b() == 16) {
                dVarZ.l(4);
            }
        }
        dVarZ.j();
        return (T) new Rectangle(i10, i11, i12, i13);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        Rectangle rectangle = (Rectangle) obj;
        if (rectangle == null) {
            v1VarW.p0();
            return;
        }
        char c10 = '{';
        if (v1VarW.g(SerializerFeature.WriteClassName)) {
            v1VarW.m('{');
            v1VarW.v(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
            v1VarW.q0(Rectangle.class.getName());
            c10 = StringUtil.COMMA;
        }
        v1VarW.M(c10, "x", rectangle.getX());
        v1VarW.M(StringUtil.COMMA, "y", rectangle.getY());
        v1VarW.M(StringUtil.COMMA, "width", rectangle.getWidth());
        v1VarW.M(StringUtil.COMMA, "height", rectangle.getHeight());
        v1VarW.m('}');
    }
}
