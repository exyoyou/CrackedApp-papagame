package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes7.dex */
public class s implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static s f6741a = new s();

    @Override // com.alibaba.fastjson.serializer.j1
    public final void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (obj != null) {
            v1VarW.q0(new String((char[]) obj));
        } else if (v1VarW.g(SerializerFeature.WriteNullListAsEmpty)) {
            v1VarW.write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        } else {
            v1VarW.p0();
        }
    }
}
