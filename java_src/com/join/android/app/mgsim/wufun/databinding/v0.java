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
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.proxy.GameDetailServerBookDialogClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailServerBookDialogViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class v0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45987c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f45988d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45990f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected GameDetailServerBookDialogViewModel f45991g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected GameDetailServerBookDialogClickProxy f45992h;

    protected v0(Object _bindingComponent, View _root, int _localFieldCount, ConstraintLayout clContainer, ConstraintLayout clContent, XQuickRecyclerView recyclerview, TextView subTitle, TextView tvTitle) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45986b = clContainer;
        this.f45987c = clContent;
        this.f45988d = recyclerview;
        this.f45989e = subTitle;
        this.f45990f = tvTitle;
    }

    @Deprecated
    public static v0 b(@NonNull View view, @Nullable Object component) {
        return (v0) ViewDataBinding.bind(component, view, R.layout.activity_discount_game_detail_server_book_dialog);
    }

    public static v0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static v0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static v0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (v0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail_server_book_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static v0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (v0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail_server_book_dialog, null, false, component);
    }

    @Nullable
    public GameDetailServerBookDialogClickProxy d() {
        return this.f45992h;
    }

    @Nullable
    public GameDetailServerBookDialogViewModel f() {
        return this.f45991g;
    }

    public abstract void t(@Nullable GameDetailServerBookDialogClickProxy click);

    public abstract void u(@Nullable GameDetailServerBookDialogViewModel vm);

    @NonNull
    public static v0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
