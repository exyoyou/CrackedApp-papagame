package com.join.android.app.mgsim.wufun.databinding;

import android.text.Spanned;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;

/* JADX INFO: loaded from: classes4.dex */
public class te extends se {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts B = null;

    @Nullable
    private static final SparseIntArray C;
    private long A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    private final FrameLayout f45200z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        C = sparseIntArray;
        sparseIntArray.put(R.id.tv_label_1, 8);
        sparseIntArray.put(R.id.iv_1, 9);
        sparseIntArray.put(R.id.v_1, 10);
        sparseIntArray.put(R.id.v_2, 11);
        sparseIntArray.put(R.id.v_3, 12);
        sparseIntArray.put(R.id.tv_btn_1, 13);
        sparseIntArray.put(R.id.ll_btn_1, 14);
        sparseIntArray.put(R.id.iv_2, 15);
        sparseIntArray.put(R.id.iv_btn_1, 16);
    }

    public te(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 17, B, C));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.se
    public void G(@Nullable String FreeTimeStr) {
        this.f44760s = FreeTimeStr;
        synchronized (this) {
            this.A |= 16;
        }
        notifyPropertyChanged(18);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.se
    public void H(@Nullable String GameIcon) {
        this.f44763v = GameIcon;
        synchronized (this) {
            this.A |= 32;
        }
        notifyPropertyChanged(19);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.se
    public void I(@Nullable String GameName) {
        this.f44764w = GameName;
        synchronized (this) {
            this.A |= 64;
        }
        notifyPropertyChanged(20);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.se
    public void J(@Nullable Spanned TimeStr) {
        this.f44765x = TimeStr;
        synchronized (this) {
            this.A |= 128;
        }
        notifyPropertyChanged(42);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.se
    public void K(@Nullable Boolean TimeVisible) {
        this.f44766y = TimeVisible;
        synchronized (this) {
            this.A |= 2;
        }
        notifyPropertyChanged(43);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.se
    public void L(@Nullable String TotalTime) {
        this.f44759r = TotalTime;
        synchronized (this) {
            this.A |= 4;
        }
        notifyPropertyChanged(46);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.se
    public void M(@Nullable String VipTimeStr) {
        this.f44761t = VipTimeStr;
        synchronized (this) {
            this.A |= 8;
        }
        notifyPropertyChanged(52);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.se
    public void N(@Nullable String VipType) {
        this.f44762u = VipType;
        synchronized (this) {
            this.A |= 1;
        }
        notifyPropertyChanged(53);
        super.requestRebind();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0051 A[PHI: r2
      0x0051: PHI (r2v1 long) = (r2v0 long), (r2v4 long) binds: [B:11:0x003b, B:18:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        int i10;
        String str2;
        String str3;
        synchronized (this) {
            j10 = this.A;
            this.A = 0L;
        }
        String str4 = this.f44762u;
        Boolean bool = this.f44766y;
        String str5 = this.f44759r;
        String str6 = this.f44761t;
        String str7 = this.f44760s;
        String str8 = this.f44763v;
        String str9 = this.f44764w;
        Spanned spanned = this.f44765x;
        if ((j10 & 257) != 0) {
            str = str4 + "会员签到特权";
        } else {
            str = null;
        }
        long j11 = j10 & 258;
        if (j11 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j11 != 0) {
                j10 |= zSafeUnbox ? 1024L : 512L;
            }
            if (zSafeUnbox) {
                i10 = 0;
            } else {
                i10 = 8;
            }
        } else {
            i10 = 0;
        }
        long j12 = 260 & j10;
        if (j12 != 0) {
            str2 = "云玩可用时长+" + str5;
        } else {
            str2 = null;
        }
        long j13 = j10 & 264;
        long j14 = j10 & 272;
        long j15 = j10 & 288;
        long j16 = j10 & 320;
        if (j16 != 0) {
            str3 = "继续云玩" + str9;
        } else {
            str3 = null;
        }
        long j17 = j10 & 384;
        if (j15 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f44747f, str8, null, 0);
        }
        if (j12 != 0) {
            TextViewBindingAdapter.setText(this.f44750i, str2);
        }
        if (j14 != 0) {
            TextViewBindingAdapter.setText(this.f44751j, str7);
        }
        if (j13 != 0) {
            TextViewBindingAdapter.setText(this.f44752k, str6);
        }
        if ((257 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f44753l, str);
        }
        if (j16 != 0) {
            TextViewBindingAdapter.setText(this.f44754m, str3);
        }
        if (j17 != 0) {
            TextViewBindingAdapter.setText(this.f44755n, spanned);
        }
        if ((j10 & 258) != 0) {
            this.f44755n.setVisibility(i10);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.A != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.A = 256L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (53 == variableId) {
            N((String) variable);
        } else if (43 == variableId) {
            K((Boolean) variable);
        } else if (46 == variableId) {
            L((String) variable);
        } else if (52 == variableId) {
            M((String) variable);
        } else if (18 == variableId) {
            G((String) variable);
        } else if (19 == variableId) {
            H((String) variable);
        } else if (20 == variableId) {
            I((String) variable);
        } else {
            if (42 != variableId) {
                return false;
            }
            J((Spanned) variable);
        }
        return true;
    }

    private te(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[9], (ImageView) bindings[15], (ImageView) bindings[16], (LinearLayout) bindings[14], (SimpleDraweeView) bindings[5], (TextView) bindings[13], (TextView) bindings[8], (TextView) bindings[1], (TextView) bindings[2], (TextView) bindings[3], (TextView) bindings[4], (TextView) bindings[6], (TextView) bindings[7], (View) bindings[10], (View) bindings[11], (View) bindings[12]);
        this.A = -1L;
        FrameLayout frameLayout = (FrameLayout) bindings[0];
        this.f45200z = frameLayout;
        frameLayout.setTag(null);
        this.f44747f.setTag(null);
        this.f44750i.setTag(null);
        this.f44751j.setTag(null);
        this.f44752k.setTag(null);
        this.f44753l.setTag(null);
        this.f44754m.setTag(null);
        this.f44755n.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
