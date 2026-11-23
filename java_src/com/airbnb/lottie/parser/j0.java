package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5963a = JsonReader.a.a("nm", LiveConfigKey.HIGH, "it");

    private j0() {
    }

    static com.airbnb.lottie.model.content.l a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        String strO = null;
        boolean zH = false;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5963a);
            if (iT == 0) {
                strO = jsonReader.o();
            } else if (iT == 1) {
                zH = jsonReader.h();
            } else if (iT != 2) {
                jsonReader.y();
            } else {
                jsonReader.b();
                while (jsonReader.g()) {
                    com.airbnb.lottie.model.content.c cVarA = h.a(jsonReader, jVar);
                    if (cVarA != null) {
                        arrayList.add(cVarA);
                    }
                }
                jsonReader.e();
            }
        }
        return new com.airbnb.lottie.model.content.l(strO, arrayList, zH);
    }
}
