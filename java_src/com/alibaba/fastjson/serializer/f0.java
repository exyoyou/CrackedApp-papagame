package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Enumeration;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class f0 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static f0 f6694a = new f0();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            if (v1VarW.g(SerializerFeature.WriteNullListAsEmpty)) {
                v1VarW.write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        int i11 = 0;
        Type type2 = (v0Var.y(SerializerFeature.WriteClassName) && (type instanceof ParameterizedType)) ? ((ParameterizedType) type).getActualTypeArguments()[0] : null;
        Enumeration enumeration = (Enumeration) obj;
        r1 context = v0Var.getContext();
        v0Var.D(context, obj, obj2, 0);
        try {
            v1VarW.append('[');
            while (enumeration.hasMoreElements()) {
                Object objNextElement = enumeration.nextElement();
                int i12 = i11 + 1;
                if (i11 != 0) {
                    v1VarW.append(StringUtil.COMMA);
                }
                if (objNextElement == null) {
                    v1VarW.p0();
                } else {
                    v0Var.o(objNextElement.getClass()).d(v0Var, objNextElement, Integer.valueOf(i12 - 1), type2, 0);
                }
                i11 = i12;
            }
            v1VarW.append(']');
        } finally {
            v0Var.C(context);
        }
    }
}
