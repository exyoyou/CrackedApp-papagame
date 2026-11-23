package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.proxy.GameDetailGiftClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailGiftViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class r0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f44148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f44150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44151e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected GameDetailGiftViewModel f44152f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected GameDetailGiftClickProxy f44153g;

    protected r0(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImg, ConstraintLayout clContainer, XQuickRecyclerView rvGift, TextView title) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f44148b = backImg;
        this.f44149c = clContainer;
        this.f44150d = rvGift;
        this.f44151e = title;
    }

    @Deprecated
    public static r0 b(@NonNull View view, @Nullable Object component) {
        return (r0) ViewDataBinding.bind(component, view, R.layout.activity_discount_game_detail_gift);
    }

    public static r0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static r0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static r0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (r0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail_gift, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static r0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (r0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail_gift, null, false, component);
    }

    @Nullable
    public GameDetailGiftClickProxy d() {
        return this.f44153g;
    }

    @Nullable
    public GameDetailGiftViewModel f() {
        return this.f44152f;
    }

    public abstract void t(@Nullable GameDetailGiftClickProxy click);

    public abstract void u(@Nullable GameDetailGiftViewModel vm);

    @NonNull
    public static r0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
