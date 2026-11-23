package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.umeng.analytics.pro.bm;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5943a = JsonReader.a.a("nm", "sy", "pt", "p", "r", "or", bm.f84421x, "ir", bm.ae, LiveConfigKey.HIGH, com.kuaishou.weapon.p0.t.f74895t);

    private c0() {
    }

    static PolystarShape a(JsonReader jsonReader, com.airbnb.lottie.j jVar, int i10) throws IOException {
        boolean z10 = i10 == 3;
        String strO = null;
        PolystarShape.Type typeForValue = null;
        com.airbnb.lottie.model.animatable.b bVarF = null;
        com.airbnb.lottie.model.animatable.m<PointF, PointF> mVarB = null;
        com.airbnb.lottie.model.animatable.b bVarF2 = null;
        com.airbnb.lottie.model.animatable.b bVarE = null;
        com.airbnb.lottie.model.animatable.b bVarE2 = null;
        com.airbnb.lottie.model.animatable.b bVarF3 = null;
        com.airbnb.lottie.model.animatable.b bVarF4 = null;
        boolean zH = false;
        while (jsonReader.g()) {
            switch (jsonReader.t(f5943a)) {
                case 0:
                    strO = jsonReader.o();
                    break;
                case 1:
                    typeForValue = PolystarShape.Type.forValue(jsonReader.k());
                    break;
                case 2:
                    bVarF = d.f(jsonReader, jVar, false);
                    break;
                case 3:
                    mVarB = a.b(jsonReader, jVar);
                    break;
                case 4:
                    bVarF2 = d.f(jsonReader, jVar, false);
                    break;
                case 5:
                    bVarE2 = d.e(jsonReader, jVar);
                    break;
                case 6:
                    bVarF4 = d.f(jsonReader, jVar, false);
                    break;
                case 7:
                    bVarE = d.e(jsonReader, jVar);
                    break;
                case 8:
                    bVarF3 = d.f(jsonReader, jVar, false);
                    break;
                case 9:
                    zH = jsonReader.h();
                    break;
                case 10:
                    z10 = jsonReader.k() == 3;
                    break;
                default:
                    jsonReader.v();
                    jsonReader.y();
                    break;
            }
        }
        return new PolystarShape(strO, typeForValue, bVarF, mVarB, bVarF2, bVarE, bVarE2, bVarF3, bVarF4, zH, z10);
    }
}
