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
public abstract class am0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f35915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected DelArchiveDialogViewModle f35918e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f35919f;

    protected am0(Object _bindingComponent, View _root, int _localFieldCount, ImageView closed, LinearLayout main, TextView okButn) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f35915b = closed;
        this.f35916c = main;
        this.f35917d = okButn;
    }

    @Deprecated
    public static am0 b(@NonNull View view, @Nullable Object component) {
        return (am0) ViewDataBinding.bind(component, view, R.layout.mod_notice_archive_dialog);
    }

    public static am0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static am0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static am0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (am0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_notice_archive_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static am0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (am0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_notice_archive_dialog, null, false, component);
    }

    @Nullable
    public View.OnClickListener d() {
        return this.f35919f;
    }

    @Nullable
    public DelArchiveDialogViewModle f() {
        return this.f35918e;
    }

    public abstract void t(@Nullable View.OnClickListener click);

    public abstract void u(@Nullable DelArchiveDialogViewModle viewModle);

    @NonNull
    public static am0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
