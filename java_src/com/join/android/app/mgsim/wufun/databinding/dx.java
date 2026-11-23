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
import com.join.kotlin.bindingadapter.ViewBindingTextviewKt;
import com.wufan.user.service.protobuf.MessageCloudGamingCoinResponse;

/* JADX INFO: loaded from: classes4.dex */
public class dx extends cx {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f37664h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f37665i = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37666f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f37667g;

    public dx(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f37664h, f37665i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String str2;
        String str3;
        double changeNum;
        String title;
        long j11;
        long j12;
        synchronized (this) {
            j10 = this.f37667g;
            this.f37667g = 0L;
        }
        MessageCloudGamingCoinResponse.CoinLog coinLog = this.f37140e;
        long j13 = j10 & 3;
        String addTime = null;
        if (j13 != 0) {
            if (coinLog != null) {
                changeNum = coinLog.getChangeNum();
                addTime = coinLog.getAddTime();
                title = coinLog.getTitle();
            } else {
                changeNum = 0.0d;
                title = null;
            }
            boolean z10 = changeNum > 0.0d;
            if (j13 != 0) {
                if (z10) {
                    j11 = j10 | 8;
                    j12 = 32;
                } else {
                    j11 = j10 | 4;
                    j12 = 16;
                }
                j10 = j11 | j12;
            }
            String str4 = z10 ? "+" : "";
            str2 = z10 ? "#FF7017" : "#F0C757";
            str3 = (str4 + changeNum) + "云币";
            String str5 = addTime;
            addTime = title;
            str = str5;
        } else {
            str = null;
            str2 = null;
            str3 = null;
        }
        if ((j10 & 3) != 0) {
            TextViewBindingAdapter.setText(this.f37137b, addTime);
            TextViewBindingAdapter.setText(this.f37138c, str);
            ViewBindingTextviewKt.textViewColorBinding(this.f37139d, str2);
            TextViewBindingAdapter.setText(this.f37139d, str3);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f37667g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f37667g = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.cx
    public void n(@Nullable MessageCloudGamingCoinResponse.CoinLog ItemData) {
        this.f37140e = ItemData;
        synchronized (this) {
            this.f37667g |= 1;
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
        n((MessageCloudGamingCoinResponse.CoinLog) variable);
        return true;
    }

    private dx(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[1], (TextView) bindings[2], (TextView) bindings[3]);
        this.f37667g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f37666f = constraintLayout;
        constraintLayout.setTag(null);
        this.f37137b.setTag(null);
        this.f37138c.setTag(null);
        this.f37139d.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
