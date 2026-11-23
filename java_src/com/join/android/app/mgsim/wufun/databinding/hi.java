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
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39353d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f39354e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CardView f39355f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39356g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39357h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39358i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39359j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f39360k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f39361l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f39362m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f39363n;

    private hi(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView appIcon, @NonNull TextView appName, @NonNull Button btnInstall, @NonNull CardView cvTips, @NonNull ImageView ivClose, @NonNull LinearLayout llCloudLaunch, @NonNull LinearLayout llInstallLocal, @NonNull LinearLayout llInstallLocal2, @NonNull TextView tvInstallLocal, @NonNull TextView tvInstallLocal2, @NonNull TextView tvInstallLocal3, @NonNull TextView tvInstallTip) {
        this.f39351b = rootView;
        this.f39352c = appIcon;
        this.f39353d = appName;
        this.f39354e = btnInstall;
        this.f39355f = cvTips;
        this.f39356g = ivClose;
        this.f39357h = llCloudLaunch;
        this.f39358i = llInstallLocal;
        this.f39359j = llInstallLocal2;
        this.f39360k = tvInstallLocal;
        this.f39361l = tvInstallLocal2;
        this.f39362m = tvInstallLocal3;
        this.f39363n = tvInstallTip;
    }

    @NonNull
    public static hi bind(@NonNull View rootView) {
        int i10 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.appName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
            if (textView != null) {
                i10 = R.id.btn_install;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_install);
                if (button != null) {
                    i10 = R.id.cv_tips;
                    CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.cv_tips);
                    if (cardView != null) {
                        i10 = R.id.iv_close;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                        if (imageView != null) {
                            i10 = R.id.ll_cloud_launch;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_cloud_launch);
                            if (linearLayout != null) {
                                i10 = R.id.ll_install_local;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_install_local);
                                if (linearLayout2 != null) {
                                    i10 = R.id.ll_install_local_2;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_install_local_2);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.tv_install_local;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_install_local);
                                        if (textView2 != null) {
                                            i10 = R.id.tv_install_local_2;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_install_local_2);
                                            if (textView3 != null) {
                                                i10 = R.id.tv_install_local_3;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_install_local_3);
                                                if (textView4 != null) {
                                                    i10 = R.id.tv_install_tip;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_install_tip);
                                                    if (textView5 != null) {
                                                        return new hi((LinearLayout) rootView, simpleDraweeView, textView, button, cardView, imageView, linearLayout, linearLayout2, linearLayout3, textView2, textView3, textView4, textView5);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39351b;
    }

    @NonNull
    public static hi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_va_ext_support_install_tip, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
