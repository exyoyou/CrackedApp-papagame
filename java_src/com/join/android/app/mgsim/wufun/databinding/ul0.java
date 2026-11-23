package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ul0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected ArchiveData f45760c;

    protected ul0(Object _bindingComponent, View _root, int _localFieldCount, LinearLayout archiveLayout) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45759b = archiveLayout;
    }

    @Deprecated
    public static ul0 b(@NonNull View view, @Nullable Object component) {
        return (ul0) ViewDataBinding.bind(component, view, R.layout.mod_choice_dialog_item);
    }

    public static ul0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ul0 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ul0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_choice_dialog_item, root, attachToRoot, component);
    }

    @NonNull
    public static ul0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ul0 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ul0) ViewDataBinding.inflateInternal(inflater, R.layout.mod_choice_dialog_item, null, false, component);
    }

    @Nullable
    public ArchiveData d() {
        return this.f45760c;
    }

    public abstract void n(@Nullable ArchiveData archive);

    @NonNull
    public static ul0 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
