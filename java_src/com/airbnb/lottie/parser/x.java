package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class x {
    private x() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    static Mask a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        jsonReader.d();
        Mask.MaskMode maskMode = null;
        com.airbnb.lottie.model.animatable.h hVarK = null;
        com.airbnb.lottie.model.animatable.d dVarH = null;
        boolean zH = false;
        while (jsonReader.g()) {
            String strL = jsonReader.l();
            strL.hashCode();
            switch (strL) {
                case "o":
                    dVarH = d.h(jsonReader, jVar);
                    break;
                case "pt":
                    hVarK = d.k(jsonReader, jVar);
                    break;
                case "inv":
                    zH = jsonReader.h();
                    break;
                case "mode":
                    String strO = jsonReader.o();
                    strO.hashCode();
                    switch (strO) {
                        case "a":
                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                            break;
                        case "i":
                            jVar.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            maskMode = Mask.MaskMode.MASK_MODE_INTERSECT;
                            break;
                        case "n":
                            maskMode = Mask.MaskMode.MASK_MODE_NONE;
                            break;
                        case "s":
                            maskMode = Mask.MaskMode.MASK_MODE_SUBTRACT;
                            break;
                        default:
                            com.airbnb.lottie.utils.f.e("Unknown mask mode " + strL + ". Defaulting to Add.");
                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                            break;
                    }
                    break;
                default:
                    jsonReader.y();
                    break;
            }
        }
        jsonReader.f();
        return new Mask(maskMode, hVarK, dVarH, zH);
    }
}
