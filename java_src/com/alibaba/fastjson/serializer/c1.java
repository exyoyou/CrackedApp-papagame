package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class c1 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static c1 f6682a = new c1();

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
        long[] jArr = (long[]) obj;
        v1VarW.m('[');
        for (int i11 = 0; i11 < jArr.length; i11++) {
            if (i11 != 0) {
                v1VarW.m(StringUtil.COMMA);
            }
            v1VarW.n0(jArr[i11]);
        }
        v1VarW.m(']');
    }
}
