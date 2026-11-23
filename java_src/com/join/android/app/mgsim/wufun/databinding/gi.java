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
public final class gi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38853c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f38855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CardView f38856f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38857g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38858h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f38859i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38860j;

    private gi(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView appIcon, @NonNull TextView appName, @NonNull Button btnInstall, @NonNull CardView cvTips, @NonNull ImageView ivClose, @NonNull LinearLayout llInstallLocal, @NonNull TextView tvInstallLocal, @NonNull TextView tvInstallTip) {
        this.f38852b = rootView;
        this.f38853c = appIcon;
        this.f38854d = appName;
        this.f38855e = btnInstall;
        this.f38856f = cvTips;
        this.f38857g = ivClose;
        this.f38858h = llInstallLocal;
        this.f38859i = tvInstallLocal;
        this.f38860j = tvInstallTip;
    }

    @NonNull
    public static gi bind(@NonNull View rootView) {
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
                            i10 = R.id.ll_install_local;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_install_local);
                            if (linearLayout != null) {
                                i10 = R.id.tv_install_local;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_install_local);
                                if (textView2 != null) {
                                    i10 = R.id.tv_install_tip;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_install_tip);
                                    if (textView3 != null) {
                                        return new gi((LinearLayout) rootView, simpleDraweeView, textView, button, cardView, imageView, linearLayout, textView2, textView3);
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
    public static gi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38852b;
    }

    @NonNull
    public static gi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_va_ext_support, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
