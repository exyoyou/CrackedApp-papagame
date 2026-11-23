package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class h1 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h1 f6702a = new h1();

    @Override // com.alibaba.fastjson.serializer.j1
    public final void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        Object[] objArr = (Object[]) obj;
        if (obj == null) {
            if (v1VarW.g(SerializerFeature.WriteNullListAsEmpty)) {
                v1VarW.write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        int length = objArr.length;
        int i11 = length - 1;
        if (i11 == -1) {
            v1VarW.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        r1 context = v0Var.getContext();
        v0Var.D(context, obj, obj2, 0);
        try {
            v1VarW.append('[');
            if (v1VarW.g(SerializerFeature.PrettyFormat)) {
                v0Var.x();
                v0Var.B();
                for (int i12 = 0; i12 < length; i12++) {
                    if (i12 != 0) {
                        v1VarW.m(StringUtil.COMMA);
                        v0Var.B();
                    }
                    v0Var.K(objArr[i12]);
                }
                v0Var.d();
                v0Var.B();
                v1VarW.m(']');
                return;
            }
            Class<?> cls = null;
            j1 j1VarO = null;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj3 = objArr[i13];
                if (obj3 == null) {
                    v1VarW.append("null,");
                } else {
                    if (v0Var.c(obj3)) {
                        v0Var.O(obj3);
                    } else {
                        Class<?> cls2 = obj3.getClass();
                        if (cls2 == cls) {
                            j1VarO.d(v0Var, obj3, null, null, 0);
                        } else {
                            j1VarO = v0Var.o(cls2);
                            j1VarO.d(v0Var, obj3, null, null, 0);
                            cls = cls2;
                        }
                    }
                    v1VarW.append(StringUtil.COMMA);
                }
            }
            Object obj4 = objArr[i11];
            if (obj4 == null) {
                v1VarW.append("null]");
            } else {
                if (v0Var.c(obj4)) {
                    v0Var.O(obj4);
                } else {
                    v0Var.P(obj4, Integer.valueOf(i11));
                }
                v1VarW.append(']');
            }
        } finally {
            v0Var.C(context);
        }
    }
}
