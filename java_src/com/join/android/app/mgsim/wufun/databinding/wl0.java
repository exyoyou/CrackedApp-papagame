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
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class wl0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f46851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f46853d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f46854e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46855f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46856g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46857h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46858i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46859j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46860k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected DelArchiveDialogViewModle f46861l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f46862m;

    protected wl0(Object _bindingComponent, View _root, int _localFieldCount, ImageView closed, ImageView imageView631, ImageView imageView632, ImageView imageView633, ConstraintLayout main, ConstraintLayout otherUsers, ConstraintLayout praise, TextView textView103, TextView textView109, ConstraintLayout unCommend) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f46851b = closed;
        this.f46852c = imageView631;
        this.f46853d = imageView632;
        this.f46854e = imageView633;
        this.f46855f = main;
        this.f46856g = otherUsers;
        this.f46857h = praise;
        this.f46858i = textView103;
        this.f46859j = textView109;
        this.f46860k = unCommend;
    }

    @Deprecated
    public static wl0 b(@NonNull View view, @Nullable Object component) {
        return (wl0) ViewDataBinding.bind(component, view, R.layout.mod_commentl_archive_dialog);
    }

    public static wl0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static wl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static wl0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (wl0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_commentl_archive_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static wl0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (wl0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_commentl_archive_dialog, null, false, component);
    }

    @Nullable
    public View.OnClickListener d() {
        return this.f46862m;
    }

    @Nullable
    public DelArchiveDialogViewModle f() {
        return this.f46861l;
    }

    public abstract void t(@Nullable View.OnClickListener click);

    public abstract void u(@Nullable DelArchiveDialogViewModle viewModle);

    @NonNull
    public static wl0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
