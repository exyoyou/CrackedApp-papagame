package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f6045a = JsonReader.a.a("fFamily", "fName", "fStyle", "ascent");

    private n() {
    }

    static com.airbnb.lottie.model.b a(JsonReader jsonReader) throws IOException {
        jsonReader.d();
        String strO = null;
        String strO2 = null;
        String strO3 = null;
        float fJ = 0.0f;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f6045a);
            if (iT == 0) {
                strO = jsonReader.o();
            } else if (iT == 1) {
                strO2 = jsonReader.o();
            } else if (iT == 2) {
                strO3 = jsonReader.o();
            } else if (iT != 3) {
                jsonReader.v();
                jsonReader.y();
            } else {
                fJ = (float) jsonReader.j();
            }
        }
        jsonReader.f();
        return new com.airbnb.lottie.model.b(strO, strO2, strO3, fJ);
    }
}
