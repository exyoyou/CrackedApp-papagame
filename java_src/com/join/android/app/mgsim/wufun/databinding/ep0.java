package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ep0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f38068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected DelArchiveDialogViewModle f38071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f38072f;

    protected ep0(Object _bindingComponent, View _root, int _localFieldCount, ImageView closed, LinearLayout main, TextView okButn) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38068b = closed;
        this.f38069c = main;
        this.f38070d = okButn;
    }

    @Deprecated
    public static ep0 b(@NonNull View view, @Nullable Object component) {
        return (ep0) ViewDataBinding.bind(component, view, R.layout.notice_white_dialog);
    }

    public static ep0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ep0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ep0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ep0) ViewDataBinding.inflateInternal(inflater, R.layout.notice_white_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static ep0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ep0) ViewDataBinding.inflateInternal(inflater, R.layout.notice_white_dialog, null, false, component);
    }

    @Nullable
    public View.OnClickListener d() {
        return this.f38072f;
    }

    @Nullable
    public DelArchiveDialogViewModle f() {
        return this.f38071e;
    }

    public abstract void t(@Nullable View.OnClickListener click);

    public abstract void u(@Nullable DelArchiveDialogViewModle viewModle);

    @NonNull
    public static ep0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
