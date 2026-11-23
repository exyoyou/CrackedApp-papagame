package com.byazt.fs;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 117})
public class rl {
    public static <T> List<com.byazt.vc.c<T>> c(JsonReader jsonReader, com.byazt.ga.a aVar, float f10, aw<T> awVar, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.STRING) {
            aVar.c("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals(com.kuaishou.weapon.p0.t.f74876a)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                if (jsonReader.peek() == JsonToken.NUMBER) {
                    arrayList.add(gt.c(jsonReader, aVar, f10, awVar, false, z10));
                } else {
                    while (jsonReader.hasNext()) {
                        arrayList.add(gt.c(jsonReader, aVar, f10, awVar, true, z10));
                    }
                }
                jsonReader.endArray();
            } else {
                arrayList.add(gt.c(jsonReader, aVar, f10, awVar, false, z10));
            }
        }
        jsonReader.endObject();
        c(arrayList);
        return arrayList;
    }

    public static <T> void c(List<? extends com.byazt.vc.c<T>> list) {
        int i10;
        T t10;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            com.byazt.vc.c<T> cVar = list.get(i11);
            i11++;
            com.byazt.vc.c<T> cVar2 = list.get(i11);
            cVar.sp = Float.valueOf(cVar2.f21164a);
            if (cVar.tt == null && (t10 = cVar2.f21165c) != null) {
                cVar.tt = t10;
                if (cVar instanceof com.byazt.dg.i) {
                    ((com.byazt.dg.i) cVar).c();
                }
            }
        }
        com.byazt.vc.c<T> cVar3 = list.get(i10);
        if ((cVar3.f21165c == null || cVar3.tt == null) && list.size() > 1) {
            list.remove(cVar3);
        }
    }
}
