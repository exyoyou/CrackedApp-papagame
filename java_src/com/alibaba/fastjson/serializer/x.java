package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;
import java.util.TreeSet;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class x implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f6778a = new x();

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
        SerializerFeature serializerFeature = SerializerFeature.WriteClassName;
        int i11 = 0;
        Type type2 = (v0Var.y(serializerFeature) && (type instanceof ParameterizedType)) ? ((ParameterizedType) type).getActualTypeArguments()[0] : null;
        Collection collection = (Collection) obj;
        r1 context = v0Var.getContext();
        v0Var.D(context, obj, obj2, 0);
        if (v0Var.y(serializerFeature)) {
            if (HashSet.class == collection.getClass()) {
                v1VarW.append("Set");
            } else if (TreeSet.class == collection.getClass()) {
                v1VarW.append("TreeSet");
            }
        }
        try {
            v1VarW.append('[');
            for (Object obj3 : collection) {
                int i12 = i11 + 1;
                if (i11 != 0) {
                    v1VarW.append(StringUtil.COMMA);
                }
                if (obj3 == null) {
                    v1VarW.p0();
                } else {
                    Class<?> cls = obj3.getClass();
                    if (cls == Integer.class) {
                        v1VarW.j0(((Integer) obj3).intValue());
                    } else if (cls == Long.class) {
                        v1VarW.n0(((Long) obj3).longValue());
                        if (v1VarW.g(SerializerFeature.WriteClassName)) {
                            v1VarW.m('L');
                        }
                    } else {
                        v0Var.o(cls).d(v0Var, obj3, Integer.valueOf(i12 - 1), type2, 0);
                    }
                }
                i11 = i12;
            }
            v1VarW.append(']');
        } finally {
            v0Var.C(context);
        }
    }
}
