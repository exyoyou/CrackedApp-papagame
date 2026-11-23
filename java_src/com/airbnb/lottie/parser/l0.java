package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5973a = JsonReader.a.a("nm", "c", IAdInterListener.AdReqParam.WIDTH, "o", "lc", "lj", "ml", LiveConfigKey.HIGH, com.kuaishou.weapon.p0.t.f74895t);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f5974b = JsonReader.a.a("n", "v");

    private l0() {
    }

    static ShapeStroke a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        String strO = null;
        com.airbnb.lottie.model.animatable.b bVar = null;
        com.airbnb.lottie.model.animatable.a aVarC = null;
        com.airbnb.lottie.model.animatable.b bVarE = null;
        com.airbnb.lottie.model.animatable.d dVar = null;
        float fJ = 0.0f;
        boolean zH = false;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        while (jsonReader.g()) {
            switch (jsonReader.t(f5973a)) {
                case 0:
                    strO = jsonReader.o();
                    break;
                case 1:
                    aVarC = d.c(jsonReader, jVar);
                    break;
                case 2:
                    bVarE = d.e(jsonReader, jVar);
                    break;
                case 3:
                    dVar = d.h(jsonReader, jVar);
                    break;
                case 4:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.k() - 1];
                    break;
                case 5:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.k() - 1];
                    break;
                case 6:
                    fJ = (float) jsonReader.j();
                    break;
                case 7:
                    zH = jsonReader.h();
                    break;
                case 8:
                    jsonReader.b();
                    while (jsonReader.g()) {
                        jsonReader.d();
                        String strO2 = null;
                        com.airbnb.lottie.model.animatable.b bVarE2 = null;
                        while (jsonReader.g()) {
                            int iT = jsonReader.t(f5974b);
                            if (iT == 0) {
                                strO2 = jsonReader.o();
                            } else if (iT != 1) {
                                jsonReader.v();
                                jsonReader.y();
                            } else {
                                bVarE2 = d.e(jsonReader, jVar);
                            }
                        }
                        jsonReader.f();
                        strO2.hashCode();
                        switch (strO2) {
                            case "d":
                            case "g":
                                jVar.y(true);
                                arrayList.add(bVarE2);
                                break;
                            case "o":
                                bVar = bVarE2;
                                break;
                        }
                    }
                    jsonReader.e();
                    if (arrayList.size() == 1) {
                        arrayList.add((com.airbnb.lottie.model.animatable.b) arrayList.get(0));
                    }
                    break;
                default:
                    jsonReader.y();
                    break;
            }
        }
        if (dVar == null) {
            dVar = new com.airbnb.lottie.model.animatable.d(Collections.singletonList(new com.airbnb.lottie.value.a(100)));
        }
        if (lineCapType == null) {
            lineCapType = ShapeStroke.LineCapType.BUTT;
        }
        if (lineJoinType == null) {
            lineJoinType = ShapeStroke.LineJoinType.MITER;
        }
        return new ShapeStroke(strO, bVar, arrayList, aVarC, dVar, bVarE, lineCapType, lineJoinType, fJ, zH);
    }
}
