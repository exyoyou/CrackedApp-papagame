package com.kongzue.dialogx.dialogs;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.lifecycle.LifecycleOwner;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.DialogXStyle;
import com.kongzue.dialogx.interfaces.p;
import com.kongzue.dialogx.interfaces.q;
import com.kongzue.dialogx.interfaces.r;
import com.kongzue.dialogx.interfaces.v;
import com.kongzue.dialogx.util.TextInfo;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class f extends g {
    protected f() {
    }

    public static f Q4() {
        return new f();
    }

    public static f R4(DialogXStyle dialogXStyle) {
        f fVar = new f();
        fVar.u4(dialogXStyle);
        return fVar;
    }

    public static f S4(r<g> rVar) {
        return new f().I3(rVar);
    }

    public static f q6(int i10, int i11, int i12) {
        f fVar = new f(i10, i11, i12);
        fVar.M0();
        return fVar;
    }

    public static f r6(int i10, int i11, int i12, int i13) {
        f fVar = new f(i10, i11, i12, i13);
        fVar.M0();
        return fVar;
    }

    public static f s6(int i10, int i11, int i12, int i13, int i14) {
        f fVar = new f(i10, i11, i12, i13, i14);
        fVar.M0();
        return fVar;
    }

    public static f t6(int i10, int i11, int i12, int i13, int i14, int i15) {
        f fVar = new f(i10, i11, i12, i13, i14, i15);
        fVar.M0();
        return fVar;
    }

    public static f u6(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        f fVar = new f(charSequence, charSequence2, charSequence3);
        fVar.M0();
        return fVar;
    }

    public static f v6(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        f fVar = new f(charSequence, charSequence2, charSequence3, charSequence4);
        fVar.M0();
        return fVar;
    }

    public static f w6(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, CharSequence charSequence5) {
        f fVar = new f(charSequence, charSequence2, charSequence3, charSequence4, charSequence5);
        fVar.M0();
        return fVar;
    }

    public static f x6(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, CharSequence charSequence5, String str) {
        f fVar = new f(charSequence, charSequence2, charSequence3, charSequence4, charSequence5, str);
        fVar.M0();
        return fVar;
    }

    public static f y6(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, String str) {
        f fVar = new f(charSequence, charSequence2, charSequence3, charSequence4, str);
        fVar.M0();
        return fVar;
    }

    @Override // com.kongzue.dialogx.dialogs.g, com.kongzue.dialogx.interfaces.BaseDialog
    public void A0() {
        if (C() != null) {
            BaseDialog.p(C());
            this.f74071r = false;
        }
        if (S2().f73856h != null) {
            S2().f73856h.removeAllViews();
        }
        int iD = this.f74072s.d(i0());
        if (iD == 0) {
            iD = i0() ? R.layout.layout_dialogx_material : R.layout.layout_dialogx_material_dark;
        }
        String strX2 = X2();
        this.f74076w = 0L;
        View viewM = m(iD);
        this.f73836f2 = new g.e(viewM);
        if (viewM != null) {
            viewM.setTag(this.O);
        }
        BaseDialog.O0(viewM);
        H5(strX2);
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: A5, reason: merged with bridge method [inline-methods] */
    public f P3(int i10) {
        this.Q = i10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: B5, reason: merged with bridge method [inline-methods] */
    public f Q3(long j10) {
        this.f74077x = j10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: C5, reason: merged with bridge method [inline-methods] */
    public f R3(int i10) {
        this.R = i10;
        return this;
    }

    public f D5(int i10) {
        this.f73838i1 = S(i10);
        x0();
        return this;
    }

    public f E5(String str) {
        this.f73838i1 = str;
        x0();
        return this;
    }

    public f F5(com.kongzue.dialogx.util.j jVar) {
        this.f73829a2 = jVar;
        x0();
        return this;
    }

    public f G5(int i10) {
        this.f73835f1 = S(i10);
        x0();
        return this;
    }

    public f H5(String str) {
        this.f73835f1 = str;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: I5, reason: merged with bridge method [inline-methods] */
    public f T3(@ColorInt int i10) {
        this.f73839l1 = Integer.valueOf(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: J5, reason: merged with bridge method [inline-methods] */
    public f U3(int i10) {
        this.f74079z = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: K5, reason: merged with bridge method [inline-methods] */
    public f V3(int i10) {
        this.f74078y = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public int L2() {
        return this.f74075v.intValue();
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: L5, reason: merged with bridge method [inline-methods] */
    public f W3(int i10) {
        this.Y = S(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public int M2() {
        return this.f73834e2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: M5, reason: merged with bridge method [inline-methods] */
    public f X3(CharSequence charSequence) {
        this.Y = charSequence;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: N4, reason: merged with bridge method [inline-methods] */
    public f C2(CharSequence charSequence) {
        this.Y = TextUtils.concat(this.Y, charSequence);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: N5, reason: merged with bridge method [inline-methods] */
    public f Y3(TextInfo textInfo) {
        this.f73844v1 = textInfo;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence O2() {
        return this.f73840p0;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: O4, reason: merged with bridge method [inline-methods] */
    public f D2(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: O5, reason: merged with bridge method [inline-methods] */
    public f Z3(int i10) {
        this.B = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: P4, reason: merged with bridge method [inline-methods] */
    public f E2() {
        L0(F());
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: P5, reason: merged with bridge method [inline-methods] */
    public f a4(int i10) {
        this.A = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo Q2() {
        return this.R1;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: Q5, reason: merged with bridge method [inline-methods] */
    public f b4(int i10) {
        this.Z = S(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public View R2() {
        r<g> rVar = this.N;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    public f R5(int i10, v<f> vVar) {
        this.Z = S(i10);
        this.f73831b2 = vVar;
        x0();
        return this;
    }

    public f S5(v<f> vVar) {
        this.f73831b2 = vVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: T4, reason: merged with bridge method [inline-methods] */
    public f I2(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: T5, reason: merged with bridge method [inline-methods] */
    public f e4(CharSequence charSequence) {
        this.Z = charSequence;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public com.kongzue.dialogx.interfaces.g<g> U2() {
        return this.S;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: U4, reason: merged with bridge method [inline-methods] */
    public f J2() {
        this.f74069p.clear();
        return this;
    }

    public f U5(CharSequence charSequence, v<f> vVar) {
        this.Z = charSequence;
        this.f73831b2 = vVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public long V2() {
        return this.f74076w;
    }

    public v V4() {
        return (v) this.f73832c2;
    }

    public f V5(v<f> vVar) {
        this.f73831b2 = vVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public long W2() {
        return this.f74077x;
    }

    public String W4() {
        return this.f73838i1;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: W5, reason: merged with bridge method [inline-methods] */
    public f h4(TextInfo textInfo) {
        this.L1 = textInfo;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public String X2() {
        return (S2() == null || S2().f73857i == null) ? this.f73835f1 : S2().f73857i.getText().toString();
    }

    public com.kongzue.dialogx.util.j X4() {
        return this.f73829a2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: X5, reason: merged with bridge method [inline-methods] */
    public f i4(p<g> pVar) {
        this.T = pVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence Y2() {
        return this.Y;
    }

    public v<f> Y4() {
        return (v) this.f73831b2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: Y5, reason: merged with bridge method [inline-methods] */
    public f j4(q<g> qVar) {
        this.W = qVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo Z2() {
        return this.f73844v1;
    }

    public v Z4() {
        return (v) this.f73833d2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: Z5, reason: merged with bridge method [inline-methods] */
    public f k4(int i10) {
        this.f73830b1 = S(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence a3() {
        return this.Z;
    }

    public boolean a5() {
        return this.f74074u;
    }

    public f a6(int i10, v<f> vVar) {
        this.f73830b1 = S(i10);
        this.f73833d2 = vVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: b5, reason: merged with bridge method [inline-methods] */
    public f p3(com.kongzue.dialogx.interfaces.i<g> iVar) {
        this.f74066m = iVar;
        return this;
    }

    public f b6(v<f> vVar) {
        this.f73833d2 = vVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo c3() {
        return this.L1;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: c5, reason: merged with bridge method [inline-methods] */
    public f r3(com.kongzue.dialogx.interfaces.i<g> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: c6, reason: merged with bridge method [inline-methods] */
    public f n4(CharSequence charSequence) {
        this.f73830b1 = charSequence;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public p<g> d3() {
        return this.T;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: d5, reason: merged with bridge method [inline-methods] */
    public f t3() {
        this.N.clean();
        x0();
        return this;
    }

    public f d6(CharSequence charSequence, v<f> vVar) {
        this.f73830b1 = charSequence;
        this.f73833d2 = vVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public q<g> e3() {
        return this.W;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: e5, reason: merged with bridge method [inline-methods] */
    public f u3(int i10, com.kongzue.dialogx.interfaces.i<g> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    public f e6(v<f> vVar) {
        this.f73833d2 = vVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g, com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        BaseDialog.BOOLEAN r10 = this.P;
        if (r10 != null) {
            return r10 == BaseDialog.BOOLEAN.TRUE;
        }
        BaseDialog.BOOLEAN r11 = g.f73828l2;
        if (r11 != null) {
            return r11 == BaseDialog.BOOLEAN.TRUE;
        }
        return this.f74070q;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence f3() {
        return this.f73830b1;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: f5, reason: merged with bridge method [inline-methods] */
    public f v3(int i10, int i11) {
        this.Q = i10;
        this.R = i11;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: f6, reason: merged with bridge method [inline-methods] */
    public f q4(TextInfo textInfo) {
        this.V1 = textInfo;
        x0();
        return this;
    }

    public f g5(boolean z10) {
        this.f74074u = z10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: g6, reason: merged with bridge method [inline-methods] */
    public f r4(float f10) {
        this.f73841p1 = f10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g, com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        K2();
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo h3() {
        return this.V1;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: h5, reason: merged with bridge method [inline-methods] */
    public f w3(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: h6, reason: merged with bridge method [inline-methods] */
    public f s4(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: i5, reason: merged with bridge method [inline-methods] */
    public f x3(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: i6, reason: merged with bridge method [inline-methods] */
    public f t4(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence j3() {
        return this.X;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: j5, reason: merged with bridge method [inline-methods] */
    public f y3(boolean z10) {
        this.M = z10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: j6, reason: merged with bridge method [inline-methods] */
    public f L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: k5, reason: merged with bridge method [inline-methods] */
    public f z3(int i10) {
        this.f73834e2 = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: k6, reason: merged with bridge method [inline-methods] */
    public f x4(int i10) {
        this.X = S(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo l3() {
        return this.f73843r1;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: l5, reason: merged with bridge method [inline-methods] */
    public f A3(int i10) {
        this.f73840p0 = S(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: l6, reason: merged with bridge method [inline-methods] */
    public f y4(CharSequence charSequence) {
        this.X = charSequence;
        x0();
        return this;
    }

    public f m5(int i10, v<f> vVar) {
        this.f73840p0 = S(i10);
        this.f73832c2 = vVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: m6, reason: merged with bridge method [inline-methods] */
    public f z4(int i10) {
        this.f73842q1 = getResources().getDrawable(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g, com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public f n5(v<f> vVar) {
        this.f73832c2 = vVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: n6, reason: merged with bridge method [inline-methods] */
    public f A4(Bitmap bitmap) {
        this.f73842q1 = new BitmapDrawable(getResources(), bitmap);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public boolean o3() {
        return this.M;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: o5, reason: merged with bridge method [inline-methods] */
    public f D3(CharSequence charSequence) {
        this.f73840p0 = charSequence;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: o6, reason: merged with bridge method [inline-methods] */
    public f B4(Drawable drawable) {
        this.f73842q1 = drawable;
        x0();
        return this;
    }

    public f p5(CharSequence charSequence, v<f> vVar) {
        this.f73840p0 = charSequence;
        this.f73832c2 = vVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: p6, reason: merged with bridge method [inline-methods] */
    public f C4(TextInfo textInfo) {
        this.f73843r1 = textInfo;
        x0();
        return this;
    }

    public f q5(v<f> vVar) {
        this.f73832c2 = vVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: r5, reason: merged with bridge method [inline-methods] */
    public f G3(TextInfo textInfo) {
        this.R1 = textInfo;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: s5, reason: merged with bridge method [inline-methods] */
    public f H3(boolean z10) {
        this.P = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: t5, reason: merged with bridge method [inline-methods] */
    public f I3(r<g> rVar) {
        this.N = rVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: u5, reason: merged with bridge method [inline-methods] */
    public f F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: v5, reason: merged with bridge method [inline-methods] */
    public f K3(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: w5, reason: merged with bridge method [inline-methods] */
    public f L3(com.kongzue.dialogx.interfaces.f<g> fVar) {
        this.V = fVar;
        if (this.f74071r) {
            fVar.b(this.O);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: x5, reason: merged with bridge method [inline-methods] */
    public f M3(com.kongzue.dialogx.interfaces.g<g> gVar) {
        this.S = gVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: y5, reason: merged with bridge method [inline-methods] */
    public f I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: z5, reason: merged with bridge method [inline-methods] */
    public f O3(long j10) {
        this.f74076w = j10;
        return this;
    }

    public f(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        this.f74070q = DialogX.f73613y;
        this.X = charSequence;
        this.Y = charSequence2;
        this.Z = charSequence3;
    }

    public f(CharSequence charSequence, CharSequence charSequence2) {
        this.f74070q = DialogX.f73613y;
        this.X = charSequence;
        this.Y = charSequence2;
    }

    public f(int i10, int i11, int i12) {
        this.f74070q = DialogX.f73613y;
        this.X = S(i10);
        this.Y = S(i11);
        this.Z = S(i12);
    }

    public f(int i10, int i11) {
        this.f74070q = DialogX.f73613y;
        this.X = S(i10);
        this.Y = S(i11);
    }

    public f(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        this.f74070q = DialogX.f73613y;
        this.X = charSequence;
        this.Y = charSequence2;
        this.Z = charSequence3;
        this.f73840p0 = charSequence4;
    }

    public f(int i10, int i11, int i12, int i13) {
        this.f74070q = DialogX.f73613y;
        this.X = S(i10);
        this.Y = S(i11);
        this.Z = S(i12);
        this.f73840p0 = S(i13);
    }

    public f(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, String str) {
        this.f74070q = DialogX.f73613y;
        this.X = charSequence;
        this.Y = charSequence2;
        this.Z = charSequence3;
        this.f73840p0 = charSequence4;
        this.f73835f1 = str;
    }

    public f(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, CharSequence charSequence5) {
        this.f74070q = DialogX.f73613y;
        this.X = charSequence;
        this.Y = charSequence2;
        this.Z = charSequence3;
        this.f73840p0 = charSequence4;
        this.f73830b1 = charSequence5;
    }

    public f(int i10, int i11, int i12, int i13, int i14) {
        this.f74070q = DialogX.f73613y;
        this.X = S(i10);
        this.Y = S(i11);
        this.Z = S(i12);
        this.f73840p0 = S(i13);
        this.f73830b1 = S(i14);
    }

    public f(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, CharSequence charSequence5, String str) {
        this.f74070q = DialogX.f73613y;
        this.X = charSequence;
        this.Y = charSequence2;
        this.Z = charSequence3;
        this.f73840p0 = charSequence4;
        this.f73830b1 = charSequence5;
        this.f73835f1 = str;
    }

    public f(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f74070q = DialogX.f73613y;
        this.X = S(i10);
        this.Y = S(i11);
        this.Z = S(i12);
        this.f73840p0 = S(i13);
        this.f73830b1 = S(i14);
        this.f73835f1 = S(i15);
    }
}
