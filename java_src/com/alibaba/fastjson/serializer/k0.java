package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class k0 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k0 f6715a = new k0();

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
        float[] fArr = (float[]) obj;
        int length = fArr.length - 1;
        if (length == -1) {
            v1VarW.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        v1VarW.append('[');
        for (int i11 = 0; i11 < length; i11++) {
            float f10 = fArr[i11];
            if (Float.isNaN(f10)) {
                v1VarW.p0();
            } else {
                v1VarW.append(Float.toString(f10));
            }
            v1VarW.append(StringUtil.COMMA);
        }
        float f11 = fArr[length];
        if (Float.isNaN(f11)) {
            v1VarW.p0();
        } else {
            v1VarW.append(Float.toString(f11));
        }
        v1VarW.append(']');
    }
}
