package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class c0 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c0 f6681a = new c0();

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
        double[] dArr = (double[]) obj;
        int length = dArr.length - 1;
        if (length == -1) {
            v1VarW.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        v1VarW.append('[');
        for (int i11 = 0; i11 < length; i11++) {
            double d10 = dArr[i11];
            if (Double.isNaN(d10)) {
                v1VarW.p0();
            } else {
                v1VarW.append(Double.toString(d10));
            }
            v1VarW.append(StringUtil.COMMA);
        }
        double d11 = dArr[length];
        if (Double.isNaN(d11)) {
            v1VarW.p0();
        } else {
            v1VarW.append(Double.toString(d11));
        }
        v1VarW.append(']');
    }
}
