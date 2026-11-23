package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.umeng.analytics.pro.bm;
import java.io.IOException;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f6047a = JsonReader.a.a("nm", "g", "o", bm.aM, "s", "e", "r", LiveConfigKey.HIGH);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f6048b = JsonReader.a.a("p", com.kuaishou.weapon.p0.t.f74876a);

    private p() {
    }

    static com.airbnb.lottie.model.content.e a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        com.airbnb.lottie.model.animatable.d dVarH = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String strO = null;
        GradientType gradientType = null;
        com.airbnb.lottie.model.animatable.c cVarG = null;
        com.airbnb.lottie.model.animatable.f fVarI = null;
        com.airbnb.lottie.model.animatable.f fVarI2 = null;
        boolean zH = false;
        while (jsonReader.g()) {
            switch (jsonReader.t(f6047a)) {
                case 0:
                    strO = jsonReader.o();
                    break;
                case 1:
                    jsonReader.d();
                    int iK = -1;
                    while (jsonReader.g()) {
                        int iT = jsonReader.t(f6048b);
                        if (iT == 0) {
                            iK = jsonReader.k();
                        } else if (iT != 1) {
                            jsonReader.v();
                            jsonReader.y();
                        } else {
                            cVarG = d.g(jsonReader, jVar, iK);
                        }
                    }
                    jsonReader.f();
                    break;
                case 2:
                    dVarH = d.h(jsonReader, jVar);
                    break;
                case 3:
                    gradientType = jsonReader.k() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    fVarI = d.i(jsonReader, jVar);
                    break;
                case 5:
                    fVarI2 = d.i(jsonReader, jVar);
                    break;
                case 6:
                    fillType = jsonReader.k() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    zH = jsonReader.h();
                    break;
                default:
                    jsonReader.v();
                    jsonReader.y();
                    break;
            }
        }
        return new com.airbnb.lottie.model.content.e(strO, gradientType, fillType, cVarG, dVarH == null ? new com.airbnb.lottie.model.animatable.d(Collections.singletonList(new com.airbnb.lottie.value.a(100))) : dVarH, fVarI, fVarI2, null, null, zH);
    }
}
