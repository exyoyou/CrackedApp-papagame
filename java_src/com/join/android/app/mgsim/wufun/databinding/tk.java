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
import com.join.mgps.customview.HtmlTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class tk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f45299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f45300f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45301g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45302h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f45303i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45304j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f45305k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final Button f45306l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f45307m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f45308n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45309o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45310p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final HtmlTextView f45311q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f45312r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f45313s;

    private tk(@NonNull RelativeLayout rootView, @NonNull RelativeLayout boxCard, @NonNull LinearLayout boxTitle, @NonNull ProgressBar butnProgressBar, @NonNull ImageView butnShowdownload, @NonNull TextView dateTag, @NonNull LinearLayout detialDownBottom, @NonNull ImageView imageBottomEdge, @NonNull SimpleDraweeView imageCover, @NonNull ImageView imageTag, @NonNull Button instalButtomButn, @NonNull TextView moneyText, @NonNull TextView percent, @NonNull LinearLayout progressLayout, @NonNull RelativeLayout progressbarLayout, @NonNull HtmlTextView textDigest, @NonNull TextView textSubtitle, @NonNull TextView textTitle) {
        this.f45296b = rootView;
        this.f45297c = boxCard;
        this.f45298d = boxTitle;
        this.f45299e = butnProgressBar;
        this.f45300f = butnShowdownload;
        this.f45301g = dateTag;
        this.f45302h = detialDownBottom;
        this.f45303i = imageBottomEdge;
        this.f45304j = imageCover;
        this.f45305k = imageTag;
        this.f45306l = instalButtomButn;
        this.f45307m = moneyText;
        this.f45308n = percent;
        this.f45309o = progressLayout;
        this.f45310p = progressbarLayout;
        this.f45311q = textDigest;
        this.f45312r = textSubtitle;
        this.f45313s = textTitle;
    }

    @NonNull
    public static tk bind(@NonNull View rootView) {
        int i10 = R.id.box_card;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.box_card);
        if (relativeLayout != null) {
            i10 = R.id.box_title;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.box_title);
            if (linearLayout != null) {
                i10 = R.id.butnProgressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.butnProgressBar);
                if (progressBar != null) {
                    i10 = R.id.butn_showdownload;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.butn_showdownload);
                    if (imageView != null) {
                        i10 = R.id.date_tag;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.date_tag);
                        if (textView != null) {
                            i10 = R.id.detialDownBottom;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.detialDownBottom);
                            if (linearLayout2 != null) {
                                i10 = R.id.image_bottom_edge;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.image_bottom_edge);
                                if (imageView2 != null) {
                                    i10 = R.id.image_cover;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.image_cover);
                                    if (simpleDraweeView != null) {
                                        i10 = R.id.image_tag;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.image_tag);
                                        if (imageView3 != null) {
                                            i10 = R.id.instalButtomButn;
                                            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.instalButtomButn);
                                            if (button != null) {
                                                i10 = R.id.moneyText;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                                if (textView2 != null) {
                                                    i10 = R.id.percent;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.percent);
                                                    if (textView3 != null) {
                                                        i10 = R.id.progress_layout;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.progress_layout);
                                                        if (linearLayout3 != null) {
                                                            i10 = R.id.progressbarLayout;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.progressbarLayout);
                                                            if (relativeLayout2 != null) {
                                                                i10 = R.id.text_digest;
                                                                HtmlTextView htmlTextView = (HtmlTextView) ViewBindings.findChildViewById(rootView, R.id.text_digest);
                                                                if (htmlTextView != null) {
                                                                    i10 = R.id.text_subtitle;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_subtitle);
                                                                    if (textView4 != null) {
                                                                        i10 = R.id.text_title;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_title);
                                                                        if (textView5 != null) {
                                                                            return new tk((RelativeLayout) rootView, relativeLayout, linearLayout, progressBar, imageView, textView, linearLayout2, imageView2, simpleDraweeView, imageView3, button, textView2, textView3, linearLayout3, relativeLayout2, htmlTextView, textView4, textView5);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45296b;
    }

    @NonNull
    public static tk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_card, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
