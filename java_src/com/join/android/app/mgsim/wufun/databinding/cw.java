package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public final class cw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37125c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f37127e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37128f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37129g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37130h;

    private cw(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView appIcon, @NonNull TextView appName, @NonNull Button btnInstall, @NonNull ImageView ivStar, @NonNull LinearLayout tipsLayout, @NonNull TextView tvScore) {
        this.f37124b = rootView;
        this.f37125c = appIcon;
        this.f37126d = appName;
        this.f37127e = btnInstall;
        this.f37128f = ivStar;
        this.f37129g = tipsLayout;
        this.f37130h = tvScore;
    }

    @NonNull
    public static cw bind(@NonNull View rootView) {
        int i10 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.appName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
            if (textView != null) {
                i10 = R.id.btn_install;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_install);
                if (button != null) {
                    i10 = R.id.iv_star;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_star);
                    if (imageView != null) {
                        i10 = R.id.tipsLayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                        if (linearLayout != null) {
                            i10 = R.id.tv_score;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_score);
                            if (textView2 != null) {
                                return new cw((LinearLayout) rootView, simpleDraweeView, textView, button, imageView, linearLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37124b;
    }

    @NonNull
    public static cw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.install_app_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
