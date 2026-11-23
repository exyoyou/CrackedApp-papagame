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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.mgps.dto.CollectionBeanSub;

/* JADX INFO: loaded from: classes4.dex */
public class zz extends yz {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f48486g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f48487h = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f48489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final TextView f48490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f48491f;

    public zz(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f48486g, f48487h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String game_name;
        String ico_remote;
        synchronized (this) {
            j10 = this.f48491f;
            this.f48491f = 0L;
        }
        CollectionBeanSub collectionBeanSub = this.f48000b;
        long j11 = j10 & 3;
        if (j11 == 0 || collectionBeanSub == null) {
            game_name = null;
            ico_remote = null;
        } else {
            game_name = collectionBeanSub.getGame_name();
            ico_remote = collectionBeanSub.getIco_remote();
        }
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f48489d, ico_remote, null, 0);
            TextViewBindingAdapter.setText(this.f48490e, game_name);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f48491f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f48491f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.yz
    public void n(@Nullable CollectionBeanSub ItemData) {
        this.f48000b = ItemData;
        synchronized (this) {
            this.f48491f |= 1;
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
        n((CollectionBeanSub) variable);
        return true;
    }

    private zz(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0);
        this.f48491f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f48488c = constraintLayout;
        constraintLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bindings[1];
        this.f48489d = simpleDraweeView;
        simpleDraweeView.setTag(null);
        TextView textView = (TextView) bindings[2];
        this.f48490e = textView;
        textView.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
