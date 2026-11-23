package com.join.android.app.mgsim.wufun.databinding;

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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.mgps.activity.recomend.RecommendBean;
import com.join.mgps.dto.AppBean;

/* JADX INFO: loaded from: classes4.dex */
public class z40 extends y40 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f48083h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f48084i = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48085e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final TextView f48086f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f48087g;

    public z40(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f48083h, f48084i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        Drawable drawable;
        String ico_remote;
        String game_name;
        AppBean game_info;
        int is_select;
        synchronized (this) {
            j10 = this.f48087g;
            this.f48087g = 0L;
        }
        RecommendBean recommendBean = this.f47578d;
        long j11 = j10 & 3;
        if (j11 != 0) {
            if (recommendBean != null) {
                game_info = recommendBean.getGame_info();
                is_select = recommendBean.getIs_select();
            } else {
                game_info = null;
                is_select = 0;
            }
            if (game_info != null) {
                game_name = game_info.getGame_name();
                ico_remote = game_info.getIco_remote();
            } else {
                ico_remote = null;
                game_name = null;
            }
            boolean z10 = is_select == 1;
            if (j11 != 0) {
                j10 |= z10 ? 8L : 4L;
            }
            drawable = AppCompatResources.getDrawable(this.f47576b.getContext(), z10 ? R.drawable.checkbox_checked : R.drawable.checkbox_normal);
        } else {
            drawable = null;
            ico_remote = null;
            game_name = null;
        }
        if ((j10 & 3) != 0) {
            ImageViewBindingAdapter.setImageDrawable(this.f47576b, drawable);
            TextViewBindingAdapter.setText(this.f48086f, game_name);
            SimpleDrawableViewKt.loadUrl(this.f47577c, ico_remote, null, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f48087g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f48087g = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.y40
    public void n(@Nullable RecommendBean ItemData) {
        this.f47578d = ItemData;
        synchronized (this) {
            this.f48087g |= 1;
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
        n((RecommendBean) variable);
        return true;
    }

    private z40(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[2], (SimpleDraweeView) bindings[1]);
        this.f48087g = -1L;
        this.f47576b.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f48085e = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[3];
        this.f48086f = textView;
        textView.setTag(null);
        this.f47577c.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
