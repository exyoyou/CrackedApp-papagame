package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5941a = JsonReader.a.a("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f5942b = JsonReader.a.a(com.kuaishou.weapon.p0.t.f74876a);

    private c() {
    }

    private static boolean a(com.airbnb.lottie.model.animatable.e eVar) {
        return eVar == null || (eVar.c() && eVar.b().get(0).f6133b.equals(0.0f, 0.0f));
    }

    private static boolean b(com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar) {
        return mVar == null || (!(mVar instanceof com.airbnb.lottie.model.animatable.i) && mVar.c() && mVar.b().get(0).f6133b.equals(0.0f, 0.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean c(com.airbnb.lottie.model.animatable.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((com.airbnb.lottie.value.a) bVar.b().get(0)).f6133b).floatValue() == 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean d(com.airbnb.lottie.model.animatable.g gVar) {
        return gVar == null || (gVar.c() && ((com.airbnb.lottie.value.k) ((com.airbnb.lottie.value.a) gVar.b().get(0)).f6133b).a(1.0f, 1.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean e(com.airbnb.lottie.model.animatable.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((com.airbnb.lottie.value.a) bVar.b().get(0)).f6133b).floatValue() == 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean f(com.airbnb.lottie.model.animatable.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((com.airbnb.lottie.value.a) bVar.b().get(0)).f6133b).floatValue() == 0.0f);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    /* JADX WARN: Code duplicated, block: B:23:0x0091  */
    /* JADX WARN: Code duplicated, block: B:25:0x00a0  */
    public static com.airbnb.lottie.model.animatable.l g(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        com.airbnb.lottie.model.animatable.b bVarF;
        boolean z10 = false;
        boolean z11 = jsonReader.q() == JsonReader.Token.BEGIN_OBJECT;
        if (z11) {
            jsonReader.d();
        }
        com.airbnb.lottie.model.animatable.b bVar = null;
        com.airbnb.lottie.model.animatable.e eVarA = null;
        com.airbnb.lottie.model.animatable.m<PointF, PointF> mVarB = null;
        com.airbnb.lottie.model.animatable.g gVarJ = null;
        com.airbnb.lottie.model.animatable.b bVarF2 = null;
        com.airbnb.lottie.model.animatable.b bVarF3 = null;
        com.airbnb.lottie.model.animatable.d dVarH = null;
        com.airbnb.lottie.model.animatable.b bVarF4 = null;
        com.airbnb.lottie.model.animatable.b bVarF5 = null;
        while (jsonReader.g()) {
            switch (jsonReader.t(f5941a)) {
                case 0:
                    jsonReader.d();
                    while (jsonReader.g()) {
                        if (jsonReader.t(f5942b) != 0) {
                            jsonReader.v();
                            jsonReader.y();
                        } else {
                            eVarA = a.a(jsonReader, jVar);
                        }
                    }
                    jsonReader.f();
                    z10 = false;
                    break;
                case 1:
                    mVarB = a.b(jsonReader, jVar);
                    z10 = false;
                    break;
                case 2:
                    gVarJ = d.j(jsonReader, jVar);
                    z10 = false;
                    break;
                case 3:
                    jVar.a("Lottie doesn't support 3D layers.");
                    bVarF = d.f(jsonReader, jVar, z10);
                    if (bVarF.b().isEmpty()) {
                        if (((com.airbnb.lottie.value.a) bVarF.b().get(0)).f6133b == 0) {
                            bVarF.b().set(0, new com.airbnb.lottie.value.a(jVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(jVar.f())));
                        }
                        bVar = bVarF;
                        z10 = false;
                    } else {
                        bVarF.b().add(new com.airbnb.lottie.value.a(jVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(jVar.f())));
                    }
                    bVar = bVarF;
                    z10 = false;
                    break;
                case 4:
                    bVarF = d.f(jsonReader, jVar, z10);
                    if (bVarF.b().isEmpty()) {
                        if (((com.airbnb.lottie.value.a) bVarF.b().get(0)).f6133b == 0) {
                            bVarF.b().set(0, new com.airbnb.lottie.value.a(jVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(jVar.f())));
                        }
                        bVar = bVarF;
                        z10 = false;
                    } else {
                        bVarF.b().add(new com.airbnb.lottie.value.a(jVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(jVar.f())));
                    }
                    bVar = bVarF;
                    z10 = false;
                    break;
                case 5:
                    dVarH = d.h(jsonReader, jVar);
                    break;
                case 6:
                    bVarF4 = d.f(jsonReader, jVar, z10);
                    break;
                case 7:
                    bVarF5 = d.f(jsonReader, jVar, z10);
                    break;
                case 8:
                    bVarF2 = d.f(jsonReader, jVar, z10);
                    break;
                case 9:
                    bVarF3 = d.f(jsonReader, jVar, z10);
                    break;
                default:
                    jsonReader.v();
                    jsonReader.y();
                    z10 = false;
                    break;
            }
        }
        if (z11) {
            jsonReader.f();
        }
        com.airbnb.lottie.model.animatable.e eVar = a(eVarA) ? null : eVarA;
        com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar = b(mVarB) ? null : mVarB;
        com.airbnb.lottie.model.animatable.b bVar2 = c(bVar) ? null : bVar;
        if (d(gVarJ)) {
            gVarJ = null;
        }
        return new com.airbnb.lottie.model.animatable.l(eVar, mVar, gVarJ, bVar2, dVarH, bVarF4, bVarF5, f(bVarF2) ? null : bVarF2, e(bVarF3) ? null : bVarF3);
    }
}
