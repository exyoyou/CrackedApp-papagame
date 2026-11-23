package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.discount.model.bean.GameDetailInfoItemBean;

/* JADX INFO: loaded from: classes4.dex */
public class vz extends uz {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46502i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46503j = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46504e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f46505f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final TextView f46506g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f46507h;

    public vz(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f46502i, f46503j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        Integer iconRes;
        String title;
        synchronized (this) {
            j10 = this.f46507h;
            this.f46507h = 0L;
        }
        GameDetailInfoItemBean gameDetailInfoItemBean = this.f45980d;
        long j11 = j10 & 3;
        int i10 = 0;
        String str = null;
        Boolean showArrow = null;
        if (j11 != 0) {
            if (gameDetailInfoItemBean != null) {
                showArrow = gameDetailInfoItemBean.getShowArrow();
                iconRes = gameDetailInfoItemBean.getIconRes();
                title = gameDetailInfoItemBean.getTitle();
                value = gameDetailInfoItemBean.getValue();
            } else {
                value = null;
                iconRes = null;
                title = null;
            }
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(showArrow);
            if (j11 != 0) {
                j10 |= zSafeUnbox ? 8L : 4L;
            }
            i10 = zSafeUnbox ? 0 : 8;
            str = title;
        } else {
            value = null;
            iconRes = null;
        }
        if ((j10 & 3) != 0) {
            this.f45978b.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f45979c, str);
            SimpleDrawableViewKt.loadResId(this.f46505f, iconRes);
            TextViewBindingAdapter.setText(this.f46506g, value);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46507h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46507h = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.uz
    public void n(@Nullable GameDetailInfoItemBean ItemData) {
        this.f45980d = ItemData;
        synchronized (this) {
            this.f46507h |= 1;
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
        n((GameDetailInfoItemBean) variable);
        return true;
    }

    private vz(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[3], (TextView) bindings[2]);
        this.f46507h = -1L;
        this.f45978b.setTag(null);
        this.f45979c.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f46504e = constraintLayout;
        constraintLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bindings[1];
        this.f46505f = simpleDraweeView;
        simpleDraweeView.setTag(null);
        TextView textView = (TextView) bindings[4];
        this.f46506g = textView;
        textView.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
