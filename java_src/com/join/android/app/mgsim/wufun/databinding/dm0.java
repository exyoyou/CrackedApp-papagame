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
public abstract class dm0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f37533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37537f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f37538g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected DelArchiveDialogViewModle f37539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f37540i;

    protected dm0(Object _bindingComponent, View _root, int _localFieldCount, TextView cancelBtn, ImageView closed, LinearLayout main, TextView message, TextView okButn, ImageView radio) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f37533b = cancelBtn;
        this.f37534c = closed;
        this.f37535d = main;
        this.f37536e = message;
        this.f37537f = okButn;
        this.f37538g = radio;
    }

    @Deprecated
    public static dm0 b(@NonNull View view, @Nullable Object component) {
        return (dm0) ViewDataBinding.bind(component, view, R.layout.mod_redown_archive_dialog);
    }

    public static dm0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static dm0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static dm0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (dm0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_redown_archive_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static dm0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (dm0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_redown_archive_dialog, null, false, component);
    }

    @Nullable
    public View.OnClickListener d() {
        return this.f37540i;
    }

    @Nullable
    public DelArchiveDialogViewModle f() {
        return this.f37539h;
    }

    public abstract void t(@Nullable View.OnClickListener click);

    public abstract void u(@Nullable DelArchiveDialogViewModle viewModle);

    @NonNull
    public static dm0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
