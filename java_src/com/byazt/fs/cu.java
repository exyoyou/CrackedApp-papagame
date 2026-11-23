package com.byazt.fs;

import android.graphics.PointF;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 121})
public class cu implements aw<com.byazt.jx.yp> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final cu f14264c = new cu();

    private cu() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:10:0x0029  */
    @Override // com.byazt.fs.aw
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.byazt.jx.yp tt(JsonReader jsonReader, float f10) throws IOException {
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
        }
        jsonReader.beginObject();
        List<PointF> listC = null;
        List<PointF> listC2 = null;
        List<PointF> listC3 = null;
        boolean zNextBoolean = false;
        while (true) {
            if (!jsonReader.hasNext()) {
                jsonReader.endObject();
                if (jsonReader.peek() == JsonToken.END_ARRAY) {
                    jsonReader.endArray();
                }
                if (listC == null || listC2 == null || listC3 == null) {
                    throw new IllegalArgumentException("Shape data was missing information.");
                }
                if (listC.isEmpty()) {
                    return new com.byazt.jx.yp(new PointF(), false, Collections.emptyList());
                }
                int size = listC.size();
                PointF pointF = listC.get(0);
                ArrayList arrayList = new ArrayList(size);
                for (int i10 = 1; i10 < size; i10++) {
                    PointF pointF2 = listC.get(i10);
                    int i11 = i10 - 1;
                    arrayList.add(new com.byazt.nb.c(com.byazt.kk.i.c(listC.get(i11), listC3.get(i11)), com.byazt.kk.i.c(pointF2, listC2.get(i10)), pointF2));
                }
                if (zNextBoolean) {
                    PointF pointF3 = listC.get(0);
                    int i12 = size - 1;
                    arrayList.add(new com.byazt.nb.c(com.byazt.kk.i.c(listC.get(i12), listC3.get(i12)), com.byazt.kk.i.c(pointF3, listC2.get(0)), pointF3));
                }
                return new com.byazt.jx.yp(pointF, zNextBoolean, arrayList);
            }
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "c":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "i":
                    listC2 = my.c(jsonReader, f10);
                    break;
                case "o":
                    listC3 = my.c(jsonReader, f10);
                    break;
                case "v":
                    listC = my.c(jsonReader, f10);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }
}
