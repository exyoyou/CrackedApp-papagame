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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;

/* JADX INFO: loaded from: classes4.dex */
public abstract class qm0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f43916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43917c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43920f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43921g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f43922h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43923i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43924j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43925k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43926l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43927m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Bindable
    protected ArchiveData f43928n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Bindable
    protected OnClickArchiveListener f43929o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Bindable
    protected Boolean f43930p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Bindable
    protected Boolean f43931q;

    protected qm0(Object _bindingComponent, View _root, int _localFieldCount, TextView contentsimpble, ImageView disLike, TextView disLikeNumber, RelativeLayout messageLayout, TextView more, ImageView moreDelete, ImageView parise, TextView pariseNumber, TextView startCloud, TextView tvHotTag, SimpleDraweeView userIcon, TextView userName) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f43916b = contentsimpble;
        this.f43917c = disLike;
        this.f43918d = disLikeNumber;
        this.f43919e = messageLayout;
        this.f43920f = more;
        this.f43921g = moreDelete;
        this.f43922h = parise;
        this.f43923i = pariseNumber;
        this.f43924j = startCloud;
        this.f43925k = tvHotTag;
        this.f43926l = userIcon;
        this.f43927m = userName;
    }

    @NonNull
    @Deprecated
    public static qm0 A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (qm0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_item, null, false, component);
    }

    @Deprecated
    public static qm0 b(@NonNull View view, @Nullable Object component) {
        return (qm0) ViewDataBinding.bind(component, view, R.layout.modarchive_list_item);
    }

    public static qm0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static qm0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static qm0 z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (qm0) ViewDataBinding.inflateInternal(inflater, R.layout.modarchive_list_item, root, attachToRoot, component);
    }

    public abstract void B(@Nullable OnClickArchiveListener clickListener);

    public abstract void C(@Nullable Boolean isChoice);

    public abstract void D(@Nullable Boolean isShowName);

    public abstract void E(@Nullable ArchiveData itemData);

    @Nullable
    public OnClickArchiveListener d() {
        return this.f43929o;
    }

    @Nullable
    public Boolean f() {
        return this.f43930p;
    }

    @Nullable
    public Boolean w() {
        return this.f43931q;
    }

    @Nullable
    public ArchiveData y() {
        return this.f43928n;
    }

    @NonNull
    public static qm0 inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
