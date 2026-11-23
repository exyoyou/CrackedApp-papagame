package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;

/* JADX INFO: loaded from: classes4.dex */
public class r7 extends q7 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f44245f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f44246g = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44247c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final TextView f44248d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f44249e;

    public r7(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f44245f, f44246g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        long j11;
        long j12;
        synchronized (this) {
            j10 = this.f44249e;
            this.f44249e = 0L;
        }
        BtTagSelecterBean btTagSelecterBean = this.f43717b;
        long j13 = j10 & 3;
        int i10 = 0;
        boolean status = false;
        Drawable drawable = null;
        String timeMessage = null;
        if (j13 != 0) {
            if (btTagSelecterBean != null) {
                timeMessage = btTagSelecterBean.getTimeMessage();
                status = btTagSelecterBean.getStatus();
            }
            if (j13 != 0) {
                if (status) {
                    j11 = j10 | 8;
                    j12 = 32;
                } else {
                    j11 = j10 | 4;
                    j12 = 16;
                }
                j10 = j11 | j12;
            }
            int colorFromResource = ViewDataBinding.getColorFromResource(this.f44248d, status ? R.color.white : R.color.home_gray);
            Context context = this.f44248d.getContext();
            int i11 = status ? R.drawable.bt_tag_selected : R.drawable.bt_tag_normal;
            i10 = colorFromResource;
            str = timeMessage;
            drawable = AppCompatResources.getDrawable(context, i11);
        } else {
            str = null;
        }
        if ((j10 & 3) != 0) {
            this.f44248d.setTextColor(i10);
            ViewBindingAdapter.setBackground(this.f44248d, drawable);
            TextViewBindingAdapter.setText(this.f44248d, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f44249e != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f44249e = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.q7
    public void n(@Nullable BtTagSelecterBean Message) {
        this.f43717b = Message;
        synchronized (this) {
            this.f44249e |= 1;
        }
        notifyPropertyChanged(32);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (32 != variableId) {
            return false;
        }
        n((BtTagSelecterBean) variable);
        return true;
    }

    private r7(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0);
        this.f44249e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f44247c = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f44248d = textView;
        textView.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
