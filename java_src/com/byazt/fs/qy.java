package com.byazt.fs;

import android.graphics.Color;
import android.graphics.Rect;
import android.util.JsonReader;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.bm;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 110})
public class qy {

    /* JADX INFO: renamed from: com.byazt.fs.qy$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 720, 721})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f14273c;

        static {
            int[] iArr = new int[com.byazt.zk.x.tt.values().length];
            f14273c = iArr;
            try {
                iArr[com.byazt.zk.x.tt.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14273c[com.byazt.zk.x.tt.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static com.byazt.zk.x c(com.byazt.ga.a aVar) {
        Rect rectUj = aVar.uj();
        return new com.byazt.zk.x(Collections.emptyList(), aVar, "__container", -1L, com.byazt.zk.x.c.PRE_COMP, -1L, null, Collections.emptyList(), new com.byazt.kd.t(), 0, 0, 0, 0.0f, 0.0f, rectUj.width(), rectUj.height(), null, null, Collections.emptyList(), com.byazt.zk.x.tt.NONE, null, false, null, null);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static com.byazt.zk.x c(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        com.byazt.zk.x.tt ttVar = com.byazt.zk.x.tt.NONE;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.beginObject();
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(1.0f);
        com.byazt.zk.x.tt ttVar2 = ttVar;
        com.byazt.zk.x.c cVar = null;
        String strNextString = null;
        com.byazt.kd.t tVarC = null;
        com.byazt.kd.da daVarA = null;
        com.byazt.kd.sl slVarC = null;
        com.byazt.kd.tt ttVarC = null;
        com.byazt.jx.c cVarC = null;
        da daVarC = null;
        long jNextInt = 0;
        long jNextInt2 = -1;
        float fNextDouble = 0.0f;
        int iNextInt = 0;
        int iNextInt2 = 0;
        int color = 0;
        float fNextDouble2 = 1.0f;
        float fNextDouble3 = 0.0f;
        float fNextDouble4 = 0.0f;
        float fNextDouble5 = 0.0f;
        boolean zNextBoolean = false;
        float fSp = 0.0f;
        String strNextString2 = "UNSET";
        String strNextString3 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            byte b10 = -1;
            switch (strNextName.hashCode()) {
                case -995424086:
                    if (strNextName.equals("parent")) {
                        b10 = 0;
                    }
                    break;
                case -903568142:
                    if (strNextName.equals("shapes")) {
                        b10 = 1;
                    }
                    break;
                case 104:
                    if (strNextName.equals("h")) {
                        b10 = 2;
                    }
                    break;
                case 116:
                    if (strNextName.equals(bm.aM)) {
                        b10 = 3;
                    }
                    break;
                case 119:
                    if (strNextName.equals(IAdInterListener.AdReqParam.WIDTH)) {
                        b10 = 4;
                    }
                    break;
                case 3177:
                    if (strNextName.equals("cl")) {
                        b10 = 5;
                    }
                    break;
                case 3233:
                    if (strNextName.equals("ef")) {
                        b10 = 6;
                    }
                    break;
                case 3324:
                    if (strNextName.equals(LiveConfigKey.HIGH)) {
                        b10 = 7;
                    }
                    break;
                case 3367:
                    if (strNextName.equals("ip")) {
                        b10 = 8;
                    }
                    break;
                case 3432:
                    if (strNextName.equals(MediationConstant.ADN_KS)) {
                        b10 = 9;
                    }
                    break;
                case 3519:
                    if (strNextName.equals("nm")) {
                        b10 = 10;
                    }
                    break;
                case 3553:
                    if (strNextName.equals("op")) {
                        b10 = 11;
                    }
                    break;
                case 3664:
                    if (strNextName.equals("sc")) {
                        b10 = 12;
                    }
                    break;
                case 3669:
                    if (strNextName.equals(com.xinzhu.overmind.utils.x.f90145b)) {
                        b10 = 13;
                    }
                    break;
                case 3679:
                    if (strNextName.equals("sr")) {
                        b10 = 14;
                    }
                    break;
                case 3681:
                    if (strNextName.equals("st")) {
                        b10 = 15;
                    }
                    break;
                case 3684:
                    if (strNextName.equals("sw")) {
                        b10 = 16;
                    }
                    break;
                case 3705:
                    if (strNextName.equals("tm")) {
                        b10 = BinaryMemcacheOpcodes.SETQ;
                    }
                    break;
                case 3712:
                    if (strNextName.equals("tt")) {
                        b10 = BinaryMemcacheOpcodes.ADDQ;
                    }
                    break;
                case 3717:
                    if (strNextName.equals(x.a.f97581i)) {
                        b10 = BinaryMemcacheOpcodes.REPLACEQ;
                    }
                    break;
                case 104415:
                    if (strNextName.equals("ind")) {
                        b10 = BinaryMemcacheOpcodes.DELETEQ;
                    }
                    break;
                case 108390670:
                    if (strNextName.equals("refId")) {
                        b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                    }
                    break;
                case 1441620890:
                    if (strNextName.equals("masksProperties")) {
                        b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                    }
                    break;
            }
            switch (b10) {
                case 0:
                    jNextInt2 = jsonReader.nextInt();
                    break;
                case 1:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        com.byazt.jx.ve veVarC = x.c(jsonReader, aVar);
                        if (veVarC != null) {
                            arrayList2.add(veVarC);
                        }
                    }
                    jsonReader.endArray();
                    break;
                case 2:
                    fNextDouble5 = (float) (jsonReader.nextDouble() * ((double) com.byazt.kk.da.c()));
                    break;
                case 3:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.hashCode();
                        if (strNextName2.equals("a")) {
                            jsonReader.beginArray();
                            if (jsonReader.hasNext()) {
                                slVarC = tt.c(jsonReader, aVar);
                            }
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            jsonReader.endArray();
                        } else if (!strNextName2.equals(com.kuaishou.weapon.p0.t.f74895t)) {
                            jsonReader.skipValue();
                        } else {
                            daVarA = uj.a(jsonReader, aVar);
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 4:
                    fNextDouble4 = (float) (jsonReader.nextDouble() * ((double) com.byazt.kk.da.c()));
                    break;
                case 5:
                    strNextString3 = jsonReader.nextString();
                    break;
                case 6:
                    jsonReader.beginArray();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String strNextName3 = jsonReader.nextName();
                            strNextName3.hashCode();
                            if (strNextName3.equals("nm")) {
                                arrayList3.add(jsonReader.nextString());
                            } else if (!strNextName3.equals(x.a.f97581i)) {
                                jsonReader.skipValue();
                            } else {
                                int iNextInt3 = jsonReader.nextInt();
                                if (iNextInt3 == 29) {
                                    cVarC = n.c(jsonReader, aVar);
                                } else if (iNextInt3 == 25) {
                                    daVarC = new sl().c(jsonReader, aVar);
                                }
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    aVar.c("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: ".concat(String.valueOf(arrayList3)));
                    break;
                case 7:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case 8:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case 9:
                    tVarC = ve.c(jsonReader, aVar);
                    break;
                case 10:
                    strNextString2 = jsonReader.nextString();
                    break;
                case 11:
                    fSp = (float) jsonReader.nextDouble();
                    break;
                case 12:
                    color = Color.parseColor(jsonReader.nextString());
                    break;
                case 13:
                    iNextInt2 = (int) (jsonReader.nextInt() * com.byazt.kk.da.c());
                    break;
                case 14:
                    fNextDouble2 = (float) jsonReader.nextDouble();
                    break;
                case 15:
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    break;
                case 16:
                    iNextInt = (int) (jsonReader.nextInt() * com.byazt.kk.da.c());
                    break;
                case 17:
                    ttVarC = uj.c(jsonReader, aVar, false);
                    break;
                case 18:
                    int iNextInt4 = jsonReader.nextInt();
                    if (iNextInt4 >= com.byazt.zk.x.tt.values().length) {
                        aVar.c("Unsupported matte type: ".concat(String.valueOf(iNextInt4)));
                    } else {
                        ttVar2 = com.byazt.zk.x.tt.values()[iNextInt4];
                        int i10 = AnonymousClass1.f14273c[ttVar2.ordinal()];
                        if (i10 == 1) {
                            aVar.c("Unsupported matte type: Luma");
                        } else if (i10 == 2) {
                            aVar.c("Unsupported matte type: Luma Inverted");
                        }
                        aVar.c(1);
                    }
                    break;
                case 19:
                    int iNextInt5 = jsonReader.nextInt();
                    cVar = com.byazt.zk.x.c.UNKNOWN;
                    if (iNextInt5 < cVar.ordinal()) {
                        cVar = com.byazt.zk.x.c.values()[iNextInt5];
                    }
                    break;
                case 20:
                    jNextInt = jsonReader.nextInt();
                    break;
                case 21:
                    strNextString = jsonReader.nextString();
                    break;
                case 22:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList.add(gr.c(jsonReader, aVar));
                    }
                    aVar.c(arrayList.size());
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        ArrayList arrayList4 = new ArrayList();
        if (fNextDouble > 0.0f) {
            arrayList4.add(new com.byazt.vc.c(aVar, fValueOf, fValueOf, null, 0.0f, Float.valueOf(fNextDouble)));
        }
        if (fSp <= 0.0f) {
            fSp = aVar.sp();
        }
        arrayList4.add(new com.byazt.vc.c(aVar, fValueOf2, fValueOf2, null, fNextDouble, Float.valueOf(fSp)));
        arrayList4.add(new com.byazt.vc.c(aVar, fValueOf, fValueOf, null, fSp, Float.valueOf(Float.MAX_VALUE)));
        if (strNextString2.endsWith(".ai") || "ai".equals(strNextString3)) {
            aVar.c("Convert your Illustrator layers to shape layers.");
        }
        return new com.byazt.zk.x(arrayList2, aVar, strNextString2, jNextInt, cVar, jNextInt2, strNextString, arrayList, tVarC, iNextInt, iNextInt2, color, fNextDouble2, fNextDouble3, fNextDouble4, fNextDouble5, daVarA, slVarC, arrayList4, ttVar2, ttVarC, zNextBoolean, cVarC, daVarC);
    }
}
