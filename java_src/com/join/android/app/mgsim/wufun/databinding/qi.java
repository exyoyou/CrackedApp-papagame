package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.DownloadArchivDialogeViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class qi extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Bindable
    protected DownloadArchivDialogeViewModle f43842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected View.OnClickListener f43843c;

    protected qi(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static qi b(@NonNull View view, @Nullable Object component) {
        return (qi) ViewDataBinding.bind(component, view, R.layout.download_archive_dialog);
    }

    public static qi bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static qi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static qi m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (qi) ViewDataBinding.inflateInternal(inflater, R.layout.download_archive_dialog, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static qi n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (qi) ViewDataBinding.inflateInternal(inflater, R.layout.download_archive_dialog, null, false, component);
    }

    @Nullable
    public View.OnClickListener d() {
        return this.f43843c;
    }

    @Nullable
    public DownloadArchivDialogeViewModle f() {
        return this.f43842b;
    }

    public abstract void t(@Nullable View.OnClickListener click);

    public abstract void u(@Nullable DownloadArchivDialogeViewModle viewModle);

    @NonNull
    public static qi inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
