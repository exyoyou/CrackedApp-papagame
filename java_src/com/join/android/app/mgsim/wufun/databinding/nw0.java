package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.account.viewmodle.UnbindViewModle;
import com.join.kotlin.ui.notice.ClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class nw0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f42537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected ClickProxy f42540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected UnbindViewModle f42541f;

    protected nw0(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, TextView okButn, TextView titleTextview) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42537b = backImage;
        this.f42538c = okButn;
        this.f42539d = titleTextview;
    }

    @Deprecated
    public static nw0 b(@NonNull View view, @Nullable Object component) {
        return (nw0) ViewDataBinding.bind(component, view, R.layout.unbind_thridpart_activity);
    }

    public static nw0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static nw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static nw0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (nw0) ViewDataBinding.inflateInternal(inflater, R.layout.unbind_thridpart_activity, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static nw0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (nw0) ViewDataBinding.inflateInternal(inflater, R.layout.unbind_thridpart_activity, null, false, component);
    }

    @Nullable
    public ClickProxy d() {
        return this.f42540e;
    }

    @Nullable
    public UnbindViewModle f() {
        return this.f42541f;
    }

    public abstract void t(@Nullable ClickProxy click);

    public abstract void u(@Nullable UnbindViewModle viewModle);

    @NonNull
    public static nw0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
