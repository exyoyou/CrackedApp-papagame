package com.byazt.fs;

import android.graphics.PointF;
import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 518})
public class h {
    public static com.byazt.jx.da c(JsonReader jsonReader, com.byazt.ga.a aVar, int i10) throws IOException {
        boolean z10 = i10 == 3;
        String strNextString = null;
        com.byazt.jx.da.c cVarC = null;
        com.byazt.kd.tt ttVarC = null;
        com.byazt.kd.u<PointF, PointF> uVarTt = null;
        com.byazt.kd.tt ttVarC2 = null;
        com.byazt.kd.tt ttVarC3 = null;
        com.byazt.kd.tt ttVarC4 = null;
        com.byazt.kd.tt ttVarC5 = null;
        com.byazt.kd.tt ttVarC6 = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "d":
                    if (jsonReader.nextInt() != 3) {
                        z10 = false;
                        break;
                    } else {
                        z10 = true;
                        break;
                    }
                    break;
                case "p":
                    uVarTt = c.tt(jsonReader, aVar);
                    break;
                case "r":
                    ttVarC2 = uj.c(jsonReader, aVar, false);
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "ir":
                    ttVarC3 = uj.c(jsonReader, aVar);
                    break;
                case "is":
                    ttVarC5 = uj.c(jsonReader, aVar, false);
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                case "or":
                    ttVarC4 = uj.c(jsonReader, aVar);
                    break;
                case "os":
                    ttVarC6 = uj.c(jsonReader, aVar, false);
                    break;
                case "pt":
                    ttVarC = uj.c(jsonReader, aVar, false);
                    break;
                case "sy":
                    cVarC = com.byazt.jx.da.c.c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.byazt.jx.da(strNextString, cVarC, ttVarC, uVarTt, ttVarC2, ttVarC3, ttVarC4, ttVarC5, ttVarC6, zNextBoolean, z10);
    }
}
