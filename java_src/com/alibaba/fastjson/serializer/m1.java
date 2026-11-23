package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import io.netty.util.internal.StringUtil;
import java.awt.Point;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public class m1 implements j1, com.alibaba.fastjson.parser.deserializer.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m1 f6723a = new m1();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.l(16);
            return null;
        }
        if (dVarZ.b() != 12 && dVarZ.b() != 16) {
            throw new JSONException("syntax error");
        }
        dVarZ.j();
        int i10 = 0;
        int i11 = 0;
        while (dVarZ.b() != 13) {
            if (dVarZ.b() != 4) {
                throw new JSONException("syntax error");
            }
            String strR = dVarZ.R();
            if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(strR)) {
                cVar.c("java.awt.Point");
            } else {
                dVarZ.L(2);
                if (dVarZ.b() != 2) {
                    throw new JSONException("syntax error : " + dVarZ.h());
                }
                int I = dVarZ.I();
                dVarZ.j();
                if (strR.equalsIgnoreCase("x")) {
                    i10 = I;
                } else {
                    if (!strR.equalsIgnoreCase("y")) {
                        throw new JSONException("syntax error, " + strR);
                    }
                    i11 = I;
                }
                if (dVarZ.b() == 16) {
                    dVarZ.l(4);
                }
            }
        }
        dVarZ.j();
        return (T) new Point(i10, i11);
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        Point point = (Point) obj;
        if (point == null) {
            v1VarW.p0();
            return;
        }
        char c10 = '{';
        if (v1VarW.g(SerializerFeature.WriteClassName)) {
            v1VarW.m('{');
            v1VarW.v(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
            v1VarW.q0(Point.class.getName());
            c10 = StringUtil.COMMA;
        }
        v1VarW.M(c10, "x", point.getX());
        v1VarW.M(StringUtil.COMMA, "y", point.getY());
        v1VarW.m('}');
    }
}
