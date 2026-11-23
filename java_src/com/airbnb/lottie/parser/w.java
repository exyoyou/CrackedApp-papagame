package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.x0;
import com.baidu.mobads.sdk.api.IAdInterListener;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f6065a = JsonReader.a.a(IAdInterListener.AdReqParam.WIDTH, "h", "ip", "op", "fr", "v", RtspHeaders.Values.LAYERS, "assets", "fonts", "chars", "markers");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static JsonReader.a f6066b = JsonReader.a.a("id", RtspHeaders.Values.LAYERS, IAdInterListener.AdReqParam.WIDTH, "h", "p", "u");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final JsonReader.a f6067c = JsonReader.a.a("list");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final JsonReader.a f6068d = JsonReader.a.a("cm", "tm", "dr");

    public static com.airbnb.lottie.j a(JsonReader jsonReader) throws IOException {
        float fE = com.airbnb.lottie.utils.l.e();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArrayCompat<com.airbnb.lottie.model.c> sparseArrayCompat = new SparseArrayCompat<>();
        com.airbnb.lottie.j jVar = new com.airbnb.lottie.j();
        jsonReader.d();
        int iK = 0;
        float fJ = 0.0f;
        float fJ2 = 0.0f;
        float fJ3 = 0.0f;
        int iK2 = 0;
        while (jsonReader.g()) {
            switch (jsonReader.t(f6065a)) {
                case 0:
                    iK = jsonReader.k();
                    break;
                case 1:
                    iK2 = jsonReader.k();
                    break;
                case 2:
                    fJ = (float) jsonReader.j();
                    break;
                case 3:
                    fJ2 = ((float) jsonReader.j()) - 0.01f;
                    map3 = map3;
                    arrayList2 = arrayList2;
                    break;
                case 4:
                    fJ3 = (float) jsonReader.j();
                    map3 = map3;
                    arrayList2 = arrayList2;
                    break;
                case 5:
                    String[] strArrSplit = jsonReader.o().split("\\.");
                    if (!com.airbnb.lottie.utils.l.j(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        jVar.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    map3 = map3;
                    arrayList2 = arrayList2;
                    break;
                case 6:
                    e(jsonReader, jVar, arrayList, longSparseArray);
                    map3 = map3;
                    arrayList2 = arrayList2;
                    break;
                case 7:
                    b(jsonReader, jVar, map, map2);
                    map3 = map3;
                    arrayList2 = arrayList2;
                    break;
                case 8:
                    d(jsonReader, map3);
                    map3 = map3;
                    arrayList2 = arrayList2;
                    break;
                case 9:
                    c(jsonReader, jVar, sparseArrayCompat);
                    map3 = map3;
                    arrayList2 = arrayList2;
                    break;
                case 10:
                    f(jsonReader, arrayList2);
                    map3 = map3;
                    arrayList2 = arrayList2;
                    break;
                default:
                    jsonReader.v();
                    jsonReader.y();
                    map3 = map3;
                    arrayList2 = arrayList2;
                    break;
            }
        }
        jVar.w(new Rect(0, 0, (int) (iK * fE), (int) (iK2 * fE)), fJ, fJ2, fJ3, arrayList, longSparseArray, map, map2, sparseArrayCompat, map3, arrayList2);
        return jVar;
    }

    private static void b(JsonReader jsonReader, com.airbnb.lottie.j jVar, Map<String, List<Layer>> map, Map<String, x0> map2) throws IOException {
        jsonReader.b();
        while (jsonReader.g()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.d();
            String strO = null;
            String strO2 = null;
            String strO3 = null;
            int iK = 0;
            int iK2 = 0;
            while (jsonReader.g()) {
                int iT = jsonReader.t(f6066b);
                if (iT == 0) {
                    strO = jsonReader.o();
                } else if (iT == 1) {
                    jsonReader.b();
                    while (jsonReader.g()) {
                        Layer layerB = v.b(jsonReader, jVar);
                        longSparseArray.put(layerB.e(), layerB);
                        arrayList.add(layerB);
                    }
                    jsonReader.e();
                } else if (iT == 2) {
                    iK = jsonReader.k();
                } else if (iT == 3) {
                    iK2 = jsonReader.k();
                } else if (iT == 4) {
                    strO2 = jsonReader.o();
                } else if (iT != 5) {
                    jsonReader.v();
                    jsonReader.y();
                } else {
                    strO3 = jsonReader.o();
                }
            }
            jsonReader.f();
            if (strO2 != null) {
                x0 x0Var = new x0(iK, iK2, strO, strO2, strO3);
                map2.put(x0Var.e(), x0Var);
            } else {
                map.put(strO, arrayList);
            }
        }
        jsonReader.e();
    }

    private static void c(JsonReader jsonReader, com.airbnb.lottie.j jVar, SparseArrayCompat<com.airbnb.lottie.model.c> sparseArrayCompat) throws IOException {
        jsonReader.b();
        while (jsonReader.g()) {
            com.airbnb.lottie.model.c cVarA = m.a(jsonReader, jVar);
            sparseArrayCompat.put(cVarA.hashCode(), cVarA);
        }
        jsonReader.e();
    }

    private static void d(JsonReader jsonReader, Map<String, com.airbnb.lottie.model.b> map) throws IOException {
        jsonReader.d();
        while (jsonReader.g()) {
            if (jsonReader.t(f6067c) != 0) {
                jsonReader.v();
                jsonReader.y();
            } else {
                jsonReader.b();
                while (jsonReader.g()) {
                    com.airbnb.lottie.model.b bVarA = n.a(jsonReader);
                    map.put(bVarA.c(), bVarA);
                }
                jsonReader.e();
            }
        }
        jsonReader.f();
    }

    private static void e(JsonReader jsonReader, com.airbnb.lottie.j jVar, List<Layer> list, LongSparseArray<Layer> longSparseArray) throws IOException {
        jsonReader.b();
        int i10 = 0;
        while (jsonReader.g()) {
            Layer layerB = v.b(jsonReader, jVar);
            if (layerB.g() == Layer.LayerType.IMAGE) {
                i10++;
            }
            list.add(layerB);
            longSparseArray.put(layerB.e(), layerB);
            if (i10 > 4) {
                com.airbnb.lottie.utils.f.e("You have " + i10 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        jsonReader.e();
    }

    private static void f(JsonReader jsonReader, List<com.airbnb.lottie.model.g> list) throws IOException {
        jsonReader.b();
        while (jsonReader.g()) {
            jsonReader.d();
            float fJ = 0.0f;
            String strO = null;
            float fJ2 = 0.0f;
            while (jsonReader.g()) {
                int iT = jsonReader.t(f6068d);
                if (iT == 0) {
                    strO = jsonReader.o();
                } else if (iT == 1) {
                    fJ = (float) jsonReader.j();
                } else if (iT != 2) {
                    jsonReader.v();
                    jsonReader.y();
                } else {
                    fJ2 = (float) jsonReader.j();
                }
            }
            jsonReader.f();
            list.add(new com.airbnb.lottie.model.g(strO, fJ, fJ2));
        }
        jsonReader.e();
    }
}
