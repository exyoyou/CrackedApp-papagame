package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class dy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37680f;

    private dy0(@NonNull LinearLayout rootView, @NonNull TextView detail, @NonNull SimpleDraweeView ivUserAvatar, @NonNull TextView time, @NonNull TextView userName) {
        this.f37676b = rootView;
        this.f37677c = detail;
        this.f37678d = ivUserAvatar;
        this.f37679e = time;
        this.f37680f = userName;
    }

    @NonNull
    public static dy0 bind(@NonNull View rootView) {
        int i10 = R.id.detail;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.detail);
        if (textView != null) {
            i10 = R.id.iv_user_avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_user_avatar);
            if (simpleDraweeView != null) {
                i10 = R.id.time;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                if (textView2 != null) {
                    i10 = R.id.userName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                    if (textView3 != null) {
                        return new dy0((LinearLayout) rootView, textView, simpleDraweeView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37676b;
    }

    @NonNull
    public static dy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.vip_center_vipcard_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
