package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44062g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f44063h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44064i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44065j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44066k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ProgressBar f44067l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f44068m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f44069n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f44070o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f44071p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f44072q;

    private qw(@NonNull RelativeLayout rootView, @NonNull TextView appSize, @NonNull ImageView cancle, @NonNull TextView goMygame, @NonNull SimpleDraweeView icon, @NonNull TextView info, @NonNull ImageView ivStar, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull LinearLayout main, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull TextView tipsLayout, @NonNull TextView title, @NonNull TextView tvOk, @NonNull TextView tvScore) {
        this.f44057b = rootView;
        this.f44058c = appSize;
        this.f44059d = cancle;
        this.f44060e = goMygame;
        this.f44061f = icon;
        this.f44062g = info;
        this.f44063h = ivStar;
        this.f44064i = linearLayout2;
        this.f44065j = lodingInfo;
        this.f44066k = main;
        this.f44067l = progressBar;
        this.f44068m = progressBarZip;
        this.f44069n = tipsLayout;
        this.f44070o = title;
        this.f44071p = tvOk;
        this.f44072q = tvScore;
    }

    @NonNull
    public static qw bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.cancle;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.cancle);
            if (imageView != null) {
                i10 = R.id.goMygame;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.goMygame);
                if (textView2 != null) {
                    i10 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.info;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.info);
                        if (textView3 != null) {
                            i10 = R.id.iv_star;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_star);
                            if (imageView2 != null) {
                                i10 = R.id.linearLayout2;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                                if (linearLayout != null) {
                                    i10 = R.id.lodingInfo;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.lodingInfo);
                                    if (textView4 != null) {
                                        i10 = R.id.main;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.progressBar;
                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                            if (progressBar != null) {
                                                i10 = R.id.progressBarZip;
                                                ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                if (progressBar2 != null) {
                                                    i10 = R.id.tipsLayout;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                    if (textView5 != null) {
                                                        i10 = R.id.title;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                        if (textView6 != null) {
                                                            i10 = R.id.tv_ok;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_ok);
                                                            if (textView7 != null) {
                                                                i10 = R.id.tv_score;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_score);
                                                                if (textView8 != null) {
                                                                    return new qw((RelativeLayout) rootView, textView, imageView, textView2, simpleDraweeView, textView3, imageView2, linearLayout, textView4, linearLayout2, progressBar, progressBar2, textView5, textView6, textView7, textView8);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44057b;
    }

    @NonNull
    public static qw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_app_down_finish, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
