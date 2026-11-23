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
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public class fy extends ey {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38615j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38616k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final CardView f38617h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f38618i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38616k = sparseIntArray;
        sparseIntArray.put(R.id.wf_video, 3);
        sparseIntArray.put(R.id.ll_tags, 4);
        sparseIntArray.put(R.id.v_score, 5);
    }

    public fy(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f38615j, f38616k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String showName;
        String showScore;
        synchronized (this) {
            j10 = this.f38618i;
            this.f38618i = 0L;
        }
        CommonGameInfoBean commonGameInfoBean = this.f38168g;
        long j11 = j10 & 3;
        if (j11 == 0 || commonGameInfoBean == null) {
            showName = null;
            showScore = null;
        } else {
            showName = commonGameInfoBean.getShowName();
            showScore = commonGameInfoBean.getShowScore();
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f38164c, showName);
            TextViewBindingAdapter.setText(this.f38165d, showScore);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f38618i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38618i = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ey
    public void n(@Nullable CommonGameInfoBean ItemData) {
        this.f38168g = ItemData;
        synchronized (this) {
            this.f38618i |= 1;
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

    private fy(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (LinearLayout) bindings[4], (TextView) bindings[1], (TextView) bindings[2], (View) bindings[5], (MultiStandVideo) bindings[3]);
        this.f38618i = -1L;
        CardView cardView = (CardView) bindings[0];
        this.f38617h = cardView;
        cardView.setTag(null);
        this.f38164c.setTag(null);
        this.f38165d.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
