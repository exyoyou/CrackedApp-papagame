package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyUserIconTitleLayout;
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class cw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final MyUserIconTitleLayout f37131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37133d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37134e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final VipView f37135f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final MyUserIconTitleLayout f37136g;

    private cw0(@NonNull MyUserIconTitleLayout rootView, @NonNull SimpleDraweeView papaUserIcon, @NonNull TextView papaUserIsIn, @NonNull TextView papaUserRound, @NonNull VipView papaVip, @NonNull MyUserIconTitleLayout userIconLayout) {
        this.f37131b = rootView;
        this.f37132c = papaUserIcon;
        this.f37133d = papaUserIsIn;
        this.f37134e = papaUserRound;
        this.f37135f = papaVip;
        this.f37136g = userIconLayout;
    }

    @NonNull
    public static cw0 bind(@NonNull View rootView) {
        int i10 = R.id.papa_user_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.papa_user_icon);
        if (simpleDraweeView != null) {
            i10 = R.id.papa_user_is_in;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.papa_user_is_in);
            if (textView != null) {
                i10 = R.id.papa_user_round;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.papa_user_round);
                if (textView2 != null) {
                    i10 = R.id.papa_vip;
                    VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.papa_vip);
                    if (vipView != null) {
                        MyUserIconTitleLayout myUserIconTitleLayout = (MyUserIconTitleLayout) rootView;
                        return new cw0(myUserIconTitleLayout, simpleDraweeView, textView, textView2, vipView, myUserIconTitleLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public MyUserIconTitleLayout getRoot() {
        return this.f37131b;
    }

    @NonNull
    public static cw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.top_user_icon_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
