package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.umeng.analytics.pro.bm;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f6049a = JsonReader.a.a("nm", "g", "o", bm.aM, "s", "e", IAdInterListener.AdReqParam.WIDTH, "lc", "lj", "ml", LiveConfigKey.HIGH, com.kuaishou.weapon.p0.t.f74895t);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f6050b = JsonReader.a.a("p", com.kuaishou.weapon.p0.t.f74876a);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final JsonReader.a f6051c = JsonReader.a.a("n", "v");

    private q() {
    }

    static com.airbnb.lottie.model.content.f a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        String strO = null;
        GradientType gradientType = null;
        com.airbnb.lottie.model.animatable.c cVarG = null;
        com.airbnb.lottie.model.animatable.f fVarI = null;
        com.airbnb.lottie.model.animatable.f fVarI2 = null;
        com.airbnb.lottie.model.animatable.b bVarE = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        float fJ = 0.0f;
        com.airbnb.lottie.model.animatable.b bVar = null;
        boolean zH = false;
        com.airbnb.lottie.model.animatable.d dVar = null;
        while (jsonReader.g()) {
            switch (jsonReader.t(f6049a)) {
                case 0:
                    strO = jsonReader.o();
                    continue;
                case 1:
                    jsonReader.d();
                    int iK = -1;
                    while (jsonReader.g()) {
                        int iT = jsonReader.t(f6050b);
                        if (iT == 0) {
                            iK = jsonReader.k();
                        } else if (iT != 1) {
                            jsonReader.v();
                            jsonReader.y();
                        } else {
                            cVarG = d.g(jsonReader, jVar, iK);
                        }
                        cVarG = cVarG;
                    }
                    jsonReader.f();
                    break;
                case 2:
                    dVar = d.h(jsonReader, jVar);
                    continue;
                case 3:
                    gradientType = jsonReader.k() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    fVarI = d.i(jsonReader, jVar);
                    continue;
                case 5:
                    fVarI2 = d.i(jsonReader, jVar);
                    continue;
                case 6:
                    bVarE = d.e(jsonReader, jVar);
                    continue;
                case 7:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.k() - 1];
                    break;
                case 8:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.k() - 1];
                    break;
                case 9:
                    fJ = (float) jsonReader.j();
                    break;
                case 10:
                    zH = jsonReader.h();
                    continue;
                case 11:
                    jsonReader.b();
                    while (jsonReader.g()) {
                        jsonReader.d();
                        String strO2 = null;
                        com.airbnb.lottie.model.animatable.b bVarE2 = null;
                        while (jsonReader.g()) {
                            int iT2 = jsonReader.t(f6051c);
                            if (iT2 != 0) {
                                com.airbnb.lottie.model.animatable.b bVar2 = bVar;
                                if (iT2 != 1) {
                                    jsonReader.v();
                                    jsonReader.y();
                                } else {
                                    bVarE2 = d.e(jsonReader, jVar);
                                }
                                bVar = bVar2;
                            } else {
                                strO2 = jsonReader.o();
                            }
                        }
                        com.airbnb.lottie.model.animatable.b bVar3 = bVar;
                        jsonReader.f();
                        if (strO2.equals("o")) {
                            bVar = bVarE2;
                        } else {
                            if (strO2.equals(com.kuaishou.weapon.p0.t.f74895t) || strO2.equals("g")) {
                                jVar.y(true);
                                arrayList.add(bVarE2);
                            }
                            bVar = bVar3;
                        }
                    }
                    com.airbnb.lottie.model.animatable.b bVar4 = bVar;
                    jsonReader.e();
                    if (arrayList.size() == 1) {
                        arrayList.add((com.airbnb.lottie.model.animatable.b) arrayList.get(0));
                    }
                    bVar = bVar4;
                    continue;
                default:
                    jsonReader.v();
                    jsonReader.y();
                    continue;
            }
            strO = strO;
        }
        String str = strO;
        if (dVar == null) {
            dVar = new com.airbnb.lottie.model.animatable.d(Collections.singletonList(new com.airbnb.lottie.value.a(100)));
        }
        return new com.airbnb.lottie.model.content.f(str, gradientType, cVarG, dVar, fVarI, fVarI2, bVarE, lineCapType, lineJoinType, fJ, arrayList, bVar, zH);
    }
}
