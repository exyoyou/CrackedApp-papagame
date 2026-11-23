package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f6069a = JsonReader.a.a("nm", "mm", LiveConfigKey.HIGH);

    private y() {
    }

    static MergePaths a(JsonReader jsonReader) throws IOException {
        String strO = null;
        MergePaths.MergePathsMode mergePathsModeForId = null;
        boolean zH = false;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f6069a);
            if (iT == 0) {
                strO = jsonReader.o();
            } else if (iT == 1) {
                mergePathsModeForId = MergePaths.MergePathsMode.forId(jsonReader.k());
            } else if (iT != 2) {
                jsonReader.v();
                jsonReader.y();
            } else {
                zH = jsonReader.h();
            }
        }
        return new MergePaths(strO, mergePathsModeForId, zH);
    }
}
