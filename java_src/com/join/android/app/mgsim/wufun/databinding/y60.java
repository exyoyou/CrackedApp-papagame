package com.join.android.app.mgsim.wufun.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewBindingTextviewKt;
import com.join.kotlin.quark.model.bean.SourceTabItemBean;

/* JADX INFO: loaded from: classes4.dex */
public class y60 extends x60 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47607f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47608g = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f47610e;

    public y60(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f47607f, f47608g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        Drawable drawable;
        String str;
        String name;
        long j11;
        long j12;
        synchronized (this) {
            j10 = this.f47610e;
            this.f47610e = 0L;
        }
        SourceTabItemBean sourceTabItemBean = this.f47118c;
        long j13 = j10 & 3;
        String str2 = null;
        Boolean active = null;
        if (j13 != 0) {
            if (sourceTabItemBean != null) {
                active = sourceTabItemBean.getActive();
                name = sourceTabItemBean.getName();
            } else {
                name = null;
            }
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(active);
            if (j13 != 0) {
                if (zSafeUnbox) {
                    j11 = j10 | 8;
                    j12 = 32;
                } else {
                    j11 = j10 | 4;
                    j12 = 16;
                }
                j10 = j11 | j12;
            }
            Drawable drawable2 = AppCompatResources.getDrawable(this.f47117b.getContext(), zSafeUnbox ? R.drawable.shape_1d80f5_r_8 : R.drawable.shape_ffffff_r8);
            String str3 = zSafeUnbox ? "#FFFFFF" : "#424242";
            str = name;
            drawable = drawable2;
            str2 = str3;
        } else {
            drawable = null;
            str = null;
        }
        if ((j10 & 3) != 0) {
            ViewBindingTextviewKt.textViewColorBinding(this.f47117b, str2);
            ViewBindingAdapter.setBackground(this.f47117b, drawable);
            TextViewBindingAdapter.setText(this.f47117b, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47610e != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47610e = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x60
    public void n(@Nullable SourceTabItemBean ItemData) {
        this.f47118c = ItemData;
        synchronized (this) {
            this.f47610e |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 != variableId) {
            return false;
        }
        n((SourceTabItemBean) variable);
        return true;
    }

    private y60(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[1]);
        this.f47610e = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) bindings[0];
        this.f47609d = relativeLayout;
        relativeLayout.setTag(null);
        this.f47117b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
