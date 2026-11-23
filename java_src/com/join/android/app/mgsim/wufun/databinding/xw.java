package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.wufan.user.service.protobuf.MessageCloudGamingPropResponse;

/* JADX INFO: loaded from: classes4.dex */
public class xw extends ww {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47452o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47453p;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47454m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f47455n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47453p = sparseIntArray;
        sparseIntArray.put(R.id.v_line, 7);
    }

    public xw(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 8, f47452o, f47453p));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ww
    public void B(@Nullable Boolean Collapse) {
        this.f46999j = Collapse;
        synchronized (this) {
            this.f47455n |= 8;
        }
        notifyPropertyChanged(10);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ww
    public void C(@Nullable Integer IconResId) {
        this.f47001l = IconResId;
        synchronized (this) {
            this.f47455n |= 1;
        }
        notifyPropertyChanged(21);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ww
    public void D(@Nullable MessageCloudGamingPropResponse.PropLog ItemData) {
        this.f46998i = ItemData;
        synchronized (this) {
            this.f47455n |= 2;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ww
    public void E(@Nullable Integer MaxLines) {
        this.f47000k = MaxLines;
        synchronized (this) {
            this.f47455n |= 4;
        }
        notifyPropertyChanged(31);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String title;
        String str;
        String str2;
        boolean z10;
        String useDesc;
        Drawable drawable;
        Drawable drawable2;
        Context context;
        int i10;
        int status;
        String str3;
        long j11;
        long j12;
        synchronized (this) {
            j10 = this.f47455n;
            this.f47455n = 0L;
        }
        Integer num = this.f47001l;
        MessageCloudGamingPropResponse.PropLog propLog = this.f46998i;
        Integer num2 = this.f47000k;
        Boolean bool = this.f46999j;
        long j13 = j10 & 18;
        if (j13 != 0) {
            if (propLog != null) {
                status = propLog.getStatus();
                useDesc = propLog.getUseDesc();
                String useTime = propLog.getUseTime();
                title = propLog.getTitle();
                str3 = useTime;
            } else {
                title = null;
                status = 0;
                useDesc = null;
                str3 = null;
            }
            z10 = status == 0;
            str = "使用时间:" + str3;
            if (j13 != 0) {
                if (z10) {
                    j11 = j10 | 64;
                    j12 = 1024;
                } else {
                    j11 = j10 | 32;
                    j12 = 512;
                }
                j10 = j11 | j12;
            }
            str2 = z10 ? "使用" : "已使用";
            drawable = AppCompatResources.getDrawable(this.f46993d.getContext(), z10 ? R.drawable.shape_ff7501_r4 : R.drawable.shape_9c9c9c_r4);
        } else {
            title = null;
            str = null;
            str2 = null;
            z10 = false;
            useDesc = null;
            drawable = null;
        }
        int iSafeUnbox = (j10 & 20) != 0 ? ViewDataBinding.safeUnbox(num2) : 0;
        long j14 = j10 & 24;
        if (j14 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j14 != 0) {
                j10 |= zSafeUnbox ? 256L : 128L;
            }
            if (zSafeUnbox) {
                context = this.f46992c.getContext();
                i10 = R.drawable.ic_cloud_asset_record_5_n;
            } else {
                context = this.f46992c.getContext();
                i10 = R.drawable.ic_cloud_asset_record_5_h;
            }
            drawable2 = AppCompatResources.getDrawable(context, i10);
        } else {
            drawable2 = null;
        }
        if ((17 & j10) != 0) {
            SimpleDrawableViewKt.loadResId(this.f46991b, num);
        }
        if ((j10 & 24) != 0) {
            ImageViewBindingAdapter.setImageDrawable(this.f46992c, drawable2);
        }
        if ((18 & j10) != 0) {
            ViewBindingAdapter.setBackground(this.f46993d, drawable);
            this.f46993d.setEnabled(z10);
            TextViewBindingAdapter.setText(this.f46993d, str2);
            TextViewBindingAdapter.setText(this.f46994e, title);
            TextViewBindingAdapter.setText(this.f46995f, str);
            TextViewBindingAdapter.setText(this.f46996g, useDesc);
        }
        if ((j10 & 20) != 0) {
            this.f46996g.setMaxLines(iSafeUnbox);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47455n != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47455n = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (21 == variableId) {
            C((Integer) variable);
        } else if (27 == variableId) {
            D((MessageCloudGamingPropResponse.PropLog) variable);
        } else if (31 == variableId) {
            E((Integer) variable);
        } else {
            if (10 != variableId) {
                return false;
            }
            B((Boolean) variable);
        }
        return true;
    }

    private xw(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1], (ImageView) bindings[6], (TextView) bindings[4], (TextView) bindings[2], (TextView) bindings[3], (TextView) bindings[5], (View) bindings[7]);
        this.f47455n = -1L;
        this.f46991b.setTag(null);
        this.f46992c.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f47454m = constraintLayout;
        constraintLayout.setTag(null);
        this.f46993d.setTag(null);
        this.f46994e.setTag(null);
        this.f46995f.setTag(null);
        this.f46996g.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
