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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vs implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f46424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f46425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f46426d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46427e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46428f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46429g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f46430h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46431i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46432j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46433k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46434l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46435m;

    private vs(@NonNull View rootView, @NonNull ProgressBar butnProgressBar, @NonNull ImageView butnShowdownload, @NonNull TextView instalButtomButn, @NonNull ConstraintLayout instalbutnLayout, @NonNull ImageView ivCloudLaunch, @NonNull ImageView ivGameResource, @NonNull TextView moneyText, @NonNull TextView percent, @NonNull LinearLayout progressLayout, @NonNull RelativeLayout progressbarLayout, @NonNull RelativeLayout rlNormalDownload) {
        this.f46424b = rootView;
        this.f46425c = butnProgressBar;
        this.f46426d = butnShowdownload;
        this.f46427e = instalButtomButn;
        this.f46428f = instalbutnLayout;
        this.f46429g = ivCloudLaunch;
        this.f46430h = ivGameResource;
        this.f46431i = moneyText;
        this.f46432j = percent;
        this.f46433k = progressLayout;
        this.f46434l = progressbarLayout;
        this.f46435m = rlNormalDownload;
    }

    @NonNull
    public static vs a(@NonNull LayoutInflater inflater, @NonNull ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.gamedetial_modle_five_fragment1, parent);
        return bind(parent);
    }

    @NonNull
    public static vs bind(@NonNull View rootView) {
        int i10 = R.id.butnProgressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.butnProgressBar);
        if (progressBar != null) {
            i10 = R.id.butn_showdownload;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.butn_showdownload);
            if (imageView != null) {
                i10 = R.id.instalButtomButn;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.instalButtomButn);
                if (textView != null) {
                    i10 = R.id.instalbutnLayout;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.instalbutnLayout);
                    if (constraintLayout != null) {
                        i10 = R.id.iv_cloud_launch;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_cloud_launch);
                        if (imageView2 != null) {
                            i10 = R.id.ivGameResource;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivGameResource);
                            if (imageView3 != null) {
                                i10 = R.id.moneyText;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                if (textView2 != null) {
                                    i10 = R.id.percent;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.percent);
                                    if (textView3 != null) {
                                        i10 = R.id.progress_layout;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.progress_layout);
                                        if (linearLayout != null) {
                                            i10 = R.id.progressbarLayout;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.progressbarLayout);
                                            if (relativeLayout != null) {
                                                i10 = R.id.rlNormalDownload;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlNormalDownload);
                                                if (relativeLayout2 != null) {
                                                    return new vs(rootView, progressBar, imageView, textView, constraintLayout, imageView2, imageView3, textView2, textView3, linearLayout, relativeLayout, relativeLayout2);
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

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f46424b;
    }
}
