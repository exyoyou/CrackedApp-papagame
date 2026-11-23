package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.umeng.analytics.pro.bm;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class i implements n0<DocumentData> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f5955a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f5956b = JsonReader.a.a(bm.aM, com.xinzhu.overmind.server.os.f.TAG, "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of", "ps", "sz");

    private i() {
    }

    @Override // com.airbnb.lottie.parser.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public DocumentData a(JsonReader jsonReader, float f10) throws IOException {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        jsonReader.d();
        DocumentData.Justification justification2 = justification;
        String strO = null;
        String strO2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float fJ = 0.0f;
        int iK = 0;
        float fJ2 = 0.0f;
        float fJ3 = 0.0f;
        int iD = 0;
        int iD2 = 0;
        float fJ4 = 0.0f;
        boolean zH = true;
        while (jsonReader.g()) {
            switch (jsonReader.t(f5956b)) {
                case 0:
                    strO = jsonReader.o();
                    break;
                case 1:
                    strO2 = jsonReader.o();
                    break;
                case 2:
                    fJ = (float) jsonReader.j();
                    break;
                case 3:
                    int iK2 = jsonReader.k();
                    justification2 = DocumentData.Justification.CENTER;
                    if (iK2 <= justification2.ordinal() && iK2 >= 0) {
                        justification2 = DocumentData.Justification.values()[iK2];
                    }
                    break;
                case 4:
                    iK = jsonReader.k();
                    break;
                case 5:
                    fJ2 = (float) jsonReader.j();
                    break;
                case 6:
                    fJ3 = (float) jsonReader.j();
                    break;
                case 7:
                    iD = s.d(jsonReader);
                    break;
                case 8:
                    iD2 = s.d(jsonReader);
                    break;
                case 9:
                    fJ4 = (float) jsonReader.j();
                    break;
                case 10:
                    zH = jsonReader.h();
                    break;
                case 11:
                    jsonReader.b();
                    PointF pointF3 = new PointF(((float) jsonReader.j()) * f10, ((float) jsonReader.j()) * f10);
                    jsonReader.e();
                    pointF = pointF3;
                    break;
                case 12:
                    jsonReader.b();
                    PointF pointF4 = new PointF(((float) jsonReader.j()) * f10, ((float) jsonReader.j()) * f10);
                    jsonReader.e();
                    pointF2 = pointF4;
                    break;
                default:
                    jsonReader.v();
                    jsonReader.y();
                    break;
            }
        }
        jsonReader.f();
        return new DocumentData(strO, strO2, fJ, justification2, iK, fJ2, fJ3, iD, iD2, fJ4, zH, pointF, pointF2);
    }
}
