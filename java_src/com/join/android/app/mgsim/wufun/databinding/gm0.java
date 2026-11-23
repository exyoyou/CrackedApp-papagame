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
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.textfield.TextInputEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class gm0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextInputEditText f38897f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38898g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38899h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected ModUploadArchiveViewModle f38900i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f38901j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected TextViewBindingAdapter.OnTextChanged f38902k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected TextViewBindingAdapter.BeforeTextChanged f38903l;

    protected gm0(Object _bindingComponent, View _root, int _localFieldCount, LinearLayout archiveLayout, ImageView back, ImageView choiceIcon, ImageView clearImage, TextInputEditText message, TextView save, SimpleDraweeView selectedIcon) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38893b = archiveLayout;
        this.f38894c = back;
        this.f38895d = choiceIcon;
        this.f38896e = clearImage;
        this.f38897f = message;
        this.f38898g = save;
        this.f38899h = selectedIcon;
    }

    @NonNull
    @Deprecated
    public static gm0 A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (gm0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_upload_archive_activity, null, false, component);
    }

    @Deprecated
    public static gm0 b(@NonNull View view, @Nullable Object component) {
        return (gm0) ViewDataBinding.bind(component, view, R.layout.mod_upload_archive_activity);
    }

    public static gm0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static gm0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static gm0 z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (gm0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_upload_archive_activity, root, attachToRoot, component);
    }

    public abstract void B(@Nullable TextViewBindingAdapter.OnTextChanged afterTextChange);

    public abstract void C(@Nullable TextViewBindingAdapter.BeforeTextChanged beforTextChange);

    public abstract void D(@Nullable View.OnClickListener onClickListener);

    public abstract void E(@Nullable ModUploadArchiveViewModle viewModle);

    @Nullable
    public TextViewBindingAdapter.OnTextChanged d() {
        return this.f38902k;
    }

    @Nullable
    public TextViewBindingAdapter.BeforeTextChanged f() {
        return this.f38903l;
    }

    @Nullable
    public View.OnClickListener w() {
        return this.f38901j;
    }

    @Nullable
    public ModUploadArchiveViewModle y() {
        return this.f38900i;
    }

    @NonNull
    public static gm0 inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
