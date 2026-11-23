package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5945a = JsonReader.a.a("ef");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f5946b = JsonReader.a.a(x.a.f97581i, "v");

    e() {
    }

    @Nullable
    private static com.airbnb.lottie.model.content.a a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        jsonReader.d();
        com.airbnb.lottie.model.content.a aVar = null;
        while (true) {
            boolean z10 = false;
            while (true) {
                if (!jsonReader.g()) {
                    jsonReader.f();
                    return aVar;
                }
                int iT = jsonReader.t(f5946b);
                if (iT != 0) {
                    if (iT != 1) {
                        jsonReader.v();
                        jsonReader.y();
                    } else if (z10) {
                        aVar = new com.airbnb.lottie.model.content.a(d.e(jsonReader, jVar));
                    } else {
                        jsonReader.y();
                    }
                } else if (jsonReader.k() == 0) {
                    z10 = true;
                }
            }
        }
    }

    @Nullable
    static com.airbnb.lottie.model.content.a b(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        com.airbnb.lottie.model.content.a aVar = null;
        while (jsonReader.g()) {
            if (jsonReader.t(f5945a) != 0) {
                jsonReader.v();
                jsonReader.y();
            } else {
                jsonReader.b();
                while (jsonReader.g()) {
                    com.airbnb.lottie.model.content.a aVarA = a(jsonReader, jVar);
                    if (aVarA != null) {
                        aVar = aVarA;
                    }
                }
                jsonReader.e();
            }
        }
        return aVar;
    }
}
