package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5948a = JsonReader.a.a("nm", "p", "s", LiveConfigKey.HIGH, com.kuaishou.weapon.p0.t.f74895t);

    private f() {
    }

    static com.airbnb.lottie.model.content.b a(JsonReader jsonReader, com.airbnb.lottie.j jVar, int i10) throws IOException {
        boolean z10 = i10 == 3;
        String strO = null;
        com.airbnb.lottie.model.animatable.m<PointF, PointF> mVarB = null;
        com.airbnb.lottie.model.animatable.f fVarI = null;
        boolean zH = false;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5948a);
            if (iT == 0) {
                strO = jsonReader.o();
            } else if (iT == 1) {
                mVarB = a.b(jsonReader, jVar);
            } else if (iT == 2) {
                fVarI = d.i(jsonReader, jVar);
            } else if (iT == 3) {
                zH = jsonReader.h();
            } else if (iT != 4) {
                jsonReader.v();
                jsonReader.y();
            } else {
                z10 = jsonReader.k() == 3;
            }
        }
        return new com.airbnb.lottie.model.content.b(strO, mVarB, fVarI, z10, zH);
    }
}
