package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5957a = JsonReader.a.a("nm", "c", "o", "fillEnabled", "r", LiveConfigKey.HIGH);

    private i0() {
    }

    static com.airbnb.lottie.model.content.k a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        com.airbnb.lottie.model.animatable.d dVar = null;
        String strO = null;
        com.airbnb.lottie.model.animatable.a aVarC = null;
        int iK = 1;
        boolean zH = false;
        boolean zH2 = false;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5957a);
            if (iT == 0) {
                strO = jsonReader.o();
            } else if (iT == 1) {
                aVarC = d.c(jsonReader, jVar);
            } else if (iT == 2) {
                dVar = d.h(jsonReader, jVar);
            } else if (iT == 3) {
                zH = jsonReader.h();
            } else if (iT == 4) {
                iK = jsonReader.k();
            } else if (iT != 5) {
                jsonReader.v();
                jsonReader.y();
            } else {
                zH2 = jsonReader.h();
            }
        }
        if (dVar == null) {
            dVar = new com.airbnb.lottie.model.animatable.d(Collections.singletonList(new com.airbnb.lottie.value.a(100)));
        }
        return new com.airbnb.lottie.model.content.k(strO, zH, iK == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVarC, dVar, zH2);
    }
}
