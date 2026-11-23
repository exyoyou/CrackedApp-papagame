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
public class t40 extends s40 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45127i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45128j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final CardView f45129f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final TextView f45130g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f45131h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f45128j = sparseIntArray;
        sparseIntArray.put(R.id.fl_label, 4);
    }

    public t40(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f45127i, f45128j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String icon;
        String title;
        String release_time;
        synchronized (this) {
            j10 = this.f45131h;
            this.f45131h = 0L;
        }
        SourceListItemBean sourceListItemBean = this.f44635e;
        long j11 = j10 & 3;
        if (j11 != 0) {
            if (sourceListItemBean != null) {
                release_time = sourceListItemBean.getRelease_time();
                icon = sourceListItemBean.getIcon();
                title = sourceListItemBean.getTitle();
            } else {
                release_time = null;
                icon = null;
                title = null;
            }
            str = "时间：" + release_time;
        } else {
            str = null;
            icon = null;
            title = null;
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f45130g, str);
            SimpleDrawableViewKt.loadUrl(this.f44633c, icon, null, 0);
            TextViewBindingAdapter.setText(this.f44634d, title);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45131h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45131h = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.s40
    public void n(@Nullable SourceListItemBean ItemData) {
        this.f44635e = ItemData;
        synchronized (this) {
            this.f45131h |= 1;
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

    private t40(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (FlowLayout) bindings[4], (SimpleDraweeView) bindings[1], (TextView) bindings[2]);
        this.f45131h = -1L;
        CardView cardView = (CardView) bindings[0];
        this.f45129f = cardView;
        cardView.setTag(null);
        TextView textView = (TextView) bindings[3];
        this.f45130g = textView;
        textView.setTag(null);
        this.f44633c.setTag(null);
        this.f44634d.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
