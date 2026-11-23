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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.SourceSaveClickProxy;
import com.join.kotlin.quark.viewmodel.SourceSaveViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t4 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45121e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45122f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45123g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45124h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Bindable
    protected SourceSaveViewModel f45125i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Bindable
    protected SourceSaveClickProxy f45126j;

    protected t4(Object _bindingComponent, View _root, int _localFieldCount, ConstraintLayout clContent, SimpleDraweeView sdvHead, SimpleDraweeView sdvImage, TextView tvAuthor, TextView tvLabel1, TextView tvSave, TextView tvTitle) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45118b = clContent;
        this.f45119c = sdvHead;
        this.f45120d = sdvImage;
        this.f45121e = tvAuthor;
        this.f45122f = tvLabel1;
        this.f45123g = tvSave;
        this.f45124h = tvTitle;
    }

    @Deprecated
    public static t4 b(@NonNull View view, @Nullable Object component) {
        return (t4) ViewDataBinding.bind(component, view, R.layout.activity_source_save);
    }

    public static t4 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static t4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static t4 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (t4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_source_save, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static t4 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (t4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_source_save, null, false, component);
    }

    @Nullable
    public SourceSaveClickProxy d() {
        return this.f45126j;
    }

    @Nullable
    public SourceSaveViewModel f() {
        return this.f45125i;
    }

    public abstract void t(@Nullable SourceSaveClickProxy click);

    public abstract void u(@Nullable SourceSaveViewModel vm);

    @NonNull
    public static t4 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
