package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;

/* JADX INFO: loaded from: classes4.dex */
public class nc extends mc {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f42285h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f42286i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f42287g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f42286i = sparseIntArray;
        sparseIntArray.put(R.id.dv_view, 3);
    }

    public nc(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f42285h, f42286i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String ico_remote;
        String game_name;
        String gif_ico_remote;
        synchronized (this) {
            j10 = this.f42287g;
            this.f42287g = 0L;
        }
        CollectionBeanSub collectionBeanSub = this.f41834f;
        long j11 = j10 & 3;
        if (j11 == 0 || collectionBeanSub == null) {
            ico_remote = null;
            game_name = null;
            gif_ico_remote = null;
        } else {
            ico_remote = collectionBeanSub.getIco_remote();
            game_name = collectionBeanSub.getGame_name();
            gif_ico_remote = collectionBeanSub.getGif_ico_remote();
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f41830b, game_name);
            SimpleDrawableViewKt.loadUrl(this.f41832d, ico_remote, gif_ico_remote, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42287g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42287g = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.mc
    public void n(@Nullable CollectionBeanSub Data) {
        this.f41834f = Data;
        synchronized (this) {
            this.f42287g |= 1;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (11 != variableId) {
            return false;
        }
        n((CollectionBeanSub) variable);
        return true;
    }

    private nc(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[2], (DownloadNormalView) bindings[3], (SimpleDraweeView) bindings[1], (LinearLayout) bindings[0]);
        this.f42287g = -1L;
        this.f41830b.setTag(null);
        this.f41832d.setTag(null);
        this.f41833e.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
