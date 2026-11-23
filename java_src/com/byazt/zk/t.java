package com.byazt.zk;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.byazt.dg.z;
import com.byazt.ga.gt;
import com.byazt.jx.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 66})
public class t extends ve {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Paint f22840da;
    public com.byazt.dg.c<Float, Float> gr;
    public com.byazt.dg.c<Integer, Integer> gt;
    public com.byazt.dg.c<Float, Float> gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f22841h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Matrix f22842i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final z f22843m;
    public com.byazt.dg.c<Typeface, Typeface> md;
    public com.byazt.dg.c<Integer, Integer> my;
    public final com.byazt.ga.x nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public com.byazt.dg.c<Float, Float> f22844p;
    public com.byazt.dg.c<Integer, Integer> qy;
    public final com.byazt.ga.a rh;
    public com.byazt.dg.c<Integer, Integer> rl;
    public final Paint sl;
    public final StringBuilder sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Map<com.byazt.nb.uj, List<com.byazt.zy.uj>> f22845t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final LongSparseArray<String> f22846u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final RectF f22847x;
    public final List<c> yp;
    public com.byazt.dg.c<Float, Float> yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f22848z;
    public com.byazt.dg.c<Float, Float> zm;

    /* JADX INFO: renamed from: com.byazt.zk.t$3, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 909, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION})
    static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f22851c;

        static {
            int[] iArr = new int[com.byazt.nb.tt.c.values().length];
            f22851c = iArr;
            try {
                iArr[com.byazt.nb.tt.c.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22851c[com.byazt.nb.tt.c.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22851c[com.byazt.nb.tt.c.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 909, 125})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f22852c;
        public float tt;

        private c() {
            this.f22852c = "";
            this.tt = 0.0f;
        }

        public void c(String str, float f10) {
            this.f22852c = str;
            this.tt = f10;
        }
    }

    public t(com.byazt.ga.x xVar, x xVar2) {
        com.byazt.kd.tt ttVar;
        com.byazt.kd.tt ttVar2;
        com.byazt.kd.c cVar;
        com.byazt.kd.c cVar2;
        super(xVar, xVar2);
        this.sp = new StringBuilder(2);
        this.f22847x = new RectF();
        this.f22842i = new Matrix();
        int i10 = 1;
        this.f22840da = new Paint(i10) { // from class: com.byazt.zk.t.1
            {
                setStyle(Paint.Style.FILL);
            }
        };
        this.sl = new Paint(i10) { // from class: com.byazt.zk.t.2
            {
                setStyle(Paint.Style.STROKE);
            }
        };
        this.f22845t = new HashMap();
        this.f22846u = new LongSparseArray<>();
        this.yp = new ArrayList();
        this.f22848z = 0;
        this.nu = xVar;
        this.rh = xVar2.c();
        z zVarC = xVar2.my().c();
        this.f22843m = zVarC;
        zVarC.c(this);
        c(zVarC);
        com.byazt.kd.sl slVarGt = xVar2.gt();
        if (slVarGt != null && (cVar2 = slVarGt.f16171c) != null) {
            com.byazt.dg.c<Integer, Integer> cVarC = cVar2.c();
            this.my = cVarC;
            cVarC.c(this);
            c(this.my);
        }
        if (slVarGt != null && (cVar = slVarGt.tt) != null) {
            com.byazt.dg.c<Integer, Integer> cVarC2 = cVar.c();
            this.rl = cVarC2;
            cVarC2.c(this);
            c(this.rl);
        }
        if (slVarGt != null && (ttVar2 = slVarGt.ve) != null) {
            com.byazt.dg.c<Float, Float> cVarC3 = ttVar2.c();
            this.gu = cVarC3;
            cVarC3.c(this);
            c(this.gu);
        }
        if (slVarGt == null || (ttVar = slVarGt.uj) == null) {
            return;
        }
        com.byazt.dg.c<Float, Float> cVarC4 = ttVar.c();
        this.zm = cVarC4;
        cVarC4.c(this);
        c(this.zm);
    }

    private String ve(String str, float f10, float f11, com.byazt.nb.ve veVar, float f12, float f13, boolean z10) {
        if (str.length() <= 1) {
            return str + "...";
        }
        float f14 = f10 / 2.0f;
        float fC = 0.0f;
        int i10 = 0;
        float f15 = 0.0f;
        int i11 = 0;
        while (i10 < str.length() / 2) {
            float fC2 = c(str.charAt(i10), veVar, f12, f13, z10) + f15;
            if (fC2 > f14) {
                break;
            }
            i11 = i10 + 1;
            i10 = i11;
            f15 = fC2;
        }
        float f16 = f10 - f15;
        int length = str.length();
        for (int length2 = str.length() - 1; length2 >= str.length() / 2; length2--) {
            fC += c(str.charAt(length2), veVar, f12, f13, z10);
            if (fC > f16) {
                break;
            }
            length = length2;
        }
        if (i11 == 0 || length == str.length()) {
            return c(str, f10, f11, veVar, f12, f13, z10);
        }
        return str.substring(0, i11) + "..." + str.substring(length);
    }

    private void yp() {
        this.f22848z = 0;
    }

    private c z() {
        if (this.f22848z >= this.yp.size()) {
            this.yp.add(new c());
        }
        List<c> list = this.yp;
        int i10 = this.f22848z;
        this.f22848z = i10 + 1;
        return list.get(i10);
    }

    @Override // com.byazt.zk.ve, com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.rh.uj().width(), this.rh.uj().height());
    }

    @Override // com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        super.tt(canvas, matrix, i10);
        com.byazt.nb.tt ttVarSp = this.f22843m.sp();
        com.byazt.nb.ve veVar = this.rh.m().get(ttVarSp.tt);
        if (veVar == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        c(ttVarSp, matrix);
        if (this.nu.yv()) {
            c(ttVarSp, matrix, veVar, canvas);
        } else {
            c(ttVarSp, veVar, canvas);
        }
        canvas.restore();
    }

    private void c(com.byazt.nb.tt ttVar, Matrix matrix) {
        com.byazt.dg.c<Integer, Integer> cVar = this.gt;
        if (cVar != null) {
            this.f22840da.setColor(cVar.sp().intValue());
        } else {
            com.byazt.dg.c<Integer, Integer> cVar2 = this.my;
            if (cVar2 != null) {
                this.f22840da.setColor(cVar2.sp().intValue());
            } else {
                this.f22840da.setColor(ttVar.f17083x);
            }
        }
        com.byazt.dg.c<Integer, Integer> cVar3 = this.qy;
        if (cVar3 != null) {
            this.sl.setColor(cVar3.sp().intValue());
        } else {
            com.byazt.dg.c<Integer, Integer> cVar4 = this.rl;
            if (cVar4 != null) {
                this.sl.setColor(cVar4.sp().intValue());
            } else {
                this.sl.setColor(ttVar.f17078i);
            }
        }
        int iIntValue = ((this.uj.c() == null ? 100 : this.uj.c().sp().intValue()) * 255) / 100;
        this.f22840da.setAlpha(iIntValue);
        this.sl.setAlpha(iIntValue);
        com.byazt.dg.c<Float, Float> cVar5 = this.gr;
        if (cVar5 != null) {
            this.sl.setStrokeWidth(cVar5.sp().floatValue());
            return;
        }
        com.byazt.dg.c<Float, Float> cVar6 = this.gu;
        if (cVar6 != null) {
            this.sl.setStrokeWidth(cVar6.sp().floatValue());
        } else {
            this.sl.setStrokeWidth(ttVar.f17077da * com.byazt.kk.da.c());
        }
    }

    private List<String> tt(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private String tt(String str, float f10, float f11, com.byazt.nb.ve veVar, float f12, float f13, boolean z10) {
        int i10;
        int length = str.length();
        int length2 = str.length() - 1;
        float fC = 0.0f;
        while (true) {
            int i11 = length2;
            i10 = length;
            length = i11;
            if (length < 0) {
                break;
            }
            fC += c(str.charAt(length), veVar, f12, f13, z10);
            if (fC > f10) {
                break;
            }
            length2 = length - 1;
        }
        return "..." + str.substring(i10);
    }

    private boolean tt(int i10) {
        return Character.getType(i10) == 16 || Character.getType(i10) == 27 || Character.getType(i10) == 6 || Character.getType(i10) == 28 || Character.getType(i10) == 8 || Character.getType(i10) == 19;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00db  */
    /* JADX WARN: Code duplicated, block: B:49:0x00de  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ec A[LOOP:0: B:51:0x00ea->B:52:0x00ec, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x012d  */
    /* JADX WARN: Code duplicated, block: B:56:0x012f  */
    /* JADX WARN: Code duplicated, block: B:60:0x0147 A[LOOP:1: B:58:0x0141->B:60:0x0147, LOOP_END] */
    private void c(com.byazt.nb.tt ttVar, Matrix matrix, com.byazt.nb.ve veVar, Canvas canvas) {
        float fFloatValue;
        gt gtVarZm;
        float fFloatValue2;
        float f10;
        PointF pointF;
        int iMin;
        int i10;
        int i11;
        int i12;
        PointF pointF2;
        float f11;
        ArrayList arrayList;
        int i13;
        ArrayList arrayList2;
        int i14;
        int i15;
        List<c> listC;
        int i16;
        gt gtVarZm2;
        String strVe;
        yp();
        com.byazt.dg.c<Float, Float> cVar = this.f22844p;
        if (cVar != null) {
            fFloatValue = cVar.sp().floatValue();
        } else if (!TextUtils.isEmpty(ttVar.f17079m) && (gtVarZm = this.nu.zm()) != null) {
            try {
                fFloatValue = Float.parseFloat(gtVarZm.ve(sl(), ttVar.f17079m));
            } catch (NumberFormatException unused) {
                fFloatValue = ttVar.ve;
            }
        } else {
            fFloatValue = ttVar.ve;
        }
        float f12 = fFloatValue / 100.0f;
        float fC = com.byazt.kk.da.c(matrix);
        String str = this.f22841h;
        if (TextUtils.isEmpty(str)) {
            str = ttVar.f17076c;
            if (!TextUtils.isEmpty(ttVar.f17084z) && (gtVarZm2 = this.nu.zm()) != null && (strVe = gtVarZm2.ve(sl(), ttVar.f17084z)) != null) {
                str = strVe;
            }
        }
        List<String> listTt = tt(str);
        int size = listTt.size();
        float f13 = ttVar.f17080n / 10.0f;
        com.byazt.dg.c<Float, Float> cVar2 = this.yv;
        if (cVar2 != null) {
            fFloatValue2 = cVar2.sp().floatValue();
        } else {
            com.byazt.dg.c<Float, Float> cVar3 = this.zm;
            if (cVar3 != null) {
                fFloatValue2 = cVar3.sp().floatValue();
            }
            f10 = f13;
            com.byazt.nb.n nVar = ttVar.yp;
            pointF = ttVar.f17082u;
            if (pointF != null || pointF.y <= 0.0f) {
                iMin = Integer.MAX_VALUE;
            } else {
                float fC2 = com.byazt.kk.da.c();
                float f14 = ttVar.f17082u.y;
                float f15 = ttVar.f17075a;
                float f16 = f15 * fC2;
                if (f16 > 0.0f) {
                    float f17 = f14 - ((f15 * 0.6f) * fC2);
                    if (f17 > 0.0f) {
                        iMin = ((int) (f17 / f16)) + 1;
                    } else {
                        iMin = Integer.MAX_VALUE;
                    }
                } else {
                    iMin = Integer.MAX_VALUE;
                }
            }
            i10 = nVar.f17073c;
            if (i10 == 1) {
                i11 = 1;
            } else {
                if (i10 != 0) {
                    iMin = Math.min(i10, iMin);
                }
                i11 = iMin;
            }
            i12 = nVar.tt;
            pointF2 = ttVar.f17082u;
            if (pointF2 == null) {
                f11 = 0.0f;
            } else {
                f11 = pointF2.x;
            }
            arrayList = new ArrayList();
            i13 = 0;
            while (i13 < size) {
                ArrayList arrayList3 = arrayList;
                arrayList3.addAll(c(listTt.get(i13), f11, veVar, f12, f10, true, Integer.MAX_VALUE, 0));
                i13++;
                arrayList = arrayList3;
                i11 = i11;
                i12 = i12;
                listTt = listTt;
            }
            arrayList2 = arrayList;
            i14 = i12;
            i15 = i11;
            if (arrayList2.size() <= i15) {
                listC = arrayList2;
            } else {
                listC = c((List<c>) arrayList2, i15, i14, f11, veVar, f12, f10, true);
            }
            for (i16 = 0; i16 < listC.size(); i16++) {
                c cVar4 = listC.get(i16);
                canvas.save();
                c(canvas, ttVar, i16, cVar4.tt);
                c(cVar4.f22852c, ttVar, veVar, canvas, fC, f12, f10);
                canvas.restore();
            }
        }
        f13 += fFloatValue2;
        f10 = f13;
        com.byazt.nb.n nVar2 = ttVar.yp;
        pointF = ttVar.f17082u;
        if (pointF != null) {
            iMin = Integer.MAX_VALUE;
        } else {
            iMin = Integer.MAX_VALUE;
        }
        i10 = nVar2.f17073c;
        if (i10 == 1) {
            i11 = 1;
        } else {
            if (i10 != 0) {
                iMin = Math.min(i10, iMin);
            }
            i11 = iMin;
        }
        i12 = nVar2.tt;
        pointF2 = ttVar.f17082u;
        if (pointF2 == null) {
            f11 = 0.0f;
        } else {
            f11 = pointF2.x;
        }
        arrayList = new ArrayList();
        i13 = 0;
        while (i13 < size) {
            ArrayList arrayList4 = arrayList;
            arrayList4.addAll(c(listTt.get(i13), f11, veVar, f12, f10, true, Integer.MAX_VALUE, 0));
            i13++;
            arrayList = arrayList4;
            i11 = i11;
            i12 = i12;
            listTt = listTt;
        }
        arrayList2 = arrayList;
        i14 = i12;
        i15 = i11;
        if (arrayList2.size() <= i15) {
            listC = arrayList2;
        } else {
            listC = c((List<c>) arrayList2, i15, i14, f11, veVar, f12, f10, true);
        }
        while (i16 < listC.size()) {
            c cVar5 = listC.get(i16);
            canvas.save();
            c(canvas, ttVar, i16, cVar5.tt);
            c(cVar5.f22852c, ttVar, veVar, canvas, fC, f12, f10);
            canvas.restore();
        }
    }

    private void c(String str, com.byazt.nb.tt ttVar, com.byazt.nb.ve veVar, Canvas canvas, float f10, float f11, float f12) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            com.byazt.nb.uj ujVar = this.rh.z().get(com.byazt.nb.uj.c(str.charAt(i10), veVar.c(), veVar.ve()));
            if (ujVar != null) {
                c(ujVar, f11, ttVar, canvas);
                canvas.translate((((float) ujVar.tt()) * f11 * com.byazt.kk.da.c()) + f12, 0.0f);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:46:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:51:0x0112  */
    /* JADX WARN: Code duplicated, block: B:52:0x0115  */
    /* JADX WARN: Code duplicated, block: B:55:0x0123 A[LOOP:0: B:54:0x0121->B:55:0x0123, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x0161  */
    /* JADX WARN: Code duplicated, block: B:59:0x0163  */
    /* JADX WARN: Code duplicated, block: B:63:0x017a A[LOOP:1: B:61:0x0174->B:63:0x017a, LOOP_END] */
    private void c(com.byazt.nb.tt ttVar, com.byazt.nb.ve veVar, Canvas canvas) {
        float fFloatValue;
        float fFloatValue2;
        float fC;
        PointF pointF;
        int iMin;
        int i10;
        int i11;
        List<String> listTt;
        int size;
        int i12;
        PointF pointF2;
        float f10;
        ArrayList arrayList;
        int i13;
        ArrayList arrayList2;
        int i14;
        List<c> listC;
        int i15;
        yp();
        Typeface typefaceC = c(veVar);
        if (typefaceC == null) {
            return;
        }
        gt gtVarZm = this.nu.zm();
        String strVe = this.f22841h;
        if (TextUtils.isEmpty(strVe)) {
            strVe = ttVar.f17076c;
            if (gtVarZm != null) {
                if (!TextUtils.isEmpty(ttVar.f17084z)) {
                    String strVe2 = gtVarZm.ve(sl(), ttVar.f17084z);
                    if (strVe2 != null) {
                        strVe = strVe2;
                    }
                } else {
                    strVe = gtVarZm.ve(sl(), strVe);
                }
            }
        }
        this.f22840da.setTypeface(typefaceC);
        com.byazt.dg.c<Float, Float> cVar = this.f22844p;
        if (cVar != null) {
            fFloatValue = cVar.sp().floatValue();
        } else if (!TextUtils.isEmpty(ttVar.f17079m) && gtVarZm != null) {
            try {
                fFloatValue = Float.parseFloat(gtVarZm.ve(sl(), ttVar.f17079m));
            } catch (NumberFormatException unused) {
                fFloatValue = ttVar.ve;
            }
        } else {
            fFloatValue = ttVar.ve;
        }
        this.f22840da.setTextSize(com.byazt.kk.da.c() * fFloatValue);
        this.sl.setTypeface(this.f22840da.getTypeface());
        this.sl.setTextSize(this.f22840da.getTextSize());
        float f11 = ttVar.f17080n / 10.0f;
        com.byazt.dg.c<Float, Float> cVar2 = this.yv;
        if (cVar2 != null) {
            fFloatValue2 = cVar2.sp().floatValue();
        } else {
            com.byazt.dg.c<Float, Float> cVar3 = this.zm;
            if (cVar3 != null) {
                fFloatValue2 = cVar3.sp().floatValue();
            }
            fC = ((f11 * com.byazt.kk.da.c()) * fFloatValue) / 100.0f;
            com.byazt.nb.n nVar = ttVar.yp;
            pointF = ttVar.f17082u;
            if (pointF != null || pointF.y <= 0.0f) {
                iMin = Integer.MAX_VALUE;
            } else {
                float fC2 = com.byazt.kk.da.c();
                float f12 = ttVar.f17082u.y;
                float f13 = ttVar.f17075a;
                float f14 = f13 * fC2;
                if (f14 > 0.0f) {
                    float f15 = f12 - ((f13 * 0.6f) * fC2);
                    if (f15 > 0.0f) {
                        iMin = ((int) (f15 / f14)) + 1;
                    } else {
                        iMin = Integer.MAX_VALUE;
                    }
                } else {
                    iMin = Integer.MAX_VALUE;
                }
            }
            i10 = nVar.f17073c;
            if (i10 == 1) {
                i11 = 1;
            } else {
                if (i10 != 0) {
                    iMin = Math.min(i10, iMin);
                }
                i11 = iMin;
            }
            listTt = tt(strVe);
            i12 = nVar.tt;
            pointF2 = ttVar.f17082u;
            if (pointF2 == null) {
                f10 = 0.0f;
            } else {
                f10 = pointF2.x;
            }
            arrayList = new ArrayList();
            i13 = 0;
            for (size = listTt.size(); i13 < size; size = size) {
                ArrayList arrayList3 = arrayList;
                arrayList3.addAll(c(listTt.get(i13), f10, veVar, 0.0f, fC, false, Integer.MAX_VALUE, 0));
                i13++;
                arrayList = arrayList3;
                i12 = i12;
            }
            arrayList2 = arrayList;
            i14 = i12;
            if (arrayList2.size() <= i11) {
                listC = arrayList2;
            } else {
                listC = c((List<c>) arrayList2, i11, i14, f10, veVar, 0.0f, fC, false);
            }
            for (i15 = 0; i15 < listC.size(); i15++) {
                c cVar4 = listC.get(i15);
                canvas.save();
                c(canvas, ttVar, i15, cVar4.tt);
                c(cVar4.f22852c, ttVar, canvas, fC);
                canvas.restore();
            }
        }
        f11 += fFloatValue2;
        fC = ((f11 * com.byazt.kk.da.c()) * fFloatValue) / 100.0f;
        com.byazt.nb.n nVar2 = ttVar.yp;
        pointF = ttVar.f17082u;
        if (pointF != null) {
            iMin = Integer.MAX_VALUE;
        } else {
            iMin = Integer.MAX_VALUE;
        }
        i10 = nVar2.f17073c;
        if (i10 == 1) {
            i11 = 1;
        } else {
            if (i10 != 0) {
                iMin = Math.min(i10, iMin);
            }
            i11 = iMin;
        }
        listTt = tt(strVe);
        i12 = nVar2.tt;
        pointF2 = ttVar.f17082u;
        if (pointF2 == null) {
            f10 = 0.0f;
        } else {
            f10 = pointF2.x;
        }
        arrayList = new ArrayList();
        i13 = 0;
        while (i13 < size) {
            ArrayList arrayList4 = arrayList;
            arrayList4.addAll(c(listTt.get(i13), f10, veVar, 0.0f, fC, false, Integer.MAX_VALUE, 0));
            i13++;
            arrayList = arrayList4;
            i12 = i12;
        }
        arrayList2 = arrayList;
        i14 = i12;
        if (arrayList2.size() <= i11) {
            listC = arrayList2;
        } else {
            listC = c((List<c>) arrayList2, i11, i14, f10, veVar, 0.0f, fC, false);
        }
        while (i15 < listC.size()) {
            c cVar5 = listC.get(i15);
            canvas.save();
            c(canvas, ttVar, i15, cVar5.tt);
            c(cVar5.f22852c, ttVar, canvas, fC);
            canvas.restore();
        }
    }

    private void c(Canvas canvas, com.byazt.nb.tt ttVar, int i10, float f10) {
        PointF pointF = ttVar.f17081t;
        PointF pointF2 = ttVar.f17082u;
        float fC = com.byazt.kk.da.c();
        float f11 = (i10 * ttVar.f17075a * fC) + (pointF == null ? 0.0f : (ttVar.f17075a * 0.6f * fC) + pointF.y);
        float f12 = pointF == null ? 0.0f : pointF.x;
        float f13 = pointF2 != null ? pointF2.x : 0.0f;
        int i11 = AnonymousClass3.f22851c[ttVar.uj.ordinal()];
        if (i11 == 1) {
            canvas.translate(f12, f11);
        } else if (i11 == 2) {
            canvas.translate((f12 + f13) - f10, f11);
        } else {
            if (i11 != 3) {
                return;
            }
            canvas.translate((f12 + (f13 / 2.0f)) - (f10 / 2.0f), f11);
        }
    }

    private Typeface c(com.byazt.nb.ve veVar) {
        Typeface typefaceSp;
        com.byazt.dg.c<Typeface, Typeface> cVar = this.md;
        if (cVar != null && (typefaceSp = cVar.sp()) != null) {
            return typefaceSp;
        }
        Typeface typefaceC = this.nu.c(veVar);
        return typefaceC != null ? typefaceC : veVar.uj();
    }

    private void c(String str, com.byazt.nb.tt ttVar, Canvas canvas, float f10) {
        int length = 0;
        while (length < str.length()) {
            String strC = c(str, length);
            length += strC.length();
            c(strC, ttVar, canvas);
            canvas.translate(this.f22840da.measureText(strC) + f10, 0.0f);
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0127  */
    /* JADX WARN: Code duplicated, block: B:60:0x011e A[SYNTHETIC] */
    private List<c> c(String str, float f10, com.byazt.nb.ve veVar, float f11, float f12, boolean z10, int i10, int i11) {
        float fMeasureText;
        float f13;
        int i12;
        int i13;
        int i14 = i10;
        int i15 = this.f22848z;
        float f14 = 0.0f;
        int i16 = 0;
        float f15 = 0.0f;
        int i17 = 0;
        int i18 = 0;
        boolean z11 = false;
        float fMeasureText2 = 0.0f;
        while (i18 < str.length()) {
            char cCharAt = str.charAt(i18);
            if (z10) {
                com.byazt.nb.uj ujVar = this.rh.z().get(com.byazt.nb.uj.c(cCharAt, veVar.c(), veVar.ve()));
                if (ujVar != null) {
                    fMeasureText = ((float) ujVar.tt()) * f11 * com.byazt.kk.da.c();
                } else {
                    f13 = f15;
                    i18 = i18;
                    i12 = i14;
                }
                i18++;
                i14 = i12;
                f15 = f13;
            } else {
                fMeasureText = this.f22840da.measureText(str.substring(i18, i18 + 1));
            }
            float f16 = fMeasureText + f12;
            f13 = cCharAt == ' ' ? f16 : f15;
            float f17 = f14 + f16;
            int i19 = i16 + 1;
            boolean z12 = i19 >= i14;
            if (f10 <= 0.0f || f17 < f10 || cCharAt == ' ') {
                i18 = i18;
                i12 = i14;
                i17 = i17;
                f14 = f17;
            } else {
                if (z12) {
                    if (i11 == 3) {
                        String strC = c(str, i17, f10, veVar, f11, f12, z10);
                        if (strC != null) {
                            z().c(strC, f10);
                            return this.yp.subList(i15, this.f22848z);
                        }
                        i13 = i19;
                    } else {
                        if (!z11) {
                            fMeasureText2 = z10 ? 3.0f * f16 : this.f22840da.measureText("...") + (2.0f * f12);
                            z11 = true;
                        }
                        i17 = i17;
                        i13 = i19;
                        String strC2 = c(str, i17, f10, fMeasureText2, veVar, f11, f12, z10, i11);
                        if (strC2 != null) {
                            z().c(strC2, f10);
                            return this.yp.subList(i15, this.f22848z);
                        }
                    }
                    c cVarZ = z();
                    String strSubstring = str.substring(i17, i18);
                    String strTrim = strSubstring.trim();
                    cVarZ.c(strTrim, (f17 - f16) - ((strTrim.length() - strSubstring.length()) * f13));
                    i12 = i10;
                    i16 = i13;
                    if (i16 >= i12) {
                        return this.yp.subList(i15, this.f22848z);
                    }
                    i17 = i18;
                    f14 = f16;
                } else {
                    i13 = i19;
                }
                c cVarZ2 = z();
                String strSubstring2 = str.substring(i17, i18);
                String strTrim2 = strSubstring2.trim();
                cVarZ2.c(strTrim2, (f17 - f16) - ((strTrim2.length() - strSubstring2.length()) * f13));
                i12 = i10;
                i16 = i13;
                if (i16 >= i12) {
                    return this.yp.subList(i15, this.f22848z);
                }
                i17 = i18;
                f14 = f16;
            }
            i18++;
            i14 = i12;
            f15 = f13;
        }
        int i20 = i17;
        if (f14 > 0.0f) {
            z().c(str.substring(i20), f14);
        }
        return this.yp.subList(i15, this.f22848z);
    }

    private String c(String str, int i10, float f10, float f11, com.byazt.nb.ve veVar, float f12, float f13, boolean z10, int i11) {
        if (i11 == 3) {
            return c(str, i10, f10, veVar, f12, f13, z10);
        }
        float f14 = f10 - f11;
        if (f14 <= 0.0f) {
            return null;
        }
        String strSubstring = str.substring(i10);
        if (i11 == 0) {
            return c(strSubstring, f14, f11, veVar, f12, f13, z10);
        }
        if (i11 == 1) {
            return tt(strSubstring, f14, f11, veVar, f12, f13, z10);
        }
        if (i11 != 2) {
            return c(strSubstring, f14, f11, veVar, f12, f13, z10);
        }
        return ve(strSubstring, f14, f11, veVar, f12, f13, z10);
    }

    private String c(String str, int i10, float f10, com.byazt.nb.ve veVar, float f11, float f12, boolean z10) {
        String strSubstring = str.substring(i10);
        float fC = 0.0f;
        int i11 = 0;
        int i12 = 0;
        while (i11 < strSubstring.length()) {
            fC += c(strSubstring.charAt(i11), veVar, f11, f12, z10);
            if (fC > f10) {
                break;
            }
            i12 = i11 + 1;
            i11 = i12;
        }
        return strSubstring.substring(0, i12);
    }

    private String c(String str, float f10, float f11, com.byazt.nb.ve veVar, float f12, float f13, boolean z10) {
        float fC = 0.0f;
        int i10 = 0;
        int i11 = 0;
        while (i10 < str.length()) {
            fC += c(str.charAt(i10), veVar, f12, f13, z10);
            if (fC > f10) {
                break;
            }
            i11 = i10 + 1;
            i10 = i11;
        }
        return str.substring(0, i11) + "...";
    }

    private float c(char c10, com.byazt.nb.ve veVar, float f10, float f11, boolean z10) {
        float fMeasureText;
        if (z10) {
            com.byazt.nb.uj ujVar = this.rh.z().get(com.byazt.nb.uj.c(c10, veVar.c(), veVar.ve()));
            if (ujVar == null) {
                return 0.0f;
            }
            fMeasureText = ((float) ujVar.tt()) * f10 * com.byazt.kk.da.c();
        } else {
            fMeasureText = this.f22840da.measureText(String.valueOf(c10));
        }
        return fMeasureText + f11;
    }

    private void c(com.byazt.nb.uj ujVar, float f10, com.byazt.nb.tt ttVar, Canvas canvas) {
        List<com.byazt.zy.uj> listC = c(ujVar);
        for (int i10 = 0; i10 < listC.size(); i10++) {
            Path pathUj = listC.get(i10).uj();
            pathUj.computeBounds(this.f22847x, false);
            this.f22842i.reset();
            this.f22842i.preTranslate(0.0f, (-ttVar.sp) * com.byazt.kk.da.c());
            this.f22842i.preScale(f10, f10);
            pathUj.transform(this.f22842i);
            if (ttVar.sl) {
                c(pathUj, this.f22840da, canvas);
                c(pathUj, this.sl, canvas);
            } else {
                c(pathUj, this.sl, canvas);
                c(pathUj, this.f22840da, canvas);
            }
        }
    }

    private void c(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void c(String str, com.byazt.nb.tt ttVar, Canvas canvas) {
        if (ttVar.sl) {
            c(str, this.f22840da, canvas);
            c(str, this.sl, canvas);
        } else {
            c(str, this.sl, canvas);
            c(str, this.f22840da, canvas);
        }
    }

    private void c(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private List<com.byazt.zy.uj> c(com.byazt.nb.uj ujVar) {
        if (this.f22845t.containsKey(ujVar)) {
            return this.f22845t.get(ujVar);
        }
        List<m> listC = ujVar.c();
        int size = listC.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new com.byazt.zy.uj(this.nu, this, listC.get(i10), this.rh));
        }
        this.f22845t.put(ujVar, arrayList);
        return arrayList;
    }

    private String c(String str, int i10) {
        int iCodePointAt = str.codePointAt(i10);
        int iCharCount = Character.charCount(iCodePointAt) + i10;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!tt(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j10 = iCodePointAt;
        if (this.f22846u.indexOfKey(j10) >= 0) {
            return this.f22846u.get(j10);
        }
        this.sp.setLength(0);
        while (i10 < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i10);
            this.sp.appendCodePoint(iCodePointAt3);
            i10 += Character.charCount(iCodePointAt3);
        }
        String string = this.sp.toString();
        this.f22846u.put(j10, string);
        return string;
    }

    private List<c> c(List<c> list, int i10, int i11, float f10, com.byazt.nb.ve veVar, float f11, float f12, boolean z10) {
        int i12;
        int i13;
        String strC;
        ArrayList arrayList = new ArrayList();
        if (i10 == 1) {
            String strC2 = c(list);
            if (i11 == 3) {
                strC = c(strC2, f10, veVar, f11, f12, z10);
            } else {
                strC = c(strC2, f10, veVar, f11, f12, z10, i11);
            }
            c cVarZ = z();
            cVarZ.c(strC, f10);
            arrayList.add(cVarZ);
        } else {
            int i14 = 0;
            if (i11 == 0) {
                while (true) {
                    i12 = i10 - 1;
                    if (i14 >= i12) {
                        break;
                    }
                    arrayList.add(list.get(i14));
                    i14++;
                }
                String strC3 = c(c(list, i12, list.size()), f10, veVar, f11, f12, z10, 0);
                c cVarZ2 = z();
                cVarZ2.c(strC3, f10);
                arrayList.add(cVarZ2);
            } else if (i11 == 1) {
                int i15 = i10 - 1;
                String strC4 = c(c(list, 0, list.size() - i15), f10, veVar, f11, f12, z10, 1);
                c cVarZ3 = z();
                cVarZ3.c(strC4, f10);
                arrayList.add(cVarZ3);
                for (int size = list.size() - i15; size < list.size(); size++) {
                    arrayList.add(list.get(size));
                }
            } else if (i11 == 2) {
                int i16 = i10 / 2;
                while (i14 < i16) {
                    arrayList.add(list.get(i14));
                    i14++;
                }
                int i17 = (i10 - i16) - 1;
                int size2 = list.size() - i17;
                if (size2 <= i16) {
                    size2 = list.size();
                }
                String strC5 = c(c(list, i16, size2), f10, veVar, f11, f12, z10, 2);
                c cVarZ4 = z();
                cVarZ4.c(strC5, f10);
                arrayList.add(cVarZ4);
                for (int size3 = list.size() - i17; size3 < list.size(); size3++) {
                    arrayList.add(list.get(size3));
                }
            } else if (i11 != 3) {
                while (true) {
                    i13 = i10 - 1;
                    if (i14 >= i13) {
                        break;
                    }
                    arrayList.add(list.get(i14));
                    i14++;
                }
                String strC6 = c(c(list, i13, list.size()), f10, veVar, f11, f12, z10, 0);
                c cVarZ5 = z();
                cVarZ5.c(strC6, f10);
                arrayList.add(cVarZ5);
            } else {
                while (i14 < i10) {
                    arrayList.add(list.get(i14));
                    i14++;
                }
            }
        }
        return arrayList;
    }

    private String c(List<c> list) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<c> it2 = list.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().f22852c);
        }
        return sb2.toString();
    }

    private String c(List<c> list, int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        while (i10 < i11 && i10 < list.size()) {
            sb2.append(list.get(i10).f22852c);
            i10++;
        }
        return sb2.toString();
    }

    private String c(String str, float f10, com.byazt.nb.ve veVar, float f11, float f12, boolean z10, int i10) {
        float fMeasureText;
        if (z10) {
            com.byazt.nb.uj ujVar = this.rh.z().get(com.byazt.nb.uj.c(str.length() > 0 ? str.charAt(0) : ' ', veVar.c(), veVar.ve()));
            fMeasureText = (ujVar != null ? (((float) ujVar.tt()) * f11 * com.byazt.kk.da.c()) + f12 : 10.0f) * 3.0f;
        } else {
            fMeasureText = this.f22840da.measureText("...") + (2.0f * f12);
        }
        String strC = c(str, 0, f10, fMeasureText, veVar, f11, f12, z10, i10);
        return strC != null ? strC : str;
    }

    private String c(String str, float f10, com.byazt.nb.ve veVar, float f11, float f12, boolean z10) {
        return c(str, 0, f10, veVar, f11, f12, z10);
    }

    public void c(String str) {
        this.f22841h = str;
    }
}
