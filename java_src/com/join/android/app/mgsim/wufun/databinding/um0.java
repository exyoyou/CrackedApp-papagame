package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;

/* JADX INFO: loaded from: classes4.dex */
public abstract class um0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f45764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f45767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45768f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45769g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45770h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f45771i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f45772j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45773k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f45774l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f45775m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f45776n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Bindable
    protected ArchiveData f45777o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Bindable
    protected OnClickArchiveListener f45778p;

    protected um0(Object _bindingComponent, View _root, int _localFieldCount, TextView contentsimpble, ImageView disLike, TextView disLikeNumber, ImageView downImg, TextView downNumber, RelativeLayout messageLayout, TextView more, ImageView moreDelete, ImageView parise, TextView pariseNumber, TextView startCloud, TextView uploadCloud, TextView userName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45764b = contentsimpble;
        this.f45765c = disLike;
        this.f45766d = disLikeNumber;
        this.f45767e = downImg;
        this.f45768f = downNumber;
        this.f45769g = messageLayout;
        this.f45770h = more;
        this.f45771i = moreDelete;
        this.f45772j = parise;
        this.f45773k = pariseNumber;
        this.f45774l = startCloud;
        this.f45775m = uploadCloud;
        this.f45776n = userName;
    }

    @Deprecated
    public static um0 b(@NonNull View view, @Nullable Object component) {
        return (um0) ViewDataBinding.bind(component, view, R.layout.modarchive_list_local_item);
    }

    public static um0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static um0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static um0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (um0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_local_item, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static um0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (um0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_local_item, null, false, component);
    }

    @Nullable
    public OnClickArchiveListener d() {
        return this.f45778p;
    }

    @Nullable
    public ArchiveData f() {
        return this.f45777o;
    }

    public abstract void t(@Nullable OnClickArchiveListener clickListener);

    public abstract void u(@Nullable ArchiveData itemData);

    @NonNull
    public static um0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
