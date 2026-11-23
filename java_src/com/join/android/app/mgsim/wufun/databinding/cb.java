package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public final class cb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f36833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36835e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36836f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36837g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final Button f36838h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36839i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f36840j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36841k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36842l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36843m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f36844n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f36845o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f36846p;

    private cb(@NonNull RelativeLayout rootView, @NonNull ProgressBar butnProgressBar, @NonNull ImageView butnShowdownload, @NonNull LinearLayout detialDownBottom, @NonNull SimpleDraweeView imgBackground, @NonNull SimpleDraweeView imgIcon, @NonNull Button instalButtomButn, @NonNull LinearLayout instalbutnLayout, @NonNull ImageView loveButn, @NonNull TextView percent, @NonNull LinearLayout progressLayout, @NonNull RelativeLayout progressbarLayout, @NonNull ImageView shareButn, @NonNull TextView tvGameDes, @NonNull TextView tvGameTitle) {
        this.f36832b = rootView;
        this.f36833c = butnProgressBar;
        this.f36834d = butnShowdownload;
        this.f36835e = detialDownBottom;
        this.f36836f = imgBackground;
        this.f36837g = imgIcon;
        this.f36838h = instalButtomButn;
        this.f36839i = instalbutnLayout;
        this.f36840j = loveButn;
        this.f36841k = percent;
        this.f36842l = progressLayout;
        this.f36843m = progressbarLayout;
        this.f36844n = shareButn;
        this.f36845o = tvGameDes;
        this.f36846p = tvGameTitle;
    }

    @NonNull
    public static cb bind(@NonNull View rootView) {
        int i10 = R.id.butnProgressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.butnProgressBar);
        if (progressBar != null) {
            i10 = R.id.butn_showdownload;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.butn_showdownload);
            if (imageView != null) {
                i10 = R.id.detialDownBottom;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.detialDownBottom);
                if (linearLayout != null) {
                    i10 = R.id.imgBackground;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imgBackground);
                    if (simpleDraweeView != null) {
                        i10 = R.id.imgIcon;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imgIcon);
                        if (simpleDraweeView2 != null) {
                            i10 = R.id.instalButtomButn;
                            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.instalButtomButn);
                            if (button != null) {
                                i10 = R.id.instalbutnLayout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.instalbutnLayout);
                                if (linearLayout2 != null) {
                                    i10 = R.id.loveButn;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.loveButn);
                                    if (imageView2 != null) {
                                        i10 = R.id.percent;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.percent);
                                        if (textView != null) {
                                            i10 = R.id.progress_layout;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.progress_layout);
                                            if (linearLayout3 != null) {
                                                i10 = R.id.progressbarLayout;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.progressbarLayout);
                                                if (relativeLayout != null) {
                                                    i10 = R.id.shareButn;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.shareButn);
                                                    if (imageView3 != null) {
                                                        i10 = R.id.tvGameDes;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameDes);
                                                        if (textView2 != null) {
                                                            i10 = R.id.tvGameTitle;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameTitle);
                                                            if (textView3 != null) {
                                                                return new cb((RelativeLayout) rootView, progressBar, imageView, linearLayout, simpleDraweeView, simpleDraweeView2, button, linearLayout2, imageView2, textView, linearLayout3, relativeLayout, imageView3, textView2, textView3);
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
    public static cb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36832b;
    }

    @NonNull
    public static cb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.collection_three_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
