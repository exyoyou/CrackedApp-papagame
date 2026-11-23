package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.GiftItemBean;
import com.join.kotlin.discount.proxy.GameDetailGiftClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class dz extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ProgressBar f37681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected GiftItemBean f37685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected GameDetailGiftClickProxy f37686g;

    protected dz(Object _bindingComponent, View _root, int _localFieldCount, ProgressBar pbGiftProgress, TextView tvGiftContent, TextView tvGiftTitle, TextView tvReceive) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f37681b = pbGiftProgress;
        this.f37682c = tvGiftContent;
        this.f37683d = tvGiftTitle;
        this.f37684e = tvReceive;
    }

    @Deprecated
    public static dz b(@NonNull View view, @Nullable Object component) {
        return (dz) ViewDataBinding.bind(component, view, R.layout.item_detail_gift);
    }

    public static dz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static dz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static dz m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (dz) ViewDataBinding.inflateInternal(inflater, R.layout.item_detail_gift, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static dz n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (dz) ViewDataBinding.inflateInternal(inflater, R.layout.item_detail_gift, null, false, component);
    }

    @Nullable
    public GameDetailGiftClickProxy d() {
        return this.f37686g;
    }

    @Nullable
    public GiftItemBean f() {
        return this.f37685f;
    }

    public abstract void t(@Nullable GameDetailGiftClickProxy click);

    public abstract void u(@Nullable GiftItemBean itemData);

    @NonNull
    public static dz inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
