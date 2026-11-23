package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5936a = JsonReader.a.a(com.kuaishou.weapon.p0.t.f74876a, "x", "y");

    private a() {
    }

    public static com.airbnb.lottie.model.animatable.e a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.q() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.b();
            while (jsonReader.g()) {
                arrayList.add(z.a(jsonReader, jVar));
            }
            jsonReader.e();
            u.b(arrayList);
        } else {
            arrayList.add(new com.airbnb.lottie.value.a(s.e(jsonReader, com.airbnb.lottie.utils.l.e())));
        }
        return new com.airbnb.lottie.model.animatable.e(arrayList);
    }

    static com.airbnb.lottie.model.animatable.m<PointF, PointF> b(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        jsonReader.d();
        com.airbnb.lottie.model.animatable.e eVarA = null;
        com.airbnb.lottie.model.animatable.b bVarE = null;
        com.airbnb.lottie.model.animatable.b bVarE2 = null;
        boolean z10 = false;
        while (jsonReader.q() != JsonReader.Token.END_OBJECT) {
            int iT = jsonReader.t(f5936a);
            if (iT == 0) {
                eVarA = a(jsonReader, jVar);
            } else if (iT != 1) {
                if (iT != 2) {
                    jsonReader.v();
                    jsonReader.y();
                } else if (jsonReader.q() == JsonReader.Token.STRING) {
                    jsonReader.y();
                    z10 = true;
                } else {
                    bVarE2 = d.e(jsonReader, jVar);
                }
            } else if (jsonReader.q() == JsonReader.Token.STRING) {
                jsonReader.y();
                z10 = true;
            } else {
                bVarE = d.e(jsonReader, jVar);
            }
        }
        jsonReader.f();
        if (z10) {
            jVar.a("Lottie doesn't support expressions.");
        }
        return eVarA != null ? eVarA : new com.airbnb.lottie.model.animatable.i(bVarE, bVarE2);
    }
}
