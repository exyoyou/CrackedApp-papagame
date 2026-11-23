package com.byazt.fs;

import android.graphics.PointF;
import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 42})
public class i implements aw<com.byazt.nb.tt> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i f14268c = new i();

    private i() {
    }

    @Override // com.byazt.fs.aw
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.byazt.nb.tt tt(JsonReader jsonReader, float f10) throws IOException {
        float f11;
        PointF pointF;
        com.byazt.nb.n nVar;
        com.byazt.nb.tt.c cVar = com.byazt.nb.tt.c.CENTER;
        com.byazt.nb.n nVar2 = new com.byazt.nb.n();
        jsonReader.beginObject();
        com.byazt.nb.tt.c cVar2 = cVar;
        String strNextString = null;
        String strNextString2 = null;
        PointF pointF2 = null;
        PointF pointF3 = null;
        String strNextString3 = null;
        String strNextString4 = null;
        float fNextDouble = 0.0f;
        int iNextInt = 0;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        int iC = 0;
        int iC2 = 0;
        float fNextDouble4 = 0.0f;
        boolean zNextBoolean = true;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "f":
                    strNextString = jsonReader.nextString();
                    continue;
                    break;
                case "j":
                    f11 = fNextDouble;
                    pointF = pointF2;
                    nVar = nVar2;
                    int iNextInt2 = jsonReader.nextInt();
                    cVar2 = com.byazt.nb.tt.c.CENTER;
                    if (iNextInt2 <= cVar2.ordinal() && iNextInt2 >= 0) {
                        cVar2 = com.byazt.nb.tt.c.values()[iNextInt2];
                        break;
                    }
                    break;
                case "s":
                    fNextDouble = (float) jsonReader.nextDouble();
                    continue;
                    break;
                case "t":
                    f11 = fNextDouble;
                    pointF = pointF2;
                    nVar = nVar2;
                    strNextString2 = jsonReader.nextString();
                    if (strNextString2 == null) {
                        strNextString2 = "";
                        break;
                    }
                    break;
                case "fc":
                    iC = my.c(jsonReader);
                    continue;
                    break;
                case "lh":
                    fNextDouble2 = (float) jsonReader.nextDouble();
                    continue;
                    break;
                case "ls":
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    continue;
                    break;
                case "of":
                    zNextBoolean = jsonReader.nextBoolean();
                    continue;
                    break;
                case "ps":
                    jsonReader.beginArray();
                    pointF2 = new PointF(((float) jsonReader.nextDouble()) * f10, ((float) jsonReader.nextDouble()) * f10);
                    jsonReader.endArray();
                    fNextDouble = fNextDouble;
                    continue;
                    break;
                case "sc":
                    iC2 = my.c(jsonReader);
                    continue;
                    break;
                case "sw":
                    fNextDouble4 = (float) jsonReader.nextDouble();
                    continue;
                    break;
                case "sz":
                    jsonReader.beginArray();
                    f11 = fNextDouble;
                    pointF = pointF2;
                    nVar = nVar2;
                    PointF pointF4 = new PointF(((float) jsonReader.nextDouble()) * f10, ((float) jsonReader.nextDouble()) * f10);
                    jsonReader.endArray();
                    pointF3 = pointF4;
                    break;
                case "tr":
                    iNextInt = jsonReader.nextInt();
                    continue;
                    break;
                case "els":
                    strNextString4 = jsonReader.nextString();
                    continue;
                    break;
                case "elt":
                    strNextString3 = jsonReader.nextString();
                    continue;
                    break;
                case "line_cfg":
                    c(jsonReader, nVar2);
                    continue;
                    break;
                default:
                    jsonReader.skipValue();
                    f11 = fNextDouble;
                    pointF = pointF2;
                    nVar = nVar2;
                    break;
            }
            fNextDouble = f11;
            nVar2 = nVar;
            pointF2 = pointF;
        }
        jsonReader.endObject();
        return new com.byazt.nb.tt(strNextString2, strNextString, fNextDouble, cVar2, iNextInt, fNextDouble2, fNextDouble3, iC, iC2, fNextDouble4, zNextBoolean, pointF2, pointF3, nVar2, strNextString3, strNextString4);
    }

    private static void c(JsonReader jsonReader, com.byazt.nb.n nVar) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals(com.kuaishou.weapon.p0.t.f74879d)) {
                nVar.f17073c = jsonReader.nextInt();
            } else if (!strNextName.equals(com.kuaishou.weapon.p0.t.f74888m)) {
                jsonReader.skipValue();
            } else {
                int iNextInt = jsonReader.nextInt();
                if (iNextInt <= 3 && iNextInt >= 0) {
                    nVar.tt = iNextInt;
                } else {
                    nVar.tt = 0;
                }
            }
        }
        jsonReader.endObject();
    }
}
