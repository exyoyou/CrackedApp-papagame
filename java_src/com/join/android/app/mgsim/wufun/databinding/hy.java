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
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public class hy extends gy {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f39543j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f39544k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final CardView f39545h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f39546i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39544k = sparseIntArray;
        sparseIntArray.put(R.id.tv_label, 4);
        sparseIntArray.put(R.id.tv_score_label, 5);
    }

    public hy(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f39543j, f39544k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String showName;
        String coverPicUrl;
        String showScore;
        synchronized (this) {
            j10 = this.f39546i;
            this.f39546i = 0L;
        }
        CommonGameInfoBean commonGameInfoBean = this.f39062g;
        long j11 = j10 & 3;
        if (j11 == 0 || commonGameInfoBean == null) {
            showName = null;
            coverPicUrl = null;
            showScore = null;
        } else {
            showName = commonGameInfoBean.getShowName();
            coverPicUrl = commonGameInfoBean.getCoverPicUrl();
            showScore = commonGameInfoBean.getShowScore();
        }
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f39057b, coverPicUrl, null, 0);
            TextViewBindingAdapter.setText(this.f39058c, showName);
            TextViewBindingAdapter.setText(this.f39060e, showScore);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f39546i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39546i = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.gy
    public void n(@Nullable CommonGameInfoBean ItemData) {
        this.f39062g = ItemData;
        synchronized (this) {
            this.f39546i |= 1;
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
        n((CommonGameInfoBean) variable);
        return true;
    }

    private hy(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1], (TextView) bindings[2], (TextView) bindings[4], (TextView) bindings[3], (TextView) bindings[5]);
        this.f39546i = -1L;
        CardView cardView = (CardView) bindings[0];
        this.f39545h = cardView;
        cardView.setTag(null);
        this.f39057b.setTag(null);
        this.f39058c.setTag(null);
        this.f39060e.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
