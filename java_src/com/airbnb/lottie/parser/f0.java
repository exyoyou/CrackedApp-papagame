package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5949a = JsonReader.a.a("nm", "r", LiveConfigKey.HIGH);

    private f0() {
    }

    @Nullable
    static com.airbnb.lottie.model.content.i a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        boolean zH = false;
        String strO = null;
        com.airbnb.lottie.model.animatable.b bVarF = null;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5949a);
            if (iT == 0) {
                strO = jsonReader.o();
            } else if (iT == 1) {
                bVarF = d.f(jsonReader, jVar, true);
            } else if (iT != 2) {
                jsonReader.y();
            } else {
                zH = jsonReader.h();
            }
        }
        if (zH) {
            return null;
        }
        return new com.airbnb.lottie.model.content.i(strO, bVarF);
    }
}
