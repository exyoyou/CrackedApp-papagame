package com.byazt.fs;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 196})
public class gr {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    public static com.byazt.jx.x c(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        jsonReader.beginObject();
        com.byazt.jx.x.c cVar = null;
        com.byazt.kd.x xVarN = null;
        com.byazt.kd.uj ujVarTt = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "o":
                    ujVarTt = uj.tt(jsonReader, aVar);
                    break;
                case "pt":
                    xVarN = uj.n(jsonReader, aVar);
                    break;
                case "inv":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "mode":
                    String strNextString = jsonReader.nextString();
                    strNextString.hashCode();
                    switch (strNextString) {
                        case "a":
                            cVar = com.byazt.jx.x.c.MASK_MODE_ADD;
                            break;
                        case "i":
                            aVar.c("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            cVar = com.byazt.jx.x.c.MASK_MODE_INTERSECT;
                            break;
                        case "n":
                            cVar = com.byazt.jx.x.c.MASK_MODE_NONE;
                            break;
                        case "s":
                            cVar = com.byazt.jx.x.c.MASK_MODE_SUBTRACT;
                            break;
                        default:
                            com.byazt.kk.a.tt("Unknown mask mode " + strNextName + ". Defaulting to Add.");
                            cVar = com.byazt.jx.x.c.MASK_MODE_ADD;
                            break;
                    }
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.byazt.jx.x(cVar, xVarN, ujVarTt, zNextBoolean);
    }
}
