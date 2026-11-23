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
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;

/* JADX INFO: loaded from: classes4.dex */
public class bx extends ax {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36628j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36629k = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final TextView f36631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final TextView f36632f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final TextView f36633g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final TextView f36634h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f36635i;

    public bx(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f36628j, f36629k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String coin;
        String diamond;
        String str;
        String vipTime;
        String freeTime;
        synchronized (this) {
            j10 = this.f36635i;
            this.f36635i = 0L;
        }
        MessageCloudGamingPlaytimeResponse.PlaytimeSummary playtimeSummary = this.f36104c;
        long j11 = j10 & 3;
        String totalTime = null;
        if (j11 != 0) {
            if (playtimeSummary != null) {
                coin = playtimeSummary.getCoin();
                diamond = playtimeSummary.getDiamond();
                totalTime = playtimeSummary.getTotalTime();
                freeTime = playtimeSummary.getFreeTime();
                vipTime = playtimeSummary.getVipTime();
            } else {
                coin = null;
                diamond = null;
                freeTime = null;
                vipTime = null;
            }
            totalTime = freeTime;
            str = "总共可用时长：" + totalTime;
        } else {
            coin = null;
            diamond = null;
            str = null;
            vipTime = null;
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f36631e, totalTime);
            TextViewBindingAdapter.setText(this.f36632f, vipTime);
            TextViewBindingAdapter.setText(this.f36633g, diamond);
            TextViewBindingAdapter.setText(this.f36634h, coin);
            TextViewBindingAdapter.setText(this.f36103b, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f36635i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36635i = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ax
    public void n(@Nullable MessageCloudGamingPlaytimeResponse.PlaytimeSummary ItemData) {
        this.f36104c = ItemData;
        synchronized (this) {
            this.f36635i |= 1;
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
        n((MessageCloudGamingPlaytimeResponse.PlaytimeSummary) variable);
        return true;
    }

    private bx(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[1]);
        this.f36635i = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f36630d = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[2];
        this.f36631e = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[3];
        this.f36632f = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) bindings[4];
        this.f36633g = textView3;
        textView3.setTag(null);
        TextView textView4 = (TextView) bindings[5];
        this.f36634h = textView4;
        textView4.setTag(null);
        this.f36103b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
