package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.proxy.CommonBottomDialogClickProxy;
import com.join.kotlin.discount.viewmodel.CommonBottomDialogViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f41089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41091d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41093f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected CommonBottomDialogViewModel f41094g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected CommonBottomDialogClickProxy f41095h;

    protected l0(Object _bindingComponent, View _root, int _localFieldCount, TextView btnConfirm, LinearLayout clContainer, ConstraintLayout clContent, TextView tvContent, TextView tvTitle) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f41089b = btnConfirm;
        this.f41090c = clContainer;
        this.f41091d = clContent;
        this.f41092e = tvContent;
        this.f41093f = tvTitle;
    }

    @Deprecated
    public static l0 b(@NonNull View view, @Nullable Object component) {
        return (l0) ViewDataBinding.bind(component, view, R.layout.activity_discount_common_bottom_dialog);
    }

    public static l0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static l0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static l0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (l0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_common_bottom_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static l0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (l0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_common_bottom_dialog, null, false, component);
    }

    @Nullable
    public CommonBottomDialogClickProxy d() {
        return this.f41095h;
    }

    @Nullable
    public CommonBottomDialogViewModel f() {
        return this.f41094g;
    }

    public abstract void t(@Nullable CommonBottomDialogClickProxy click);

    public abstract void u(@Nullable CommonBottomDialogViewModel vm);

    @NonNull
    public static l0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
