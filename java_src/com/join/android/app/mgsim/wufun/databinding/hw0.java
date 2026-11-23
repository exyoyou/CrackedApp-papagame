package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;

/* JADX INFO: loaded from: classes4.dex */
public final class hw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f39526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39528f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39529g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39530h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final CustomerDownloadView f39531i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f39532j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f39533k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f39534l;

    private hw0(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull ImageView comment, @NonNull RelativeLayout commentParent, @NonNull TextView roundMessage, @NonNull ImageView share, @NonNull RelativeLayout titleBarLayout, @NonNull CustomerDownloadView titleNormalDownloadCdv, @NonNull ImageView titleNormalSearchImg, @NonNull TextView titleTextview, @NonNull View topBarline) {
        this.f39524b = rootView;
        this.f39525c = backImage;
        this.f39526d = comment;
        this.f39527e = commentParent;
        this.f39528f = roundMessage;
        this.f39529g = share;
        this.f39530h = titleBarLayout;
        this.f39531i = titleNormalDownloadCdv;
        this.f39532j = titleNormalSearchImg;
        this.f39533k = titleTextview;
        this.f39534l = topBarline;
    }

    @NonNull
    public static hw0 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.comment;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.comment);
            if (imageView2 != null) {
                i10 = R.id.commentParent;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.commentParent);
                if (relativeLayout != null) {
                    i10 = R.id.roundMessage;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.roundMessage);
                    if (textView != null) {
                        i10 = R.id.share;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.share);
                        if (imageView3 != null) {
                            RelativeLayout relativeLayout2 = (RelativeLayout) rootView;
                            i10 = R.id.title_normal_download_cdv;
                            CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(rootView, R.id.title_normal_download_cdv);
                            if (customerDownloadView != null) {
                                i10 = R.id.title_normal_search_img;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title_normal_search_img);
                                if (imageView4 != null) {
                                    i10 = R.id.title_textview;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                    if (textView2 != null) {
                                        i10 = R.id.topBarline;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.topBarline);
                                        if (viewFindChildViewById != null) {
                                            return new hw0(relativeLayout2, imageView, imageView2, relativeLayout, textView, imageView3, relativeLayout2, customerDownloadView, imageView4, textView2, viewFindChildViewById);
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
    public static hw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39524b;
    }

    @NonNull
    public static hw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.topbar_left_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
