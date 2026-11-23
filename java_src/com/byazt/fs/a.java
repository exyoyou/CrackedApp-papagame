package com.byazt.fs;

import android.graphics.PointF;
import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 34})
public class a {
    public static com.byazt.jx.tt c(JsonReader jsonReader, com.byazt.ga.a aVar, int i10) throws IOException {
        boolean z10 = i10 == 3;
        String strNextString = null;
        com.byazt.kd.u<PointF, PointF> uVarTt = null;
        com.byazt.kd.a aVarVe = null;
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
                case "s":
                    aVarVe = uj.ve(jsonReader, aVar);
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        return new com.byazt.jx.tt(strNextString, uVarTt, aVarVe, z10, zNextBoolean);
    }
}
