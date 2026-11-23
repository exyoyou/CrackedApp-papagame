package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.baidu.mobads.sdk.api.IAdInterListener;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5975a = JsonReader.a.a("ch", "size", IAdInterListener.AdReqParam.WIDTH, "style", "fFamily", "data");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f5976b = JsonReader.a.a("shapes");

    private m() {
    }

    static com.airbnb.lottie.model.c a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.d();
        double dJ = 0.0d;
        String strO = null;
        String strO2 = null;
        double dJ2 = 0.0d;
        char cCharAt = 0;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5975a);
            if (iT == 0) {
                cCharAt = jsonReader.o().charAt(0);
            } else if (iT == 1) {
                dJ2 = jsonReader.j();
            } else if (iT == 2) {
                dJ = jsonReader.j();
            } else if (iT == 3) {
                strO = jsonReader.o();
            } else if (iT == 4) {
                strO2 = jsonReader.o();
            } else if (iT != 5) {
                jsonReader.v();
                jsonReader.y();
            } else {
                jsonReader.d();
                while (jsonReader.g()) {
                    if (jsonReader.t(f5976b) != 0) {
                        jsonReader.v();
                        jsonReader.y();
                    } else {
                        jsonReader.b();
                        while (jsonReader.g()) {
                            arrayList.add((com.airbnb.lottie.model.content.l) h.a(jsonReader, jVar));
                        }
                        jsonReader.e();
                    }
                }
                jsonReader.f();
            }
        }
        jsonReader.f();
        return new com.airbnb.lottie.model.c(arrayList, cCharAt, dJ2, dJ, strO, strO2);
    }
}
