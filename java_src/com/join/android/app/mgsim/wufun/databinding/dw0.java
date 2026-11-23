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
public final class dw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f37655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37656e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37657f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f37658g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37659h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final CustomerDownloadView f37660i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f37661j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37662k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f37663l;

    private dw0(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull ImageView comment, @NonNull RelativeLayout commentParent, @NonNull TextView roundMessage, @NonNull ImageView share, @NonNull RelativeLayout titleBarLayout, @NonNull CustomerDownloadView titleNormalDownloadCdv, @NonNull ImageView titleNormalSearchImg, @NonNull TextView titleTextview, @NonNull View topBarline) {
        this.f37653b = rootView;
        this.f37654c = backImage;
        this.f37655d = comment;
        this.f37656e = commentParent;
        this.f37657f = roundMessage;
        this.f37658g = share;
        this.f37659h = titleBarLayout;
        this.f37660i = titleNormalDownloadCdv;
        this.f37661j = titleNormalSearchImg;
        this.f37662k = titleTextview;
        this.f37663l = topBarline;
    }

    @NonNull
    public static dw0 bind(@NonNull View rootView) {
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
                                            return new dw0(relativeLayout2, imageView, imageView2, relativeLayout, textView, imageView3, relativeLayout2, customerDownloadView, imageView4, textView2, viewFindChildViewById);
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
    public static dw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37653b;
    }

    @NonNull
    public static dw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.topbar_center_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
