package com.airbnb.lottie.parser;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class g implements n0<Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f5950a = new g();

    private g() {
    }

    @Override // com.airbnb.lottie.parser.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Integer a(JsonReader jsonReader, float f10) throws IOException {
        boolean z10 = jsonReader.q() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.b();
        }
        double dJ = jsonReader.j();
        double dJ2 = jsonReader.j();
        double dJ3 = jsonReader.j();
        double dJ4 = jsonReader.q() == JsonReader.Token.NUMBER ? jsonReader.j() : 1.0d;
        if (z10) {
            jsonReader.e();
        }
        if (dJ <= 1.0d && dJ2 <= 1.0d && dJ3 <= 1.0d) {
            dJ *= 255.0d;
            dJ2 *= 255.0d;
            dJ3 *= 255.0d;
            if (dJ4 <= 1.0d) {
                dJ4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) dJ4, (int) dJ, (int) dJ2, (int) dJ3));
    }
}
