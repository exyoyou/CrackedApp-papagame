package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class cy extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f37151f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected CommonGameInfoBean f37152g;

    protected cy(Object _bindingComponent, View _root, int _localFieldCount, LinearLayout llTags, SimpleDraweeView sdvImage, TextView tvGameName, TextView tvScore, View vScore) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f37147b = llTags;
        this.f37148c = sdvImage;
        this.f37149d = tvGameName;
        this.f37150e = tvScore;
        this.f37151f = vScore;
    }

    @Deprecated
    public static cy b(@NonNull View view, @Nullable Object component) {
        return (cy) ViewDataBinding.bind(component, view, R.layout.item_common_zone_game_info_bottom_card);
    }

    public static cy bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static cy f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (cy) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_game_info_bottom_card, root, attachToRoot, component);
    }

    @NonNull
    public static cy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static cy m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (cy) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_game_info_bottom_card, null, false, component);
    }

    @Nullable
    public CommonGameInfoBean d() {
        return this.f37152g;
    }

    public abstract void n(@Nullable CommonGameInfoBean itemData);

    @NonNull
    public static cy inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
