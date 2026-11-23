package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class uj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45718c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45720e;

    private uj(@NonNull LinearLayout rootView, @NonNull ImageView adCancelIv, @NonNull SimpleDraweeView adIvIcon, @NonNull TextView adTitleTv) {
        this.f45717b = rootView;
        this.f45718c = adCancelIv;
        this.f45719d = adIvIcon;
        this.f45720e = adTitleTv;
    }

    @NonNull
    public static uj bind(@NonNull View rootView) {
        int i10 = R.id.ad_cancel_iv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ad_cancel_iv);
        if (imageView != null) {
            i10 = R.id.ad_iv_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ad_iv_icon);
            if (simpleDraweeView != null) {
                i10 = R.id.ad_title_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.ad_title_tv);
                if (textView != null) {
                    return new uj((LinearLayout) rootView, imageView, simpleDraweeView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45717b;
    }

    @NonNull
    public static uj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fight_ad_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
