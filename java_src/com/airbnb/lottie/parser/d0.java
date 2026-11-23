package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5944a = JsonReader.a.a("nm", "p", "s", "r", LiveConfigKey.HIGH);

    private d0() {
    }

    static com.airbnb.lottie.model.content.g a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        String strO = null;
        com.airbnb.lottie.model.animatable.m<PointF, PointF> mVarB = null;
        com.airbnb.lottie.model.animatable.f fVarI = null;
        com.airbnb.lottie.model.animatable.b bVarE = null;
        boolean zH = false;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5944a);
            if (iT == 0) {
                strO = jsonReader.o();
            } else if (iT == 1) {
                mVarB = a.b(jsonReader, jVar);
            } else if (iT == 2) {
                fVarI = d.i(jsonReader, jVar);
            } else if (iT == 3) {
                bVarE = d.e(jsonReader, jVar);
            } else if (iT != 4) {
                jsonReader.y();
            } else {
                zH = jsonReader.h();
            }
        }
        return new com.airbnb.lottie.model.content.g(strO, mVarB, fVarI, bVarE, zH);
    }
}
