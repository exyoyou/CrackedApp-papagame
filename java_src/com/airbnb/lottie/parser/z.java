package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class z {
    private z() {
    }

    static com.airbnb.lottie.animation.keyframe.i a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        return new com.airbnb.lottie.animation.keyframe.i(jVar, t.c(jsonReader, jVar, com.airbnb.lottie.utils.l.e(), a0.f5937a, jsonReader.q() == JsonReader.Token.BEGIN_OBJECT, false));
    }
}
