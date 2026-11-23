package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.kotlin.discount.model.bean.GameDetailDialogInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public class tz extends sz {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45484g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45485h = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final TextView f45487e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f45488f;

    public tz(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f45484g, f45485h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String title;
        String content;
        synchronized (this) {
            j10 = this.f45488f;
            this.f45488f = 0L;
        }
        GameDetailDialogInfoBean gameDetailDialogInfoBean = this.f45051c;
        long j11 = j10 & 3;
        if (j11 == 0 || gameDetailDialogInfoBean == null) {
            title = null;
            content = null;
        } else {
            title = gameDetailDialogInfoBean.getTitle();
            content = gameDetailDialogInfoBean.getContent();
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f45487e, content);
            TextViewBindingAdapter.setText(this.f45050b, title);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45488f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45488f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.sz
    public void n(@Nullable GameDetailDialogInfoBean ItemData) {
        this.f45051c = ItemData;
        synchronized (this) {
            this.f45488f |= 1;
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
        n((GameDetailDialogInfoBean) variable);
        return true;
    }

    private tz(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[1]);
        this.f45488f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f45486d = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[2];
        this.f45487e = textView;
        textView.setTag(null);
        this.f45050b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
