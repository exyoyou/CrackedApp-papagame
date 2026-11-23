package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public final class a1 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a1 f6668a = new a1();

    @Override // com.alibaba.fastjson.serializer.j1
    public final void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        boolean zY = v0Var.y(SerializerFeature.WriteClassName);
        v1 v1VarW = v0Var.w();
        Type type2 = (zY && (type instanceof ParameterizedType)) ? ((ParameterizedType) type).getActualTypeArguments()[0] : null;
        if (obj == null) {
            if (v1VarW.g(SerializerFeature.WriteNullListAsEmpty)) {
                v1VarW.write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                return;
            } else {
                v1VarW.p0();
                return;
            }
        }
        List list = (List) obj;
        if (list.size() == 0) {
            v1VarW.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        r1 context = v0Var.getContext();
        v0Var.D(context, obj, obj2, 0);
        try {
            boolean zG = v1VarW.g(SerializerFeature.PrettyFormat);
            char c10 = StringUtil.COMMA;
            if (zG) {
                v1VarW.append('[');
                v0Var.x();
                int i11 = 0;
                for (Object obj3 : list) {
                    if (i11 != 0) {
                        v1VarW.append(c10);
                    }
                    v0Var.B();
                    if (obj3 == null) {
                        v0Var.w().p0();
                    } else if (v0Var.c(obj3)) {
                        v0Var.O(obj3);
                    } else {
                        j1 j1VarO = v0Var.o(obj3.getClass());
                        v0Var.C(new r1(context, obj, obj2, 0, 0));
                        j1VarO.d(v0Var, obj3, Integer.valueOf(i11), type2, 0);
                    }
                    i11++;
                    c10 = StringUtil.COMMA;
                }
                v0Var.d();
                v0Var.B();
                v1VarW.append(']');
                return;
            }
            v1VarW.append('[');
            int i12 = 0;
            for (Object obj4 : list) {
                if (i12 != 0) {
                    v1VarW.append(StringUtil.COMMA);
                }
                if (obj4 == null) {
                    v1VarW.append("null");
                } else {
                    Class<?> cls = obj4.getClass();
                    if (cls == Integer.class) {
                        v1VarW.j0(((Integer) obj4).intValue());
                    } else {
                        if (cls == Long.class) {
                            long jLongValue = ((Long) obj4).longValue();
                            if (zY) {
                                v1VarW.o0(jLongValue, 'L');
                            } else {
                                v1VarW.n0(jLongValue);
                            }
                        } else {
                            v0Var.C(new r1(context, obj, obj2, 0, 0));
                            if (v0Var.c(obj4)) {
                                v0Var.O(obj4);
                            } else {
                                v0Var.o(obj4.getClass()).d(v0Var, obj4, Integer.valueOf(i12), type2, 0);
                            }
                        }
                        i12++;
                    }
                }
                i12++;
            }
            v1VarW.append(']');
        } finally {
            v0Var.C(context);
        }
    }
}
