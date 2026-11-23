package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;

/* JADX INFO: loaded from: classes4.dex */
public class ve extends ue {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46215j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46216k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final FrameLayout f46217h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f46218i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f46216k = sparseIntArray;
        sparseIntArray.put(R.id.tv_label_1, 2);
        sparseIntArray.put(R.id.iv_1, 3);
        sparseIntArray.put(R.id.tv_btn_1, 4);
        sparseIntArray.put(R.id.iv_btn_1, 5);
    }

    public ve(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f46215j, f46216k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f46218i;
            this.f46218i = 0L;
        }
        MessageCloudGamingPlaytimeResponse.PlaytimeVipDaysInfo playtimeVipDaysInfo = this.f45669g;
        long j11 = j10 & 3;
        String str = null;
        if (j11 != 0) {
            str = "会员时长+" + (playtimeVipDaysInfo != null ? playtimeVipDaysInfo.getTotalTime() : null);
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f45668f, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46218i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46218i = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ue
    public void n(@Nullable MessageCloudGamingPlaytimeResponse.PlaytimeVipDaysInfo ItemData) {
        this.f45669g = ItemData;
        synchronized (this) {
            this.f46218i |= 1;
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
        n((MessageCloudGamingPlaytimeResponse.PlaytimeVipDaysInfo) variable);
        return true;
    }

    private ve(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[3], (ImageView) bindings[5], (TextView) bindings[4], (TextView) bindings[2], (TextView) bindings[1]);
        this.f46218i = -1L;
        FrameLayout frameLayout = (FrameLayout) bindings[0];
        this.f46217h = frameLayout;
        frameLayout.setTag(null);
        this.f45668f.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
