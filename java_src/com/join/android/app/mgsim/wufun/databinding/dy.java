package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
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
public class dy extends cy {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f37672j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f37673k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final CardView f37674h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f37675i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f37673k = sparseIntArray;
        sparseIntArray.put(R.id.ll_tags, 4);
        sparseIntArray.put(R.id.v_score, 5);
    }

    public dy(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f37672j, f37673k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String showName;
        String coverPicUrl;
        String showScore;
        synchronized (this) {
            j10 = this.f37675i;
            this.f37675i = 0L;
        }
        CommonGameInfoBean commonGameInfoBean = this.f37152g;
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
            SimpleDrawableViewKt.loadUrl(this.f37148c, null, coverPicUrl, 0);
            TextViewBindingAdapter.setText(this.f37149d, showName);
            TextViewBindingAdapter.setText(this.f37150e, showScore);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f37675i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f37675i = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.cy
    public void n(@Nullable CommonGameInfoBean ItemData) {
        this.f37152g = ItemData;
        synchronized (this) {
            this.f37675i |= 1;
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

    private dy(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (LinearLayout) bindings[4], (SimpleDraweeView) bindings[1], (TextView) bindings[2], (TextView) bindings[3], (View) bindings[5]);
        this.f37675i = -1L;
        CardView cardView = (CardView) bindings[0];
        this.f37674h = cardView;
        cardView.setTag(null);
        this.f37148c.setTag(null);
        this.f37149d.setTag(null);
        this.f37150e.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
