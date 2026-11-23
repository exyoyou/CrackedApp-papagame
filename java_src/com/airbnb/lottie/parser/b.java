package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.umeng.analytics.pro.bm;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5938a = JsonReader.a.a("a");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f5939b = JsonReader.a.a("fc", "sc", "sw", bm.aM);

    private b() {
    }

    public static com.airbnb.lottie.model.animatable.k a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        jsonReader.d();
        com.airbnb.lottie.model.animatable.k kVarB = null;
        while (jsonReader.g()) {
            if (jsonReader.t(f5938a) != 0) {
                jsonReader.v();
                jsonReader.y();
            } else {
                kVarB = b(jsonReader, jVar);
            }
        }
        jsonReader.f();
        return kVarB == null ? new com.airbnb.lottie.model.animatable.k(null, null, null, null) : kVarB;
    }

    private static com.airbnb.lottie.model.animatable.k b(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        jsonReader.d();
        com.airbnb.lottie.model.animatable.a aVarC = null;
        com.airbnb.lottie.model.animatable.a aVarC2 = null;
        com.airbnb.lottie.model.animatable.b bVarE = null;
        com.airbnb.lottie.model.animatable.b bVarE2 = null;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5939b);
            if (iT == 0) {
                aVarC = d.c(jsonReader, jVar);
            } else if (iT == 1) {
                aVarC2 = d.c(jsonReader, jVar);
            } else if (iT == 2) {
                bVarE = d.e(jsonReader, jVar);
            } else if (iT != 3) {
                jsonReader.v();
                jsonReader.y();
            } else {
                bVarE2 = d.e(jsonReader, jVar);
            }
        }
        jsonReader.f();
        return new com.airbnb.lottie.model.animatable.k(aVarC, aVarC2, bVarE, bVarE2);
    }
}
