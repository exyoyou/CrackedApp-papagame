package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.proxy.GameDetailCommentDataClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailCommentDataViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t1 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f45068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TabLayout f45071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f45072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected GameDetailCommentDataViewModel f45073g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected GameDetailCommentDataClickProxy f45074h;

    protected t1(Object _bindingComponent, View _root, int _localFieldCount, TextView btn, ConstraintLayout clContainer, ConstraintLayout clContent, TabLayout tablayout, ViewPager2 viewpager) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45068b = btn;
        this.f45069c = clContainer;
        this.f45070d = clContent;
        this.f45071e = tablayout;
        this.f45072f = viewpager;
    }

    @Deprecated
    public static t1 b(@NonNull View view, @Nullable Object component) {
        return (t1) ViewDataBinding.bind(component, view, R.layout.activity_game_detail_comment_data);
    }

    public static t1 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static t1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static t1 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (t1) ViewDataBinding.inflateInternal(inflater, R.layout.activity_game_detail_comment_data, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static t1 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (t1) ViewDataBinding.inflateInternal(inflater, R.layout.activity_game_detail_comment_data, null, false, component);
    }

    @Nullable
    public GameDetailCommentDataClickProxy d() {
        return this.f45074h;
    }

    @Nullable
    public GameDetailCommentDataViewModel f() {
        return this.f45073g;
    }

    public abstract void t(@Nullable GameDetailCommentDataClickProxy click);

    public abstract void u(@Nullable GameDetailCommentDataViewModel vm);

    @NonNull
    public static t1 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
