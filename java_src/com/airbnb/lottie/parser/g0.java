package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class g0 implements n0<com.airbnb.lottie.value.k> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g0 f5951a = new g0();

    private g0() {
    }

    @Override // com.airbnb.lottie.parser.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.airbnb.lottie.value.k a(JsonReader jsonReader, float f10) throws IOException {
        boolean z10 = jsonReader.q() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.b();
        }
        float fJ = (float) jsonReader.j();
        float fJ2 = (float) jsonReader.j();
        while (jsonReader.g()) {
            jsonReader.y();
        }
        if (z10) {
            jsonReader.e();
        }
        return new com.airbnb.lottie.value.k((fJ / 100.0f) * f10, (fJ2 / 100.0f) * f10);
    }
}
