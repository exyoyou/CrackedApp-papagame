package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.o;
import com.airbnb.lottie.animation.keyframe.q;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.j;
import com.airbnb.lottie.j1;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.animatable.k;
import com.airbnb.lottie.utils.l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class h extends com.airbnb.lottie.model.layer.b {
    private final StringBuilder H;
    private final RectF I;
    private final Matrix J;
    private final Paint K;
    private final Paint L;
    private final Map<com.airbnb.lottie.model.c, List<com.airbnb.lottie.animation.content.d>> M;
    private final LongSparseArray<String> N;
    private final List<d> O;
    private final o P;
    private final LottieDrawable Q;
    private final j R;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Integer, Integer> S;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Integer, Integer> T;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Integer, Integer> U;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Integer, Integer> V;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> W;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> X;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> Y;

    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> f5916a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Typeface, Typeface> f5917b0;

    class a extends Paint {
        a(int i10) {
            super(i10);
            setStyle(Paint.Style.FILL);
        }
    }

    class b extends Paint {
        b(int i10) {
            super(i10);
            setStyle(Paint.Style.STROKE);
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5920a;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            f5920a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5920a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5920a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    h(LottieDrawable lottieDrawable, Layer layer) {
        com.airbnb.lottie.model.animatable.b bVar;
        com.airbnb.lottie.model.animatable.b bVar2;
        com.airbnb.lottie.model.animatable.a aVar;
        com.airbnb.lottie.model.animatable.a aVar2;
        super(lottieDrawable, layer);
        this.H = new StringBuilder(2);
        this.I = new RectF();
        this.J = new Matrix();
        this.K = new a(1);
        this.L = new b(1);
        this.M = new HashMap();
        this.N = new LongSparseArray<>();
        this.O = new ArrayList();
        this.Q = lottieDrawable;
        this.R = layer.c();
        o oVarA = layer.t().a();
        this.P = oVarA;
        oVarA.a(this);
        i(oVarA);
        k kVarU = layer.u();
        if (kVarU != null && (aVar2 = kVarU.f5728a) != null) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA = aVar2.a();
            this.S = aVarA;
            aVarA.a(this);
            i(this.S);
        }
        if (kVarU != null && (aVar = kVarU.f5729b) != null) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA2 = aVar.a();
            this.U = aVarA2;
            aVarA2.a(this);
            i(this.U);
        }
        if (kVarU != null && (bVar2 = kVarU.f5730c) != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA3 = bVar2.a();
            this.W = aVarA3;
            aVarA3.a(this);
            i(this.W);
        }
        if (kVarU == null || (bVar = kVarU.f5731d) == null) {
            return;
        }
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA4 = bVar.a();
        this.Y = aVarA4;
        aVarA4.a(this);
        i(this.Y);
    }

    private String P(String str, int i10) {
        int iCodePointAt = str.codePointAt(i10);
        int iCharCount = Character.charCount(iCodePointAt) + i10;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!d0(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j10 = iCodePointAt;
        if (this.N.containsKey(j10)) {
            return this.N.get(j10);
        }
        this.H.setLength(0);
        while (i10 < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i10);
            this.H.appendCodePoint(iCodePointAt3);
            i10 += Character.charCount(iCodePointAt3);
        }
        String string = this.H.toString();
        this.N.put(j10, string);
        return string;
    }

    private void Q(DocumentData documentData, int i10) {
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar = this.T;
        if (aVar != null) {
            this.K.setColor(aVar.h().intValue());
        } else {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2 = this.S;
            if (aVar2 != null) {
                this.K.setColor(aVar2.h().intValue());
            } else {
                this.K.setColor(documentData.f5716h);
            }
        }
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar3 = this.V;
        if (aVar3 != null) {
            this.L.setColor(aVar3.h().intValue());
        } else {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar4 = this.U;
            if (aVar4 != null) {
                this.L.setColor(aVar4.h().intValue());
            } else {
                this.L.setColor(documentData.f5717i);
            }
        }
        int iIntValue = ((((this.f5910x.h() == null ? 100 : this.f5910x.h().h().intValue()) * 255) / 100) * i10) / 255;
        this.K.setAlpha(iIntValue);
        this.L.setAlpha(iIntValue);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar5 = this.X;
        if (aVar5 != null) {
            this.L.setStrokeWidth(aVar5.h().floatValue());
            return;
        }
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar6 = this.W;
        if (aVar6 != null) {
            this.L.setStrokeWidth(aVar6.h().floatValue());
        } else {
            this.L.setStrokeWidth(documentData.f5718j * l.e());
        }
    }

    private void R(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void S(com.airbnb.lottie.model.c cVar, float f10, DocumentData documentData, Canvas canvas) {
        List<com.airbnb.lottie.animation.content.d> listA0 = a0(cVar);
        for (int i10 = 0; i10 < listA0.size(); i10++) {
            Path path = listA0.get(i10).getPath();
            path.computeBounds(this.I, false);
            this.J.reset();
            this.J.preTranslate(0.0f, (-documentData.f5715g) * l.e());
            this.J.preScale(f10, f10);
            path.transform(this.J);
            if (documentData.f5719k) {
                V(path, this.K, canvas);
                V(path, this.L, canvas);
            } else {
                V(path, this.L, canvas);
                V(path, this.K, canvas);
            }
        }
    }

    private void T(String str, DocumentData documentData, Canvas canvas) {
        if (documentData.f5719k) {
            R(str, this.K, canvas);
            R(str, this.L, canvas);
        } else {
            R(str, this.L, canvas);
            R(str, this.K, canvas);
        }
    }

    private void U(String str, DocumentData documentData, Canvas canvas, float f10) {
        int length = 0;
        while (length < str.length()) {
            String strP = P(str, length);
            length += strP.length();
            T(strP, documentData, canvas);
            canvas.translate(this.K.measureText(strP) + f10, 0.0f);
        }
    }

    private void V(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void W(String str, DocumentData documentData, com.airbnb.lottie.model.b bVar, Canvas canvas, float f10, float f11, float f12) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            com.airbnb.lottie.model.c cVar = this.R.c().get(com.airbnb.lottie.model.c.c(str.charAt(i10), bVar.b(), bVar.d()));
            if (cVar != null) {
                S(cVar, f11, documentData, canvas);
                canvas.translate((((float) cVar.b()) * f11 * l.e()) + f12, 0.0f);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0097  */
    /* JADX WARN: Code duplicated, block: B:23:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00bf A[LOOP:1: B:26:0x00b9->B:28:0x00bf, LOOP_END] */
    private void X(DocumentData documentData, com.airbnb.lottie.model.b bVar, Canvas canvas) {
        float fFloatValue;
        float fE;
        List<String> listB0;
        int size;
        int i10;
        int i11;
        PointF pointF;
        float f10;
        List<d> listF0;
        int i12;
        Typeface typefaceC0 = c0(bVar);
        if (typefaceC0 == null) {
            return;
        }
        String strC = documentData.f5709a;
        j1 j1VarG0 = this.Q.g0();
        if (j1VarG0 != null) {
            strC = j1VarG0.c(getName(), strC);
        }
        this.K.setTypeface(typefaceC0);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar = this.f5916a0;
        float fFloatValue2 = aVar != null ? aVar.h().floatValue() : documentData.f5711c;
        this.K.setTextSize(l.e() * fFloatValue2);
        this.L.setTypeface(this.K.getTypeface());
        this.L.setTextSize(this.K.getTextSize());
        float f11 = documentData.f5713e / 10.0f;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar2 = this.Z;
        if (aVar2 == null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar3 = this.Y;
            if (aVar3 != null) {
                fFloatValue = aVar3.h().floatValue();
            }
            fE = ((f11 * l.e()) * fFloatValue2) / 100.0f;
            listB0 = b0(strC);
            size = listB0.size();
            i10 = 0;
            i11 = -1;
            while (i10 < size) {
                String str = listB0.get(i10);
                pointF = documentData.f5721m;
                if (pointF == null) {
                    f10 = 0.0f;
                } else {
                    f10 = pointF.x;
                }
                int i13 = i10;
                listF0 = f0(str, f10, bVar, 0.0f, fE, false);
                for (i12 = 0; i12 < listF0.size(); i12++) {
                    d dVar = listF0.get(i12);
                    i11++;
                    canvas.save();
                    e0(canvas, documentData, i11, dVar.f5922b);
                    U(dVar.f5921a, documentData, canvas, fE);
                    canvas.restore();
                }
                i10 = i13 + 1;
            }
        }
        fFloatValue = aVar2.h().floatValue();
        f11 += fFloatValue;
        fE = ((f11 * l.e()) * fFloatValue2) / 100.0f;
        listB0 = b0(strC);
        size = listB0.size();
        i10 = 0;
        i11 = -1;
        while (i10 < size) {
            String str2 = listB0.get(i10);
            pointF = documentData.f5721m;
            if (pointF == null) {
                f10 = 0.0f;
            } else {
                f10 = pointF.x;
            }
            int i14 = i10;
            listF0 = f0(str2, f10, bVar, 0.0f, fE, false);
            while (i12 < listF0.size()) {
                d dVar2 = listF0.get(i12);
                i11++;
                canvas.save();
                e0(canvas, documentData, i11, dVar2.f5922b);
                U(dVar2.f5921a, documentData, canvas, fE);
                canvas.restore();
            }
            i10 = i14 + 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0053  */
    /* JADX WARN: Code duplicated, block: B:17:0x005e  */
    /* JADX WARN: Code duplicated, block: B:18:0x0061  */
    /* JADX WARN: Code duplicated, block: B:22:0x007b A[LOOP:1: B:20:0x0075->B:22:0x007b, LOOP_END] */
    private void Y(DocumentData documentData, Matrix matrix, com.airbnb.lottie.model.b bVar, Canvas canvas) {
        float fFloatValue;
        float f10;
        int i10;
        int i11;
        PointF pointF;
        float f11;
        List<d> listF0;
        int i12;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar = this.f5916a0;
        float fFloatValue2 = (aVar != null ? aVar.h().floatValue() : documentData.f5711c) / 100.0f;
        float fG = l.g(matrix);
        List<String> listB0 = b0(documentData.f5709a);
        int size = listB0.size();
        float f12 = documentData.f5713e / 10.0f;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar2 = this.Z;
        if (aVar2 == null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar3 = this.Y;
            if (aVar3 != null) {
                fFloatValue = aVar3.h().floatValue();
            }
            f10 = f12;
            i10 = 0;
            i11 = -1;
            while (i10 < size) {
                String str = listB0.get(i10);
                pointF = documentData.f5721m;
                if (pointF == null) {
                    f11 = 0.0f;
                } else {
                    f11 = pointF.x;
                }
                int i13 = i10;
                listF0 = f0(str, f11, bVar, fFloatValue2, f10, true);
                i12 = 0;
                while (i12 < listF0.size()) {
                    d dVar = listF0.get(i12);
                    int i14 = i11 + 1;
                    canvas.save();
                    e0(canvas, documentData, i14, dVar.f5922b);
                    W(dVar.f5921a, documentData, bVar, canvas, fG, fFloatValue2, f10);
                    canvas.restore();
                    i12++;
                    listF0 = listF0;
                    i11 = i14;
                }
                i10 = i13 + 1;
            }
        }
        fFloatValue = aVar2.h().floatValue();
        f12 += fFloatValue;
        f10 = f12;
        i10 = 0;
        i11 = -1;
        while (i10 < size) {
            String str2 = listB0.get(i10);
            pointF = documentData.f5721m;
            if (pointF == null) {
                f11 = 0.0f;
            } else {
                f11 = pointF.x;
            }
            int i15 = i10;
            listF0 = f0(str2, f11, bVar, fFloatValue2, f10, true);
            i12 = 0;
            while (i12 < listF0.size()) {
                d dVar2 = listF0.get(i12);
                int i16 = i11 + 1;
                canvas.save();
                e0(canvas, documentData, i16, dVar2.f5922b);
                W(dVar2.f5921a, documentData, bVar, canvas, fG, fFloatValue2, f10);
                canvas.restore();
                i12++;
                listF0 = listF0;
                i11 = i16;
            }
            i10 = i15 + 1;
        }
    }

    private d Z(int i10) {
        for (int size = this.O.size(); size < i10; size++) {
            this.O.add(new d(null));
        }
        return this.O.get(i10 - 1);
    }

    private List<com.airbnb.lottie.animation.content.d> a0(com.airbnb.lottie.model.c cVar) {
        if (this.M.containsKey(cVar)) {
            return this.M.get(cVar);
        }
        List<com.airbnb.lottie.model.content.l> listA = cVar.a();
        int size = listA.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new com.airbnb.lottie.animation.content.d(this.Q, this, listA.get(i10), this.R));
        }
        this.M.put(cVar, arrayList);
        return arrayList;
    }

    private List<String> b0(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    @Nullable
    private Typeface c0(com.airbnb.lottie.model.b bVar) {
        Typeface typefaceH;
        com.airbnb.lottie.animation.keyframe.a<Typeface, Typeface> aVar = this.f5917b0;
        if (aVar != null && (typefaceH = aVar.h()) != null) {
            return typefaceH;
        }
        Typeface typefaceH0 = this.Q.h0(bVar);
        return typefaceH0 != null ? typefaceH0 : bVar.e();
    }

    private boolean d0(int i10) {
        return Character.getType(i10) == 16 || Character.getType(i10) == 27 || Character.getType(i10) == 6 || Character.getType(i10) == 28 || Character.getType(i10) == 8 || Character.getType(i10) == 19;
    }

    private void e0(Canvas canvas, DocumentData documentData, int i10, float f10) {
        PointF pointF = documentData.f5720l;
        PointF pointF2 = documentData.f5721m;
        float fE = l.e();
        float f11 = (i10 * documentData.f5714f * fE) + (pointF == null ? 0.0f : (documentData.f5714f * fE) + pointF.y);
        float f12 = pointF == null ? 0.0f : pointF.x;
        float f13 = pointF2 != null ? pointF2.x : 0.0f;
        int i11 = c.f5920a[documentData.f5712d.ordinal()];
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

    private List<d> f0(String str, float f10, com.airbnb.lottie.model.b bVar, float f11, float f12, boolean z10) {
        float fMeasureText;
        float f13 = 0.0f;
        int i10 = 0;
        int i11 = 0;
        boolean z11 = false;
        float f14 = 0.0f;
        int i12 = 0;
        float f15 = 0.0f;
        for (int i13 = 0; i13 < str.length(); i13++) {
            char cCharAt = str.charAt(i13);
            if (z10) {
                com.airbnb.lottie.model.c cVar = this.R.c().get(com.airbnb.lottie.model.c.c(cCharAt, bVar.b(), bVar.d()));
                if (cVar != null) {
                    fMeasureText = ((float) cVar.b()) * f11 * l.e();
                }
            } else {
                fMeasureText = this.K.measureText(str.substring(i13, i13 + 1));
            }
            float f16 = fMeasureText + f12;
            if (cCharAt == ' ') {
                z11 = true;
                f15 = f16;
            } else if (z11) {
                i12 = i13;
                f14 = f16;
                z11 = false;
            } else {
                f14 += f16;
            }
            f13 += f16;
            if (f10 > 0.0f && f13 >= f10 && cCharAt != ' ') {
                i10++;
                d dVarZ = Z(i10);
                if (i12 == i11) {
                    String strSubstring = str.substring(i11, i13);
                    String strTrim = strSubstring.trim();
                    dVarZ.c(strTrim, (f13 - f16) - ((strTrim.length() - strSubstring.length()) * f15));
                    i11 = i13;
                    i12 = i11;
                    f13 = f16;
                    f14 = f13;
                } else {
                    String strSubstring2 = str.substring(i11, i12 - 1);
                    String strTrim2 = strSubstring2.trim();
                    dVarZ.c(strTrim2, ((f13 - f14) - ((strSubstring2.length() - strTrim2.length()) * f15)) - f15);
                    f13 = f14;
                    i11 = i12;
                }
            }
        }
        if (f13 > 0.0f) {
            i10++;
            Z(i10).c(str.substring(i11), f13);
        }
        return this.O.subList(0, i10);
    }

    @Override // com.airbnb.lottie.model.layer.b, com.airbnb.lottie.animation.content.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.R.b().width(), this.R.b().height());
    }

    @Override // com.airbnb.lottie.model.layer.b, com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        super.g(t10, jVar);
        if (t10 == b1.f5577a) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar = this.T;
            if (aVar != null) {
                H(aVar);
            }
            if (jVar == null) {
                this.T = null;
                return;
            }
            q qVar = new q(jVar);
            this.T = qVar;
            qVar.a(this);
            i(this.T);
            return;
        }
        if (t10 == b1.f5578b) {
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVar2 = this.V;
            if (aVar2 != null) {
                H(aVar2);
            }
            if (jVar == null) {
                this.V = null;
                return;
            }
            q qVar2 = new q(jVar);
            this.V = qVar2;
            qVar2.a(this);
            i(this.V);
            return;
        }
        if (t10 == b1.f5595s) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar3 = this.X;
            if (aVar3 != null) {
                H(aVar3);
            }
            if (jVar == null) {
                this.X = null;
                return;
            }
            q qVar3 = new q(jVar);
            this.X = qVar3;
            qVar3.a(this);
            i(this.X);
            return;
        }
        if (t10 == b1.f5596t) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar4 = this.Z;
            if (aVar4 != null) {
                H(aVar4);
            }
            if (jVar == null) {
                this.Z = null;
                return;
            }
            q qVar4 = new q(jVar);
            this.Z = qVar4;
            qVar4.a(this);
            i(this.Z);
            return;
        }
        if (t10 == b1.F) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar5 = this.f5916a0;
            if (aVar5 != null) {
                H(aVar5);
            }
            if (jVar == null) {
                this.f5916a0 = null;
                return;
            }
            q qVar5 = new q(jVar);
            this.f5916a0 = qVar5;
            qVar5.a(this);
            i(this.f5916a0);
            return;
        }
        if (t10 != b1.M) {
            if (t10 == b1.O) {
                this.P.q(jVar);
                return;
            }
            return;
        }
        com.airbnb.lottie.animation.keyframe.a<Typeface, Typeface> aVar6 = this.f5917b0;
        if (aVar6 != null) {
            H(aVar6);
        }
        if (jVar == null) {
            this.f5917b0 = null;
            return;
        }
        q qVar6 = new q(jVar);
        this.f5917b0 = qVar6;
        qVar6.a(this);
        i(this.f5917b0);
    }

    @Override // com.airbnb.lottie.model.layer.b
    void t(Canvas canvas, Matrix matrix, int i10) {
        DocumentData documentDataH = this.P.h();
        com.airbnb.lottie.model.b bVar = this.R.g().get(documentDataH.f5710b);
        if (bVar == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        Q(documentDataH, i10);
        if (this.Q.E1()) {
            Y(documentDataH, matrix, bVar, canvas);
        } else {
            X(documentDataH, bVar, canvas);
        }
        canvas.restore();
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f5921a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f5922b;

        private d() {
            this.f5921a = "";
            this.f5922b = 0.0f;
        }

        void c(String str, float f10) {
            this.f5921a = str;
            this.f5922b = f10;
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }
}
