package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static JsonReader.a f6060a = JsonReader.a.a(com.kuaishou.weapon.p0.t.f74876a);

    private u() {
    }

    static <T> List<com.airbnb.lottie.value.a<T>> a(JsonReader jsonReader, com.airbnb.lottie.j jVar, float f10, n0<T> n0Var, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.q() == JsonReader.Token.STRING) {
            jVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.d();
        while (jsonReader.g()) {
            if (jsonReader.t(f6060a) != 0) {
                jsonReader.y();
            } else if (jsonReader.q() == JsonReader.Token.BEGIN_ARRAY) {
                jsonReader.b();
                if (jsonReader.q() == JsonReader.Token.NUMBER) {
                    arrayList.add(t.c(jsonReader, jVar, f10, n0Var, false, z10));
                } else {
                    while (jsonReader.g()) {
                        arrayList.add(t.c(jsonReader, jVar, f10, n0Var, true, z10));
                    }
                }
                jsonReader.e();
            } else {
                arrayList.add(t.c(jsonReader, jVar, f10, n0Var, false, z10));
            }
        }
        jsonReader.f();
        b(arrayList);
        return arrayList;
    }

    public static <T> void b(List<? extends com.airbnb.lottie.value.a<T>> list) {
        int i10;
        T t10;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            com.airbnb.lottie.value.a<T> aVar = list.get(i11);
            i11++;
            com.airbnb.lottie.value.a<T> aVar2 = list.get(i11);
            aVar.f6139h = Float.valueOf(aVar2.f6138g);
            if (aVar.f6134c == null && (t10 = aVar2.f6133b) != null) {
                aVar.f6134c = t10;
                if (aVar instanceof com.airbnb.lottie.animation.keyframe.i) {
                    ((com.airbnb.lottie.animation.keyframe.i) aVar).j();
                }
            }
        }
        com.airbnb.lottie.value.a<T> aVar3 = list.get(i10);
        if ((aVar3.f6133b == null || aVar3.f6134c == null) && list.size() > 1) {
            list.remove(aVar3);
        }
    }
}
