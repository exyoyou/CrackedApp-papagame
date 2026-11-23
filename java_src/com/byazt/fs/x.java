package com.byazt.fs;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 71})
public class x {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    public static com.byazt.jx.ve c(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        com.byazt.jx.ve veVarC;
        String strNextString;
        jsonReader.beginObject();
        byte b10 = 2;
        int iNextInt = 2;
        while (true) {
            veVarC = null;
            if (!jsonReader.hasNext()) {
                strNextString = null;
                break;
            }
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals(com.kuaishou.weapon.p0.t.f74895t)) {
                if (strNextName.equals(x.a.f97581i)) {
                    strNextString = jsonReader.nextString();
                    break;
                }
                jsonReader.skipValue();
            } else {
                iNextInt = jsonReader.nextInt();
            }
        }
        if (strNextString == null) {
            return null;
        }
        switch (strNextString.hashCode()) {
            case 3239:
                if (!strNextString.equals(com.kuaishou.weapon.p0.t.f74889n)) {
                    b10 = -1;
                } else {
                    b10 = 0;
                }
                break;
            case 3270:
                if (!strNextString.equals("fl")) {
                    b10 = -1;
                } else {
                    b10 = 1;
                }
                break;
            case 3295:
                if (!strNextString.equals("gf")) {
                    b10 = -1;
                }
                break;
            case 3307:
                if (!strNextString.equals("gr")) {
                    b10 = -1;
                } else {
                    b10 = 3;
                }
                break;
            case 3308:
                if (!strNextString.equals("gs")) {
                    b10 = -1;
                } else {
                    b10 = 4;
                }
                break;
            case 3488:
                if (!strNextString.equals("mm")) {
                    b10 = -1;
                } else {
                    b10 = 5;
                }
                break;
            case 3633:
                if (!strNextString.equals("rc")) {
                    b10 = -1;
                } else {
                    b10 = 6;
                }
                break;
            case 3634:
                if (!strNextString.equals("rd")) {
                    b10 = -1;
                } else {
                    b10 = 7;
                }
                break;
            case 3646:
                if (!strNextString.equals("rp")) {
                    b10 = -1;
                } else {
                    b10 = 8;
                }
                break;
            case 3669:
                if (!strNextString.equals(com.xinzhu.overmind.utils.x.f90145b)) {
                    b10 = -1;
                } else {
                    b10 = 9;
                }
                break;
            case 3679:
                if (!strNextString.equals("sr")) {
                    b10 = -1;
                } else {
                    b10 = 10;
                }
                break;
            case 3681:
                if (!strNextString.equals("st")) {
                    b10 = -1;
                } else {
                    b10 = 11;
                }
                break;
            case 3705:
                if (!strNextString.equals("tm")) {
                    b10 = -1;
                } else {
                    b10 = 12;
                }
                break;
            case 3710:
                if (!strNextString.equals("tr")) {
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
                veVarC = a.c(jsonReader, aVar, iNextInt);
                break;
            case 1:
                veVarC = qp.c(jsonReader, aVar);
                break;
            case 2:
                veVarC = m.c(jsonReader, aVar);
                break;
            case 3:
                veVarC = nb.c(jsonReader, aVar);
                break;
            case 4:
                veVarC = nu.c(jsonReader, aVar);
                break;
            case 5:
                veVarC = zm.c(jsonReader);
                aVar.c("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                break;
            case 6:
                veVarC = d.c(jsonReader, aVar);
                break;
            case 7:
                veVarC = zb.c(jsonReader, aVar);
                break;
            case 8:
                veVarC = eo.c(jsonReader, aVar);
                break;
            case 9:
                veVarC = pf.c(jsonReader, aVar);
                break;
            case 10:
                veVarC = h.c(jsonReader, aVar, iNextInt);
                break;
            case 11:
                veVarC = bx.c(jsonReader, aVar);
                break;
            case 12:
                veVarC = sv.c(jsonReader, aVar);
                break;
            case 13:
                veVarC = ve.c(jsonReader, aVar);
                break;
            default:
                com.byazt.kk.a.tt("Unknown shape type ".concat(strNextString));
                break;
        }
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endObject();
        return veVarC;
    }
}
