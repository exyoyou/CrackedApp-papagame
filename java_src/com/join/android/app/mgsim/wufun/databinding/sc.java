package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.modleregin.modle.TitleModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class sc extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f44718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44719c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44720d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected Boolean f44721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f44722f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected TitleModle f44723g;

    protected sc(Object _bindingComponent, View _root, int _localFieldCount, TextView more, TextView subTitle, TextView title) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f44718b = more;
        this.f44719c = subTitle;
        this.f44720d = title;
    }

    @Deprecated
    public static sc b(@NonNull View view, @Nullable Object component) {
        return (sc) ViewDataBinding.bind(component, view, R.layout.databinding_title_layout);
    }

    public static sc bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static sc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static sc x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (sc) ViewDataBinding.inflateInternal(inflater, R.layout.databinding_title_layout, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static sc y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (sc) ViewDataBinding.inflateInternal(inflater, R.layout.databinding_title_layout, null, false, component);
    }

    public abstract void A(@Nullable TitleModle data);

    public abstract void B(@Nullable Boolean isshowWhite);

    @Nullable
    public View.OnClickListener d() {
        return this.f44722f;
    }

    @Nullable
    public TitleModle f() {
        return this.f44723g;
    }

    @Nullable
    public Boolean w() {
        return this.f44721e;
    }

    public abstract void z(@Nullable View.OnClickListener click);

    @NonNull
    public static sc inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
