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
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ey extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38165d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f38166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f38167f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected CommonGameInfoBean f38168g;

    protected ey(Object _bindingComponent, View _root, int _localFieldCount, LinearLayout llTags, TextView tvGameName, TextView tvScore, View vScore, MultiStandVideo wfVideo) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38163b = llTags;
        this.f38164c = tvGameName;
        this.f38165d = tvScore;
        this.f38166e = vScore;
        this.f38167f = wfVideo;
    }

    @Deprecated
    public static ey b(@NonNull View view, @Nullable Object component) {
        return (ey) ViewDataBinding.bind(component, view, R.layout.item_common_zone_game_info_bottom_card_video);
    }

    public static ey bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ey f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ey) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_game_info_bottom_card_video, root, attachToRoot, component);
    }

    @NonNull
    public static ey inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ey m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ey) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_game_info_bottom_card_video, null, false, component);
    }

    @Nullable
    public CommonGameInfoBean d() {
        return this.f38168g;
    }

    public abstract void n(@Nullable CommonGameInfoBean itemData);

    @NonNull
    public static ey inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
