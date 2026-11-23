package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5947a = JsonReader.a.a("nm", "c", "o", "tr", LiveConfigKey.HIGH);

    private e0() {
    }

    static com.airbnb.lottie.model.content.h a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        String strO = null;
        com.airbnb.lottie.model.animatable.b bVarF = null;
        com.airbnb.lottie.model.animatable.b bVarF2 = null;
        com.airbnb.lottie.model.animatable.l lVarG = null;
        boolean zH = false;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5947a);
            if (iT == 0) {
                strO = jsonReader.o();
            } else if (iT == 1) {
                bVarF = d.f(jsonReader, jVar, false);
            } else if (iT == 2) {
                bVarF2 = d.f(jsonReader, jVar, false);
            } else if (iT == 3) {
                lVarG = c.g(jsonReader, jVar);
            } else if (iT != 4) {
                jsonReader.y();
            } else {
                zH = jsonReader.h();
            }
        }
        return new com.airbnb.lottie.model.content.h(strO, bVarF, bVarF2, lVarG, zH);
    }
}
