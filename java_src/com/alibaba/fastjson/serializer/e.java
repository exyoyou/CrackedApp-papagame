package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class e implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f6689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j1 f6690b;

    public e(Class<?> cls, j1 j1Var) {
        this.f6689a = cls;
        this.f6690b = j1Var;
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public final void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
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
        Object[] objArr = (Object[]) obj;
        int length = objArr.length;
        r1 context = v0Var.getContext();
        v0Var.D(context, obj, obj2, 0);
        try {
            v1VarW.append('[');
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 != 0) {
                    v1VarW.append(StringUtil.COMMA);
                }
                Object obj3 = objArr[i11];
                if (obj3 == null) {
                    v1VarW.append("null");
                } else if (obj3.getClass() == this.f6689a) {
                    this.f6690b.d(v0Var, obj3, Integer.valueOf(i11), null, 0);
                } else {
                    v0Var.o(obj3.getClass()).d(v0Var, obj3, Integer.valueOf(i11), null, 0);
                }
            }
            v1VarW.append(']');
        } finally {
            v0Var.C(context);
        }
    }
}
