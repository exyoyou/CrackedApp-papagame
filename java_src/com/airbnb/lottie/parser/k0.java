package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static JsonReader.a f5971a = JsonReader.a.a("nm", "ind", MediationConstant.ADN_KS, LiveConfigKey.HIGH);

    private k0() {
    }

    static com.airbnb.lottie.model.content.m a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        String strO = null;
        com.airbnb.lottie.model.animatable.h hVarK = null;
        int iK = 0;
        boolean zH = false;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5971a);
            if (iT == 0) {
                strO = jsonReader.o();
            } else if (iT == 1) {
                iK = jsonReader.k();
            } else if (iT == 2) {
                hVarK = d.k(jsonReader, jVar);
            } else if (iT != 3) {
                jsonReader.y();
            } else {
                zH = jsonReader.h();
            }
        }
        return new com.airbnb.lottie.model.content.m(strO, iK, hVarK, zH);
    }
}
