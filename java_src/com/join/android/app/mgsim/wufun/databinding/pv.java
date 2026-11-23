package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.dialog.ImageDialogViewmodle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class pv extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f43537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43541f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f43542g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected ImageDialogViewmodle f43543h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f43544i;

    protected pv(Object _bindingComponent, View _root, int _localFieldCount, ImageView closed, ImageView closed2, SimpleDraweeView image, SimpleDraweeView image2, LinearLayout main, FrameLayout main2) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f43537b = closed;
        this.f43538c = closed2;
        this.f43539d = image;
        this.f43540e = image2;
        this.f43541f = main;
        this.f43542g = main2;
    }

    @Deprecated
    public static pv b(@NonNull View view, @Nullable Object component) {
        return (pv) ViewDataBinding.bind(component, view, R.layout.image_show_dialog);
    }

    public static pv bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static pv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static pv m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (pv) ViewDataBinding.inflateInternal(inflater, R.layout.image_show_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static pv n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (pv) ViewDataBinding.inflateInternal(inflater, R.layout.image_show_dialog, null, false, component);
    }

    @Nullable
    public View.OnClickListener d() {
        return this.f43544i;
    }

    @Nullable
    public ImageDialogViewmodle f() {
        return this.f43543h;
    }

    public abstract void t(@Nullable View.OnClickListener click);

    public abstract void u(@Nullable ImageDialogViewmodle viewModle);

    @NonNull
    public static pv inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
