package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f5952a = JsonReader.a.a(x.a.f97581i, com.kuaishou.weapon.p0.t.f74895t);

    private h() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Nullable
    static com.airbnb.lottie.model.content.c a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        com.airbnb.lottie.model.content.c cVarA;
        String strO;
        jsonReader.d();
        byte b10 = 2;
        int iK = 2;
        while (true) {
            cVarA = null;
            if (!jsonReader.g()) {
                strO = null;
                break;
            }
            int iT = jsonReader.t(f5952a);
            if (iT == 0) {
                strO = jsonReader.o();
                break;
            }
            if (iT != 1) {
                jsonReader.v();
                jsonReader.y();
            } else {
                iK = jsonReader.k();
            }
        }
        if (strO == null) {
            return null;
        }
        switch (strO.hashCode()) {
            case 3239:
                if (!strO.equals(com.kuaishou.weapon.p0.t.f74889n)) {
                    b10 = -1;
                } else {
                    b10 = 0;
                }
                break;
            case 3270:
                if (!strO.equals("fl")) {
                    b10 = -1;
                } else {
                    b10 = 1;
                }
                break;
            case 3295:
                if (!strO.equals("gf")) {
                    b10 = -1;
                }
                break;
            case 3307:
                if (!strO.equals("gr")) {
                    b10 = -1;
                } else {
                    b10 = 3;
                }
                break;
            case 3308:
                if (!strO.equals("gs")) {
                    b10 = -1;
                } else {
                    b10 = 4;
                }
                break;
            case 3488:
                if (!strO.equals("mm")) {
                    b10 = -1;
                } else {
                    b10 = 5;
                }
                break;
            case 3633:
                if (!strO.equals("rc")) {
                    b10 = -1;
                } else {
                    b10 = 6;
                }
                break;
            case 3634:
                if (!strO.equals("rd")) {
                    b10 = -1;
                } else {
                    b10 = 7;
                }
                break;
            case 3646:
                if (!strO.equals("rp")) {
                    b10 = -1;
                } else {
                    b10 = 8;
                }
                break;
            case 3669:
                if (!strO.equals(com.xinzhu.overmind.utils.x.f90145b)) {
                    b10 = -1;
                } else {
                    b10 = 9;
                }
                break;
            case 3679:
                if (!strO.equals("sr")) {
                    b10 = -1;
                } else {
                    b10 = 10;
                }
                break;
            case 3681:
                if (!strO.equals("st")) {
                    b10 = -1;
                } else {
                    b10 = 11;
                }
                break;
            case 3705:
                if (!strO.equals("tm")) {
                    b10 = -1;
                } else {
                    b10 = 12;
                }
                break;
            case 3710:
                if (!strO.equals("tr")) {
                    b10 = -1;
                } else {
                    b10 = 13;
                }
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
                cVarA = f.a(jsonReader, jVar, iK);
                break;
            case 1:
                cVarA = i0.a(jsonReader, jVar);
                break;
            case 2:
                cVarA = p.a(jsonReader, jVar);
                break;
            case 3:
                cVarA = j0.a(jsonReader, jVar);
                break;
            case 4:
                cVarA = q.a(jsonReader, jVar);
                break;
            case 5:
                cVarA = y.a(jsonReader);
                jVar.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                break;
            case 6:
                cVarA = d0.a(jsonReader, jVar);
                break;
            case 7:
                cVarA = f0.a(jsonReader, jVar);
                break;
            case 8:
                cVarA = e0.a(jsonReader, jVar);
                break;
            case 9:
                cVarA = k0.a(jsonReader, jVar);
                break;
            case 10:
                cVarA = c0.a(jsonReader, jVar, iK);
                break;
            case 11:
                cVarA = l0.a(jsonReader, jVar);
                break;
            case 12:
                cVarA = m0.a(jsonReader, jVar);
                break;
            case 13:
                cVarA = c.g(jsonReader, jVar);
                break;
            default:
                com.airbnb.lottie.utils.f.e("Unknown shape type " + strO);
                break;
        }
        while (jsonReader.g()) {
            jsonReader.y();
        }
        jsonReader.f();
        return cVarA;
    }
}
