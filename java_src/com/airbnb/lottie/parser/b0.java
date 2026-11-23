package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class b0 implements n0<PointF> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b0 f5940a = new b0();

    private b0() {
    }

    @Override // com.airbnb.lottie.parser.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public PointF a(JsonReader jsonReader, float f10) throws IOException {
        JsonReader.Token tokenQ = jsonReader.q();
        if (tokenQ == JsonReader.Token.BEGIN_ARRAY) {
            return s.e(jsonReader, f10);
        }
        if (tokenQ == JsonReader.Token.BEGIN_OBJECT) {
            return s.e(jsonReader, f10);
        }
        if (tokenQ == JsonReader.Token.NUMBER) {
            PointF pointF = new PointF(((float) jsonReader.j()) * f10, ((float) jsonReader.j()) * f10);
            while (jsonReader.g()) {
                jsonReader.y();
            }
            return pointF;
        }
        throw new IllegalArgumentException("Cannot convert json to point. Next token is " + tokenQ);
    }
}
