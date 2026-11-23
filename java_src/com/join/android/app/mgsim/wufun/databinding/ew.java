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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ew implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38128d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38129e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38130f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38131g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38132h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38133i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38134j;

    private ew(@NonNull LinearLayout rootView, @NonNull ProgressBar butnProgressBar, @NonNull ImageView butnShowdownload, @NonNull TextView instalButtomButn, @NonNull RelativeLayout instalbutnLayout, @NonNull TextView moneyText, @NonNull TextView percent, @NonNull LinearLayout progressLayout, @NonNull RelativeLayout progressbarLayout) {
        this.f38126b = rootView;
        this.f38127c = butnProgressBar;
        this.f38128d = butnShowdownload;
        this.f38129e = instalButtomButn;
        this.f38130f = instalbutnLayout;
        this.f38131g = moneyText;
        this.f38132h = percent;
        this.f38133i = progressLayout;
        this.f38134j = progressbarLayout;
    }

    @NonNull
    public static ew bind(@NonNull View rootView) {
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
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.instalbutnLayout);
                    if (relativeLayout != null) {
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
                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.progressbarLayout);
                                    if (relativeLayout2 != null) {
                                        return new ew((LinearLayout) rootView, progressBar, imageView, textView, relativeLayout, textView2, textView3, linearLayout, relativeLayout2);
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
    public static ew inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38126b;
    }

    @NonNull
    public static ew inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.install_button_big_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
