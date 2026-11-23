package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public class a70 extends z60 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f35683h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f35684i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final CardView f35685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f35686g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f35684i = sparseIntArray;
        sparseIntArray.put(R.id.fl_label, 3);
    }

    public a70(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f35683h, f35684i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String icon;
        String title;
        synchronized (this) {
            j10 = this.f35686g;
            this.f35686g = 0L;
        }
        SourceListItemBean sourceListItemBean = this.f48107e;
        long j11 = j10 & 3;
        if (j11 == 0 || sourceListItemBean == null) {
            icon = null;
            title = null;
        } else {
            icon = sourceListItemBean.getIcon();
            title = sourceListItemBean.getTitle();
        }
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f48105c, icon, null, 0);
            TextViewBindingAdapter.setText(this.f48106d, title);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f35686g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f35686g = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z60
    public void n(@Nullable SourceListItemBean ItemData) {
        this.f48107e = ItemData;
        synchronized (this) {
            this.f35686g |= 1;
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
        n((SourceListItemBean) variable);
        return true;
    }

    private a70(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (FlowLayout) bindings[3], (SimpleDraweeView) bindings[1], (TextView) bindings[2]);
        this.f35686g = -1L;
        CardView cardView = (CardView) bindings[0];
        this.f35685f = cardView;
        cardView.setTag(null);
        this.f48105c.setTag(null);
        this.f48106d.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
