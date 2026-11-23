package com.kongzue.dialogx.dialogs;

import android.app.Activity;
import android.text.TextUtils;
import androidx.lifecycle.LifecycleOwner;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.p;
import com.kongzue.dialogx.interfaces.q;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class o extends WaitDialog {
    public static final int V1 = -1;

    protected o() {
    }

    public static WaitDialog B3(Activity activity, int i10) {
        WaitDialog waitDialogO2 = WaitDialog.o2(activity);
        if (waitDialogO2 == null) {
            return WaitDialog.x2();
        }
        waitDialogO2.p3(i10, WaitDialog.TYPE.WARNING);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog D3(Activity activity, CharSequence charSequence) {
        WaitDialog waitDialogO2 = WaitDialog.o2(activity);
        if (waitDialogO2 == null) {
            return WaitDialog.x2();
        }
        waitDialogO2.r3(charSequence, WaitDialog.TYPE.WARNING);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog F3(CharSequence charSequence) {
        return D3(null, charSequence);
    }

    public static WaitDialog M3(WaitDialog.TYPE type) {
        return WaitDialog.M3(type);
    }

    public static WaitDialog l4(int i10, WaitDialog.TYPE type) {
        return n4(null, i10, type);
    }

    public static WaitDialog m4(int i10, WaitDialog.TYPE type, long j10) {
        return o4(null, i10, type, j10);
    }

    public static WaitDialog n4(Activity activity, int i10, WaitDialog.TYPE type) {
        WaitDialog waitDialogO2 = WaitDialog.o2(activity);
        if (waitDialogO2 == null) {
            return WaitDialog.x2();
        }
        waitDialogO2.p3(i10, type);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog o4(Activity activity, int i10, WaitDialog.TYPE type, long j10) {
        WaitDialog waitDialogO2 = WaitDialog.o2(activity);
        if (waitDialogO2 == null) {
            return WaitDialog.x2();
        }
        waitDialogO2.p3(i10, type);
        waitDialogO2.s3(j10);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog p4(Activity activity, CharSequence charSequence, WaitDialog.TYPE type) {
        WaitDialog waitDialogO2 = WaitDialog.o2(activity);
        if (waitDialogO2 == null) {
            return WaitDialog.x2();
        }
        waitDialogO2.r3(charSequence, type);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog q4(Activity activity, CharSequence charSequence, WaitDialog.TYPE type, long j10) {
        WaitDialog waitDialogO2 = WaitDialog.o2(activity);
        if (waitDialogO2 == null) {
            return WaitDialog.x2();
        }
        waitDialogO2.r3(charSequence, type);
        waitDialogO2.s3(j10);
        if (waitDialogO2.j2() == null) {
            waitDialogO2.M0();
        } else {
            waitDialogO2.Y1();
        }
        return waitDialogO2;
    }

    public static WaitDialog r4(CharSequence charSequence, WaitDialog.TYPE type) {
        return p4(null, charSequence, type);
    }

    public static WaitDialog s4(CharSequence charSequence, WaitDialog.TYPE type, long j10) {
        return q4(null, charSequence, type, j10);
    }

    public static WaitDialog x3(int i10) {
        return B3(null, i10);
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: O3, reason: merged with bridge method [inline-methods] */
    public o U1(CharSequence charSequence) {
        this.T = TextUtils.concat(this.T, charSequence);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: P3, reason: merged with bridge method [inline-methods] */
    public o V1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: Q3, reason: merged with bridge method [inline-methods] */
    public o W1() {
        L0(F());
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: R3, reason: merged with bridge method [inline-methods] */
    public o Z1(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: S3, reason: merged with bridge method [inline-methods] */
    public o a2() {
        this.f74069p.clear();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: T3, reason: merged with bridge method [inline-methods] */
    public o A2(com.kongzue.dialogx.interfaces.i<WaitDialog> iVar) {
        this.f74066m = iVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: U3, reason: merged with bridge method [inline-methods] */
    public o B2(com.kongzue.dialogx.interfaces.i<WaitDialog> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: V3, reason: merged with bridge method [inline-methods] */
    public o F2(int i10, com.kongzue.dialogx.interfaces.i<WaitDialog> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: W3, reason: merged with bridge method [inline-methods] */
    public o J2(boolean z10) {
        this.M = z10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: X3, reason: merged with bridge method [inline-methods] */
    public o F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: Y3, reason: merged with bridge method [inline-methods] */
    public o O2(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: Z3, reason: merged with bridge method [inline-methods] */
    public o Q2(com.kongzue.dialogx.interfaces.g<WaitDialog> gVar) {
        this.R = gVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: a4, reason: merged with bridge method [inline-methods] */
    public o I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: b4, reason: merged with bridge method [inline-methods] */
    public o X2(int i10) {
        this.f74079z = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: c4, reason: merged with bridge method [inline-methods] */
    public o Y2(int i10) {
        this.f74078y = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: d4, reason: merged with bridge method [inline-methods] */
    public o e3(int i10) {
        this.B = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: e4, reason: merged with bridge method [inline-methods] */
    public o f3(int i10) {
        this.A = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: f4, reason: merged with bridge method [inline-methods] */
    public o g3(p<WaitDialog> pVar) {
        this.S = pVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: g4, reason: merged with bridge method [inline-methods] */
    public o h3(q<WaitDialog> qVar) {
        this.f73662b1 = qVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog, com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        WaitDialog.c2();
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: h4, reason: merged with bridge method [inline-methods] */
    public o j3(float f10) {
        this.Q = f10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: i4, reason: merged with bridge method [inline-methods] */
    public o k3(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: j4, reason: merged with bridge method [inline-methods] */
    public o l3(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    /* JADX INFO: renamed from: k4, reason: merged with bridge method [inline-methods] */
    public o L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog, com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    public q<WaitDialog> t2() {
        return this.f73662b1;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    public float v2() {
        return this.Q;
    }

    @Override // com.kongzue.dialogx.dialogs.WaitDialog
    public boolean y2() {
        return this.M;
    }
}
