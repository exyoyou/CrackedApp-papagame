package com.byazt.fs;

import android.graphics.Rect;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.LongSparseArray;
import android.util.SparseArray;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.bm;
import com.umeng.analytics.pro.f;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.n0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 17})
public class gu {
    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    private static String a(JsonReader jsonReader) {
        byte b10;
        JSONArray jSONArray = new JSONArray();
        try {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                JSONObject jSONObject = new JSONObject();
                jSONArray.put(jSONObject);
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName = jsonReader.nextName();
                    int iHashCode = strNextName.hashCode();
                    if (iHashCode != 3551) {
                        if (iHashCode == 2069097 && strNextName.equals("handlers")) {
                            b10 = 1;
                        } else {
                            b10 = -1;
                        }
                    } else if (strNextName.equals(n0.f93598d)) {
                        b10 = 0;
                    } else {
                        b10 = -1;
                    }
                    if (b10 == 0) {
                        try {
                            jSONObject.put(n0.f93598d, jsonReader.nextString());
                        } catch (JSONException e10) {
                            com.byazt.nr.m.c(e10);
                        }
                    } else if (b10 != 1) {
                        jsonReader.skipValue();
                    } else {
                        try {
                            JSONArray jSONArray2 = new JSONArray();
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                jSONArray2.put(jsonReader.nextString());
                            }
                            jsonReader.endArray();
                            jSONObject.put("handlers", jSONArray2);
                        } catch (JSONException e11) {
                            com.byazt.nr.m.c(e11);
                        }
                    }
                }
                jsonReader.endObject();
            }
            jsonReader.endArray();
        } catch (Exception e12) {
            com.byazt.nr.m.c(e12);
        }
        return jSONArray.length() > 0 ? jSONArray.toString() : "";
    }

    public static com.byazt.ga.a c(JsonReader jsonReader) throws IOException {
        float f10;
        float fC = com.byazt.kk.da.c();
        LongSparseArray<com.byazt.zk.x> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArray<com.byazt.nb.uj> sparseArray = new SparseArray<>();
        com.byazt.ga.a.uj ujVar = new com.byazt.ga.a.uj();
        com.byazt.ga.a.tt ttVar = new com.byazt.ga.a.tt();
        com.byazt.ga.a.ve veVar = new com.byazt.ga.a.ve();
        com.byazt.ga.a.c cVar = new com.byazt.ga.a.c();
        com.byazt.ga.a aVar = new com.byazt.ga.a();
        jsonReader.beginObject();
        String strNextString = null;
        int iNextInt = 0;
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        int iNextInt2 = 0;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            byte b10 = -1;
            switch (strNextName.hashCode()) {
                case -1408207997:
                    f10 = fC;
                    if (strNextName.equals("assets")) {
                        b10 = 0;
                    }
                    break;
                case -1109732030:
                    f10 = fC;
                    if (strNextName.equals(RtspHeaders.Values.LAYERS)) {
                        b10 = 1;
                    }
                    break;
                case -865448777:
                    f10 = fC;
                    if (strNextName.equals("globalEvent")) {
                        b10 = 2;
                    }
                    break;
                case 104:
                    f10 = fC;
                    if (strNextName.equals("h")) {
                        b10 = 3;
                    }
                    break;
                case 118:
                    f10 = fC;
                    if (strNextName.equals("v")) {
                        b10 = 4;
                    }
                    break;
                case 119:
                    f10 = fC;
                    if (strNextName.equals(IAdInterListener.AdReqParam.WIDTH)) {
                        b10 = 5;
                    }
                    break;
                case 3208:
                    f10 = fC;
                    if (strNextName.equals("dl")) {
                        b10 = 6;
                    }
                    break;
                case 3276:
                    f10 = fC;
                    if (strNextName.equals("fr")) {
                        b10 = 7;
                    }
                    break;
                case 3292:
                    f10 = fC;
                    if (strNextName.equals("gc")) {
                        b10 = 8;
                    }
                    break;
                case 3367:
                    f10 = fC;
                    if (strNextName.equals("ip")) {
                        b10 = 9;
                    }
                    break;
                case 3553:
                    f10 = fC;
                    if (strNextName.equals("op")) {
                        b10 = 10;
                    }
                    break;
                case 3002509:
                    f10 = fC;
                    if (strNextName.equals("area")) {
                        b10 = 11;
                    }
                    break;
                case 94623709:
                    f10 = fC;
                    if (strNextName.equals("chars")) {
                        b10 = 12;
                    }
                    break;
                case 97615364:
                    f10 = fC;
                    if (strNextName.equals("fonts")) {
                        b10 = 13;
                    }
                    break;
                case 110364485:
                    f10 = fC;
                    if (strNextName.equals("timer")) {
                        b10 = 14;
                    }
                    break;
                case 839250809:
                    f10 = fC;
                    if (strNextName.equals("markers")) {
                        b10 = 15;
                    }
                    break;
                default:
                    f10 = fC;
                    break;
            }
            switch (b10) {
                case 0:
                    c(jsonReader, aVar, map, map2);
                    break;
                case 1:
                    c(jsonReader, aVar, arrayList, longSparseArray);
                    break;
                case 2:
                    c(jsonReader, veVar);
                    break;
                case 3:
                    iNextInt2 = jsonReader.nextInt();
                    break;
                case 4:
                    String[] strArrSplit = jsonReader.nextString().split("\\.");
                    if (!com.byazt.kk.da.c(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        aVar.c("Lottie only supports bodymovin >= 4.4.0");
                    }
                    break;
                case 5:
                    iNextInt = jsonReader.nextInt();
                    break;
                case 6:
                    strNextString = jsonReader.nextString();
                    break;
                case 7:
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    break;
                case 8:
                    c(jsonReader, ttVar);
                    break;
                case 9:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case 10:
                    fNextDouble2 = ((float) jsonReader.nextDouble()) - 0.01f;
                    break;
                case 11:
                    c(jsonReader, cVar);
                    break;
                case 12:
                    c(jsonReader, aVar, sparseArray);
                    break;
                case 13:
                    c(jsonReader, map3);
                    break;
                case 14:
                    c(jsonReader, ujVar);
                    break;
                case 15:
                    c(jsonReader, arrayList2);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
            fC = f10;
        }
        float f11 = fC;
        jsonReader.endObject();
        aVar.c(new Rect(0, 0, (int) (iNextInt * f11), (int) (iNextInt2 * f11)), fNextDouble, fNextDouble2, fNextDouble3, arrayList, longSparseArray, map, map2, sparseArray, map3, arrayList2, ujVar, strNextString, ttVar, veVar, cVar);
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    private static JSONArray n(JsonReader jsonReader) {
        byte b10;
        JSONArray jSONArray = new JSONArray();
        try {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                JSONObject jSONObject = new JSONObject();
                jSONArray.put(jSONObject);
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName = jsonReader.nextName();
                    int iHashCode = strNextName.hashCode();
                    if (iHashCode != 3324) {
                        if (iHashCode == 116753 && strNextName.equals(PointParamKey.VID)) {
                            b10 = 0;
                        } else {
                            b10 = -1;
                        }
                    } else if (strNextName.equals(LiveConfigKey.HIGH)) {
                        b10 = 1;
                    } else {
                        b10 = -1;
                    }
                    if (b10 == 0) {
                        try {
                            jSONObject.put(PointParamKey.VID, jsonReader.nextString());
                        } catch (JSONException e10) {
                            com.byazt.nr.m.c(e10);
                        }
                    } else if (b10 != 1) {
                        jsonReader.skipValue();
                    } else {
                        try {
                            jSONObject.put(LiveConfigKey.HIGH, jsonReader.nextInt());
                        } catch (JSONException e11) {
                            com.byazt.nr.m.c(e11);
                        }
                    }
                }
                jsonReader.endObject();
            }
            jsonReader.endArray();
        } catch (Exception e12) {
            com.byazt.nr.m.c(e12);
        }
        return jSONArray;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:51:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e8  */
    private static List<com.byazt.ga.i.ve> sp(JsonReader jsonReader) {
        byte b10;
        try {
            ArrayList arrayList = new ArrayList();
            while (jsonReader.hasNext()) {
                com.byazt.ga.i.ve veVar = new com.byazt.ga.i.ve();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    switch (jsonReader.nextName()) {
                        case "l":
                            veVar.f14389c = jsonReader.nextInt();
                            break;
                        case "le":
                            veVar.tt = jsonReader.nextInt();
                            break;
                        case "s":
                            veVar.f14388a = jsonReader.nextInt();
                            break;
                        case "els":
                            veVar.sp = jsonReader.nextString();
                            break;
                        case "c":
                            veVar.uj = jsonReader.nextString();
                            break;
                        case "fcl":
                            veVar.ve = jsonReader.nextString();
                            break;
                        case "bold":
                            veVar.f14395x = jsonReader.nextInt();
                            break;
                        case "f":
                            veVar.f14392n = jsonReader.nextString();
                            break;
                        case "bs":
                            veVar.f14391i = jsonReader.nextInt();
                            break;
                        case "ali":
                            veVar.f14390da = jsonReader.nextString();
                            break;
                        case "ul":
                            veVar.sl = x(jsonReader);
                            break;
                        case "st":
                            veVar.f14393t = x(jsonReader);
                            break;
                        case "ml":
                            jsonReader.beginObject();
                            while (jsonReader.hasNext()) {
                                String strNextName = jsonReader.nextName();
                                int iHashCode = strNextName.hashCode();
                                if (iHashCode != 108) {
                                    if (iHashCode == 109 && strNextName.equals(com.kuaishou.weapon.p0.t.f74888m)) {
                                        b10 = 0;
                                    } else {
                                        b10 = -1;
                                    }
                                } else if (strNextName.equals(com.kuaishou.weapon.p0.t.f74879d)) {
                                    b10 = 1;
                                } else {
                                    b10 = -1;
                                }
                                if (b10 == 0) {
                                    veVar.f14394u = jsonReader.nextInt();
                                } else if (b10 != 1) {
                                    jsonReader.skipValue();
                                } else {
                                    veVar.yp = jsonReader.nextInt();
                                }
                            }
                            jsonReader.endObject();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                jsonReader.endObject();
                arrayList.add(veVar);
            }
            return arrayList;
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static com.byazt.rs.uj tt(JsonReader jsonReader) {
        String strNextString;
        String strNextString2;
        String strNextString3;
        String strNextString4;
        byte b10;
        try {
            jsonReader.beginObject();
            strNextString = null;
            strNextString2 = null;
            strNextString3 = null;
            strNextString4 = null;
            while (jsonReader.hasNext()) {
                try {
                    String strNextName = jsonReader.nextName();
                    switch (strNextName.hashCode()) {
                        case -332625698:
                            if (!strNextName.equals("baseUrl")) {
                                b10 = -1;
                            } else {
                                b10 = 1;
                            }
                            break;
                        case 107902:
                            if (!strNextName.equals(TKDownloadReason.KSAD_TK_MD5)) {
                                b10 = -1;
                            } else {
                                b10 = 2;
                            }
                            break;
                        case 116079:
                            if (!strNextName.equals("url")) {
                                b10 = -1;
                            } else {
                                b10 = 0;
                            }
                            break;
                        case 374523318:
                            if (!strNextName.equals("firstImageName")) {
                                b10 = -1;
                            } else {
                                b10 = 3;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                    if (b10 == 0) {
                        strNextString = jsonReader.nextString();
                    } else if (b10 == 1) {
                        strNextString2 = jsonReader.nextString();
                    } else if (b10 == 2) {
                        strNextString3 = jsonReader.nextString();
                    } else if (b10 != 3) {
                        jsonReader.skipValue();
                    } else {
                        strNextString4 = jsonReader.nextString();
                    }
                } catch (Exception e10) {
                    e = e10;
                    com.byazt.nr.m.c(e);
                }
            }
            jsonReader.endObject();
        } catch (Exception e11) {
            e = e11;
            strNextString = null;
            strNextString2 = null;
            strNextString3 = null;
            strNextString4 = null;
        }
        if (strNextString == null) {
            return null;
        }
        return new com.byazt.rs.uj(strNextString, strNextString2, strNextString3, strNextString4);
    }

    private static String[] uj(JsonReader jsonReader) {
        String[] strArr = null;
        try {
            jsonReader.beginArray();
            strArr = new String[3];
            for (int i10 = 0; i10 < 3; i10++) {
                if (jsonReader.hasNext()) {
                    strArr[i10] = jsonReader.nextString();
                }
            }
            jsonReader.endArray();
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
        return strArr;
    }

    private static Map<String, Object> ve(JsonReader jsonReader) throws IOException {
        HashMap map = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "el":
                    map.put(com.kuaishou.weapon.p0.t.f74889n, jsonReader.nextString());
                    break;
                case "lel":
                    map.put("lel", n(jsonReader));
                    break;
                case "lottie_back":
                    JSONObject jSONObject = new JSONObject();
                    map.put("lottie_back", jSONObject);
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.hashCode();
                        if (strNextName2.equals(LiveConfigKey.HIGH)) {
                            try {
                                jSONObject.putOpt(LiveConfigKey.HIGH, Integer.valueOf(jsonReader.nextInt()));
                                jSONObject.putOpt(PointParamKey.VID, "lottie_back");
                            } catch (JSONException e10) {
                                com.byazt.nr.m.c(e10);
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        Object objRemove = map.remove("lottie_back");
        if (objRemove instanceof JSONObject) {
            Object obj = map.get("lel");
            if (obj instanceof JSONArray) {
                ((JSONArray) obj).put(objRemove);
            } else {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(objRemove);
                map.put("lel", jSONArray);
            }
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    private static com.byazt.ga.i.ve.c x(JsonReader jsonReader) {
        byte b10;
        try {
            com.byazt.ga.i.ve.c cVar = new com.byazt.ga.i.ve.c();
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                int iHashCode = strNextName.hashCode();
                if (iHashCode != 99) {
                    if (iHashCode == 3706 && strNextName.equals("tn")) {
                        b10 = 0;
                    } else {
                        b10 = -1;
                    }
                } else if (strNextName.equals("c")) {
                    b10 = 1;
                } else {
                    b10 = -1;
                }
                if (b10 == 0) {
                    cVar.f14396c = jsonReader.nextInt();
                } else if (b10 != 1) {
                    jsonReader.skipValue();
                } else {
                    cVar.tt = jsonReader.nextString();
                }
            }
            jsonReader.endObject();
            return cVar;
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003f  */
    private static void tt(JsonReader jsonReader, com.byazt.ga.a.tt ttVar) {
        byte b10;
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                int iHashCode = strNextName.hashCode();
                if (iHashCode != 3239) {
                    if (iHashCode != 3276) {
                        if (iHashCode == 107027 && strNextName.equals("lel")) {
                            b10 = 2;
                        } else {
                            b10 = -1;
                        }
                    } else if (strNextName.equals("fr")) {
                        b10 = 0;
                    } else {
                        b10 = -1;
                    }
                } else if (strNextName.equals(com.kuaishou.weapon.p0.t.f74889n)) {
                    b10 = 1;
                } else {
                    b10 = -1;
                }
                if (b10 == 0) {
                    ttVar.f14355n = jsonReader.nextInt();
                } else if (b10 == 1) {
                    ttVar.f14353a = jsonReader.nextString();
                } else if (b10 != 2) {
                    jsonReader.skipValue();
                } else {
                    ttVar.sp = n(jsonReader);
                }
            }
            jsonReader.endObject();
        } catch (IOException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static void c(JsonReader jsonReader, com.byazt.ga.a.c cVar) {
        byte b10;
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                int iHashCode = strNextName.hashCode();
                if (iHashCode != 104) {
                    switch (iHashCode) {
                        case 119:
                            if (!strNextName.equals(IAdInterListener.AdReqParam.WIDTH)) {
                                b10 = -1;
                            } else {
                                b10 = 2;
                            }
                            break;
                        case 120:
                            if (!strNextName.equals("x")) {
                                b10 = -1;
                            } else {
                                b10 = 0;
                            }
                            break;
                        case 121:
                            if (!strNextName.equals("y")) {
                                b10 = -1;
                            } else {
                                b10 = 1;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                } else if (strNextName.equals("h")) {
                    b10 = 3;
                } else {
                    b10 = -1;
                }
                if (b10 == 0) {
                    cVar.f14350c = jsonReader.nextString();
                } else if (b10 == 1) {
                    cVar.tt = jsonReader.nextString();
                } else if (b10 == 2) {
                    cVar.ve = jsonReader.nextString();
                } else if (b10 != 3) {
                    jsonReader.skipValue();
                } else {
                    cVar.uj = jsonReader.nextString();
                }
            }
            jsonReader.endObject();
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0052  */
    private static void c(JsonReader jsonReader, com.byazt.ga.a.ve veVar) {
        byte b10;
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                int iHashCode = strNextName.hashCode();
                if (iHashCode != -1291329255) {
                    if (iHashCode != 3239) {
                        if (iHashCode != 107027) {
                            if (iHashCode == 3237004 && strNextName.equals("inel")) {
                                b10 = 0;
                            } else {
                                b10 = -1;
                            }
                        } else if (strNextName.equals("lel")) {
                            b10 = 2;
                        } else {
                            b10 = -1;
                        }
                    } else if (strNextName.equals(com.kuaishou.weapon.p0.t.f74889n)) {
                        b10 = 1;
                    } else {
                        b10 = -1;
                    }
                } else if (strNextName.equals(f.ax)) {
                    b10 = 3;
                } else {
                    b10 = -1;
                }
                if (b10 == 0) {
                    veVar.tt = new int[][]{new int[]{-1, -1}};
                    jsonReader.beginArray();
                    if (jsonReader.hasNext()) {
                        jsonReader.beginArray();
                        for (int i10 = 0; i10 < 2; i10++) {
                            if (jsonReader.hasNext()) {
                                veVar.tt[0][i10] = jsonReader.nextInt();
                            }
                        }
                        jsonReader.endArray();
                    }
                    jsonReader.endArray();
                } else if (b10 == 1) {
                    veVar.f14365c = jsonReader.nextString();
                } else if (b10 == 2) {
                    veVar.ve = n(jsonReader);
                } else if (b10 != 3) {
                    jsonReader.skipValue();
                } else {
                    veVar.f14366n = a(jsonReader);
                }
            }
            jsonReader.endObject();
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x006d  */
    private static void c(JsonReader jsonReader, com.byazt.ga.a.tt ttVar) {
        byte b10;
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                int iHashCode = strNextName.hashCode();
                if (iHashCode != 3139) {
                    if (iHashCode != 3232) {
                        if (iHashCode != 3571) {
                            if (iHashCode != 3666) {
                                if (iHashCode != 98713) {
                                    if (iHashCode == 120609 && strNextName.equals(com.sigmob.sdk.archives.d.f78712e)) {
                                        b10 = 5;
                                    } else {
                                        b10 = -1;
                                    }
                                } else if (strNextName.equals("cpf")) {
                                    b10 = 4;
                                } else {
                                    b10 = -1;
                                }
                            } else if (strNextName.equals("se")) {
                                b10 = 0;
                            } else {
                                b10 = -1;
                            }
                        } else if (strNextName.equals(com.kuaishou.weapon.p0.t.f74899x)) {
                            b10 = 3;
                        } else {
                            b10 = -1;
                        }
                    } else if (strNextName.equals("ee")) {
                        b10 = 2;
                    } else {
                        b10 = -1;
                    }
                } else if (strNextName.equals("be")) {
                    b10 = 1;
                } else {
                    b10 = -1;
                }
                if (b10 == 0) {
                    ttVar.f14354c = jsonReader.nextInt();
                } else if (b10 == 1) {
                    ttVar.tt = ve(jsonReader);
                } else if (b10 == 2) {
                    ttVar.ve = ve(jsonReader);
                } else if (b10 == 3) {
                    ttVar.uj = jsonReader.nextInt();
                } else if (b10 == 4) {
                    tt(jsonReader, ttVar);
                } else if (b10 != 5) {
                    jsonReader.skipValue();
                } else {
                    ttVar.f14356x = tt(jsonReader);
                }
            }
            jsonReader.endObject();
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00a3  */
    private static void c(JsonReader jsonReader, com.byazt.ga.a.uj ujVar) {
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                switch (jsonReader.nextName()) {
                    case "ke":
                        ujVar.f14358c = jsonReader.nextInt();
                        break;
                    case "id":
                        ujVar.tt = jsonReader.nextString();
                        break;
                    case "tl":
                        ujVar.ve = jsonReader.nextString();
                        break;
                    case "at":
                        ujVar.uj = jsonReader.nextString();
                        break;
                    case "inel":
                        ujVar.f14361n = new int[]{-1, -1};
                        jsonReader.beginArray();
                        for (int i10 = 0; i10 < 2; i10++) {
                            if (jsonReader.hasNext()) {
                                ujVar.f14361n[i10] = jsonReader.nextInt();
                            }
                        }
                        jsonReader.endArray();
                        break;
                    case "el":
                        ujVar.f14357a = jsonReader.nextString();
                        break;
                    case "lel":
                        ujVar.sp = n(jsonReader);
                        break;
                    case "begin_el":
                        ujVar.f14364x = jsonReader.nextString();
                        break;
                    case "begin_lel":
                        ujVar.f14360i = n(jsonReader);
                        break;
                    case "lo":
                        ujVar.f14359da = jsonReader.nextInt();
                        break;
                    case "tp":
                        ujVar.sl = jsonReader.nextInt();
                        break;
                    case "ids":
                        ujVar.f14362t = uj(jsonReader);
                        break;
                    case "kp":
                        ujVar.f14363u = jsonReader.nextInt();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    private static void c(JsonReader jsonReader, com.byazt.ga.a aVar, List<com.byazt.zk.x> list, LongSparseArray<com.byazt.zk.x> longSparseArray) throws IOException {
        jsonReader.beginArray();
        int i10 = 0;
        while (jsonReader.hasNext()) {
            com.byazt.zk.x xVarC = qy.c(jsonReader, aVar);
            if (xVarC.sl() == com.byazt.zk.x.c.IMAGE) {
                i10++;
            }
            list.add(xVarC);
            longSparseArray.put(xVarC.n(), xVarC);
            if (i10 > 4) {
                com.byazt.kk.a.tt("You have " + i10 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        jsonReader.endArray();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:10:0x0042  */
    private static void c(JsonReader jsonReader, com.byazt.ga.a aVar, Map<String, List<com.byazt.zk.x>> map, Map<String, com.byazt.ga.i> map2) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.beginObject();
            String strNextString = null;
            String strNextString2 = null;
            String strNextString3 = null;
            String strNextString4 = null;
            List<com.byazt.ga.i.ve> listSp = null;
            String strNextString5 = null;
            int[][] iArr = null;
            JSONArray jSONArrayN = null;
            String strNextString6 = null;
            String strNextString7 = null;
            com.byazt.ga.i.c cVar = null;
            com.byazt.ga.i.tt ttVar = null;
            String strA = null;
            int iNextInt = 0;
            int iNextInt2 = 0;
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.hashCode();
                switch (strNextName) {
                    case "events":
                        strA = a(jsonReader);
                        break;
                    case "layers":
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            com.byazt.zk.x xVarC = qy.c(jsonReader, aVar);
                            longSparseArray.put(xVarC.n(), xVarC);
                            arrayList.add(xVarC);
                        }
                        jsonReader.endArray();
                        break;
                    case "rotate":
                        if (jsonReader.peek() == JsonToken.NULL) {
                            jsonReader.nextNull();
                            break;
                        } else {
                            com.byazt.ga.i.tt ttVar2 = new com.byazt.ga.i.tt();
                            jsonReader.beginObject();
                            c(jsonReader, ttVar2);
                            jsonReader.endObject();
                            ttVar = ttVar2;
                            break;
                        }
                        break;
                    case "ugen_v":
                        strNextString7 = jsonReader.nextString();
                        break;
                    case "h":
                        iNextInt2 = jsonReader.nextInt();
                        break;
                    case "p":
                        strNextString2 = jsonReader.nextString();
                        break;
                    case "u":
                        strNextString3 = jsonReader.nextString();
                        break;
                    case "w":
                        iNextInt = jsonReader.nextInt();
                        break;
                    case "el":
                        strNextString5 = jsonReader.nextString();
                        break;
                    case "id":
                        strNextString = jsonReader.nextString();
                        break;
                    case "rc":
                        if (jsonReader.peek() == JsonToken.NULL) {
                            jsonReader.nextNull();
                            break;
                        } else {
                            com.byazt.ga.i.c cVar2 = new com.byazt.ga.i.c();
                            jsonReader.beginObject();
                            c(jsonReader, cVar2);
                            jsonReader.endObject();
                            cVar = cVar2;
                            break;
                        }
                        break;
                    case "tc":
                        jsonReader.beginArray();
                        listSp = sp(jsonReader);
                        jsonReader.endArray();
                        break;
                    case "lel":
                        jSONArrayN = n(jsonReader);
                        break;
                    case "md5":
                        strNextString6 = jsonReader.nextString();
                        break;
                    case "rel":
                        strNextString4 = jsonReader.nextString();
                        break;
                    case "inel":
                        iArr = new int[][]{new int[]{-1, -1}};
                        jsonReader.beginArray();
                        if (jsonReader.hasNext()) {
                            jsonReader.beginArray();
                            for (int i10 = 0; i10 < 2; i10++) {
                                if (jsonReader.hasNext()) {
                                    iArr[0][i10] = jsonReader.nextInt();
                                }
                            }
                            jsonReader.endArray();
                        }
                        jsonReader.endArray();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
            if (strNextString2 != null) {
                com.byazt.ga.i iVar = new com.byazt.ga.i(iNextInt, iNextInt2, strNextString, strNextString2, strNextString3, strNextString4, listSp, strNextString5, iArr, jSONArrayN, strNextString6, strNextString7, cVar, ttVar, strA);
                map2.put(iVar.t(), iVar);
            } else {
                map.put(strNextString, arrayList);
            }
        }
        jsonReader.endArray();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    private static void c(JsonReader jsonReader, com.byazt.ga.i.c cVar) {
        byte b10;
        while (jsonReader.hasNext()) {
            try {
                String strNextName = jsonReader.nextName();
                int iHashCode = strNextName.hashCode();
                if (iHashCode != -2128704353) {
                    if (iHashCode == 3308 && strNextName.equals("gs")) {
                        b10 = 1;
                    } else {
                        b10 = -1;
                    }
                } else if (strNextName.equals("is_secondary")) {
                    b10 = 0;
                } else {
                    b10 = -1;
                }
                if (b10 == 0) {
                    cVar.tt = jsonReader.nextBoolean();
                } else if (b10 != 1) {
                    jsonReader.skipValue();
                } else if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    cVar.f14385c = new com.byazt.ga.i.c.C0316c();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        if (((strNextName2.hashCode() == 114 && strNextName2.equals("r")) ? (byte) 0 : (byte) -1) != 0) {
                            jsonReader.skipValue();
                        } else {
                            cVar.f14385c.f14386c = (float) jsonReader.nextDouble();
                        }
                    }
                    jsonReader.endObject();
                }
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static void c(JsonReader jsonReader, com.byazt.ga.i.tt ttVar) {
        byte b10;
        while (jsonReader.hasNext()) {
            try {
                String strNextName = jsonReader.nextName();
                switch (strNextName.hashCode()) {
                    case 120:
                        if (!strNextName.equals("x")) {
                            b10 = -1;
                        } else {
                            b10 = 0;
                        }
                        break;
                    case 121:
                        if (!strNextName.equals("y")) {
                            b10 = -1;
                        } else {
                            b10 = 1;
                        }
                        break;
                    case 122:
                        if (!strNextName.equals(bm.aH)) {
                            b10 = -1;
                        } else {
                            b10 = 2;
                        }
                        break;
                    default:
                        b10 = -1;
                        break;
                }
                if (b10 == 0) {
                    ttVar.f14387c = jsonReader.nextInt();
                } else if (b10 == 1) {
                    ttVar.tt = jsonReader.nextInt();
                } else if (b10 != 2) {
                    jsonReader.skipValue();
                } else {
                    ttVar.ve = jsonReader.nextInt();
                }
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
                return;
            }
        }
    }

    private static void c(JsonReader jsonReader, Map<String, com.byazt.nb.ve> map) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals("list")) {
                jsonReader.skipValue();
            } else {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    com.byazt.nb.ve veVarC = yp.c(jsonReader);
                    map.put(veVarC.tt(), veVarC);
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
    }

    private static void c(JsonReader jsonReader, com.byazt.ga.a aVar, SparseArray<com.byazt.nb.uj> sparseArray) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            com.byazt.nb.uj ujVarC = u.c(jsonReader, aVar);
            sparseArray.put(ujVarC.hashCode(), ujVarC);
        }
        jsonReader.endArray();
    }

    private static void c(JsonReader jsonReader, List<com.byazt.nb.sp> list) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            float fNextDouble = 0.0f;
            String strNextString = null;
            float fNextDouble2 = 0.0f;
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.hashCode();
                switch (strNextName) {
                    case "cm":
                        strNextString = jsonReader.nextString();
                        break;
                    case "dr":
                        fNextDouble2 = (float) jsonReader.nextDouble();
                        break;
                    case "tm":
                        fNextDouble = (float) jsonReader.nextDouble();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
            list.add(new com.byazt.nb.sp(strNextString, fNextDouble, fNextDouble2));
        }
        jsonReader.endArray();
    }
}
