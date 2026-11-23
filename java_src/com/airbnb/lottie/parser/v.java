package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.bm;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f6061a = JsonReader.a.a("nm", "ind", "refId", x.a.f97581i, "parent", "sw", com.xinzhu.overmind.utils.x.f90145b, "sc", MediationConstant.ADN_KS, "tt", "masksProperties", "shapes", bm.aM, "ef", "sr", "st", IAdInterListener.AdReqParam.WIDTH, "h", "ip", "op", "tm", "cl", LiveConfigKey.HIGH, LiveConfigKey.AUDIO, "bm");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f6062b = JsonReader.a.a(com.kuaishou.weapon.p0.t.f74895t, "a");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final JsonReader.a f6063c = JsonReader.a.a(x.a.f97581i, "nm");

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6064a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f6064a = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6064a[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private v() {
    }

    public static Layer a(com.airbnb.lottie.j jVar) {
        Rect rectB = jVar.b();
        return new Layer(Collections.emptyList(), jVar, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new com.airbnb.lottie.model.animatable.l(), 0, 0, 0, 0.0f, 0.0f, rectB.width(), rectB.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false, null, null, LBlendMode.NORMAL);
    }

    public static Layer b(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        Layer.MatteType matteType = Layer.MatteType.NONE;
        LBlendMode lBlendMode = LBlendMode.NORMAL;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.d();
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(1.0f);
        Layer.MatteType matteType2 = matteType;
        LBlendMode lBlendMode2 = lBlendMode;
        com.airbnb.lottie.model.animatable.l lVar = null;
        Layer.LayerType layerType = null;
        String strO = null;
        com.airbnb.lottie.model.animatable.j jVarD = null;
        com.airbnb.lottie.model.animatable.k kVarA = null;
        com.airbnb.lottie.model.animatable.b bVarF = null;
        com.airbnb.lottie.model.content.a aVarB = null;
        j jVarB = null;
        long jK = 0;
        long jK2 = -1;
        boolean z10 = false;
        float fJ = 0.0f;
        int iK = 0;
        int iK2 = 0;
        int color = 0;
        float fJ2 = 1.0f;
        float fJ3 = 0.0f;
        float fJ4 = 0.0f;
        float fJ5 = 0.0f;
        boolean zH = false;
        float f10 = 0.0f;
        String strO2 = "UNSET";
        String strO3 = null;
        while (jsonReader.g()) {
            switch (jsonReader.t(f6061a)) {
                case 0:
                    strO2 = jsonReader.o();
                    break;
                case 1:
                    jK = jsonReader.k();
                    break;
                case 2:
                    strO = jsonReader.o();
                    break;
                case 3:
                    int iK3 = jsonReader.k();
                    layerType = Layer.LayerType.UNKNOWN;
                    if (iK3 < layerType.ordinal()) {
                        layerType = Layer.LayerType.values()[iK3];
                    }
                    break;
                case 4:
                    jK2 = jsonReader.k();
                    break;
                case 5:
                    iK = (int) (jsonReader.k() * com.airbnb.lottie.utils.l.e());
                    break;
                case 6:
                    iK2 = (int) (jsonReader.k() * com.airbnb.lottie.utils.l.e());
                    break;
                case 7:
                    color = Color.parseColor(jsonReader.o());
                    break;
                case 8:
                    lVar = c.g(jsonReader, jVar);
                    break;
                case 9:
                    int iK4 = jsonReader.k();
                    if (iK4 < Layer.MatteType.values().length) {
                        matteType2 = Layer.MatteType.values()[iK4];
                        int i10 = a.f6064a[matteType2.ordinal()];
                        if (i10 == 1) {
                            jVar.a("Unsupported matte type: Luma");
                        } else if (i10 == 2) {
                            jVar.a("Unsupported matte type: Luma Inverted");
                        }
                        jVar.v(1);
                    } else {
                        jVar.a("Unsupported matte type: " + iK4);
                    }
                    break;
                case 10:
                    jsonReader.b();
                    while (jsonReader.g()) {
                        arrayList.add(x.a(jsonReader, jVar));
                    }
                    jVar.v(arrayList.size());
                    jsonReader.e();
                    break;
                case 11:
                    jsonReader.b();
                    while (jsonReader.g()) {
                        com.airbnb.lottie.model.content.c cVarA = h.a(jsonReader, jVar);
                        if (cVarA != null) {
                            arrayList2.add(cVarA);
                        }
                    }
                    jsonReader.e();
                    break;
                case 12:
                    jsonReader.d();
                    while (jsonReader.g()) {
                        int iT = jsonReader.t(f6062b);
                        if (iT == 0) {
                            jVarD = d.d(jsonReader, jVar);
                        } else if (iT != 1) {
                            jsonReader.v();
                            jsonReader.y();
                        } else {
                            jsonReader.b();
                            if (jsonReader.g()) {
                                kVarA = b.a(jsonReader, jVar);
                            }
                            while (jsonReader.g()) {
                                jsonReader.y();
                            }
                            jsonReader.e();
                        }
                    }
                    jsonReader.f();
                    break;
                case 13:
                    jsonReader.b();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.g()) {
                        jsonReader.d();
                        while (jsonReader.g()) {
                            int iT2 = jsonReader.t(f6063c);
                            if (iT2 == 0) {
                                int iK5 = jsonReader.k();
                                if (iK5 == 29) {
                                    aVarB = e.b(jsonReader, jVar);
                                } else if (iK5 == 25) {
                                    jVarB = new k().b(jsonReader, jVar);
                                }
                            } else if (iT2 != 1) {
                                jsonReader.v();
                                jsonReader.y();
                            } else {
                                arrayList3.add(jsonReader.o());
                            }
                        }
                        jsonReader.f();
                    }
                    jsonReader.e();
                    jVar.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    break;
                case 14:
                    fJ2 = (float) jsonReader.j();
                    break;
                case 15:
                    fJ3 = (float) jsonReader.j();
                    break;
                case 16:
                    fJ4 = (float) (jsonReader.j() * ((double) com.airbnb.lottie.utils.l.e()));
                    break;
                case 17:
                    fJ5 = (float) (jsonReader.j() * ((double) com.airbnb.lottie.utils.l.e()));
                    break;
                case 18:
                    fJ = (float) jsonReader.j();
                    break;
                case 19:
                    f10 = (float) jsonReader.j();
                    break;
                case 20:
                    bVarF = d.f(jsonReader, jVar, false);
                    break;
                case 21:
                    strO3 = jsonReader.o();
                    break;
                case 22:
                    zH = jsonReader.h();
                    break;
                case 23:
                    z10 = jsonReader.k() == 1;
                    break;
                case 24:
                    int iK6 = jsonReader.k();
                    if (iK6 < LBlendMode.values().length) {
                        lBlendMode2 = LBlendMode.values()[iK6];
                    } else {
                        jVar.a("Unsupported Blend Mode: " + iK6);
                        lBlendMode2 = LBlendMode.NORMAL;
                    }
                    break;
                default:
                    jsonReader.v();
                    jsonReader.y();
                    break;
            }
        }
        jsonReader.f();
        ArrayList arrayList4 = new ArrayList();
        if (fJ > 0.0f) {
            arrayList4.add(new com.airbnb.lottie.value.a(jVar, fValueOf, fValueOf, null, 0.0f, Float.valueOf(fJ)));
        }
        if (f10 <= 0.0f) {
            f10 = jVar.f();
        }
        arrayList4.add(new com.airbnb.lottie.value.a(jVar, fValueOf2, fValueOf2, null, fJ, Float.valueOf(f10)));
        arrayList4.add(new com.airbnb.lottie.value.a(jVar, fValueOf, fValueOf, null, f10, Float.valueOf(Float.MAX_VALUE)));
        if (strO2.endsWith(".ai") || "ai".equals(strO3)) {
            jVar.a("Convert your Illustrator layers to shape layers.");
        }
        if (z10 != 0) {
            if (lVar == null) {
                lVar = new com.airbnb.lottie.model.animatable.l();
            }
            lVar.m(z10);
        }
        return new Layer(arrayList2, jVar, strO2, jK, layerType, jK2, strO, arrayList, lVar, iK, iK2, color, fJ2, fJ3, fJ4, fJ5, jVarD, kVarA, arrayList4, matteType2, bVarF, zH, aVarB, jVarB, lBlendMode2);
    }
}
