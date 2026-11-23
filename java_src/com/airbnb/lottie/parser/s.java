package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f6053a = JsonReader.a.a("x", "y");

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6054a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f6054a = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6054a[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6054a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private s() {
    }

    private static PointF a(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.b();
        float fJ = (float) jsonReader.j();
        float fJ2 = (float) jsonReader.j();
        while (jsonReader.q() != JsonReader.Token.END_ARRAY) {
            jsonReader.y();
        }
        jsonReader.e();
        return new PointF(fJ * f10, fJ2 * f10);
    }

    private static PointF b(JsonReader jsonReader, float f10) throws IOException {
        float fJ = (float) jsonReader.j();
        float fJ2 = (float) jsonReader.j();
        while (jsonReader.g()) {
            jsonReader.y();
        }
        return new PointF(fJ * f10, fJ2 * f10);
    }

    private static PointF c(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.d();
        float fG = 0.0f;
        float fG2 = 0.0f;
        while (jsonReader.g()) {
            int iT = jsonReader.t(f6053a);
            if (iT == 0) {
                fG = g(jsonReader);
            } else if (iT != 1) {
                jsonReader.v();
                jsonReader.y();
            } else {
                fG2 = g(jsonReader);
            }
        }
        jsonReader.f();
        return new PointF(fG * f10, fG2 * f10);
    }

    @ColorInt
    static int d(JsonReader jsonReader) throws IOException {
        jsonReader.b();
        int iJ = (int) (jsonReader.j() * 255.0d);
        int iJ2 = (int) (jsonReader.j() * 255.0d);
        int iJ3 = (int) (jsonReader.j() * 255.0d);
        while (jsonReader.g()) {
            jsonReader.y();
        }
        jsonReader.e();
        return Color.argb(255, iJ, iJ2, iJ3);
    }

    static PointF e(JsonReader jsonReader, float f10) throws IOException {
        int i10 = a.f6054a[jsonReader.q().ordinal()];
        if (i10 == 1) {
            return b(jsonReader, f10);
        }
        if (i10 == 2) {
            return a(jsonReader, f10);
        }
        if (i10 == 3) {
            return c(jsonReader, f10);
        }
        throw new IllegalArgumentException("Unknown point starts with " + jsonReader.q());
    }

    static List<PointF> f(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.b();
        while (jsonReader.q() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.b();
            arrayList.add(e(jsonReader, f10));
            jsonReader.e();
        }
        jsonReader.e();
        return arrayList;
    }

    static float g(JsonReader jsonReader) throws IOException {
        JsonReader.Token tokenQ = jsonReader.q();
        int i10 = a.f6054a[tokenQ.ordinal()];
        if (i10 == 1) {
            return (float) jsonReader.j();
        }
        if (i10 != 2) {
            throw new IllegalArgumentException("Unknown value for token of type " + tokenQ);
        }
        jsonReader.b();
        float fJ = (float) jsonReader.j();
        while (jsonReader.g()) {
            jsonReader.y();
        }
        jsonReader.e();
        return fJ;
    }
}
