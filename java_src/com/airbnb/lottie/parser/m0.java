package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5977a = JsonReader.a.a("s", "e", "o", "nm", com.kuaishou.weapon.p0.t.f74888m, LiveConfigKey.HIGH);

    private m0() {
    }

    static ShapeTrimPath a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        String strO = null;
        ShapeTrimPath.Type typeForId = null;
        com.airbnb.lottie.model.animatable.b bVarF = null;
        com.airbnb.lottie.model.animatable.b bVarF2 = null;
        com.airbnb.lottie.model.animatable.b bVarF3 = null;
        boolean zH = false;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5977a);
            if (iT == 0) {
                bVarF = d.f(jsonReader, jVar, false);
            } else if (iT == 1) {
                bVarF2 = d.f(jsonReader, jVar, false);
            } else if (iT == 2) {
                bVarF3 = d.f(jsonReader, jVar, false);
            } else if (iT == 3) {
                strO = jsonReader.o();
            } else if (iT == 4) {
                typeForId = ShapeTrimPath.Type.forId(jsonReader.k());
            } else if (iT != 5) {
                jsonReader.y();
            } else {
                zH = jsonReader.h();
            }
        }
        return new ShapeTrimPath(strO, typeForId, bVarF, bVarF2, bVarF3, zH);
    }
}
