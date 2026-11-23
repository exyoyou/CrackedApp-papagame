package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialogViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class sl0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f44853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44854c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f44855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected ChoiceArchiveDialogViewModle f44856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f44857f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected RecyclerView.Adapter<RecyclerView.ViewHolder> f44858g;

    protected sl0(Object _bindingComponent, View _root, int _localFieldCount, ImageView closed, LinearLayout main, RecyclerView recyclerView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f44853b = closed;
        this.f44854c = main;
        this.f44855d = recyclerView;
    }

    @Deprecated
    public static sl0 b(@NonNull View view, @Nullable Object component) {
        return (sl0) ViewDataBinding.bind(component, view, R.layout.mod_choice_archive_dialog);
    }

    public static sl0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static sl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static sl0 x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (sl0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_choice_archive_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static sl0 y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (sl0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_choice_archive_dialog, null, false, component);
    }

    public abstract void A(@Nullable View.OnClickListener click);

    public abstract void B(@Nullable ChoiceArchiveDialogViewModle viewModle);

    @Nullable
    public RecyclerView.Adapter<RecyclerView.ViewHolder> d() {
        return this.f44858g;
    }

    @Nullable
    public View.OnClickListener f() {
        return this.f44857f;
    }

    @Nullable
    public ChoiceArchiveDialogViewModle w() {
        return this.f44856e;
    }

    public abstract void z(@Nullable RecyclerView.Adapter<RecyclerView.ViewHolder> adapter);

    @NonNull
    public static sl0 inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
