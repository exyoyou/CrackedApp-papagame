package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f48326c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f48328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48329f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f48330g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f48331h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f48332i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f48333j;

    private zn0(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull ImageView communtMessage, @NonNull ImageView communtUser, @NonNull LinearLayout layoutShare, @NonNull ImageView searchImage, @NonNull TextView shareTextview, @NonNull ImageView shoubing, @NonNull TextView titleTextview) {
        this.f48325b = rootView;
        this.f48326c = backImage;
        this.f48327d = communtMessage;
        this.f48328e = communtUser;
        this.f48329f = layoutShare;
        this.f48330g = searchImage;
        this.f48331h = shareTextview;
        this.f48332i = shoubing;
        this.f48333j = titleTextview;
    }

    @NonNull
    public static zn0 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.communt_message;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.communt_message);
            if (imageView2 != null) {
                i10 = R.id.communt_user;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.communt_user);
                if (imageView3 != null) {
                    i10 = R.id.layout_share;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_share);
                    if (linearLayout != null) {
                        i10 = R.id.searchImage;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.searchImage);
                        if (imageView4 != null) {
                            i10 = R.id.share_textview;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.share_textview);
                            if (textView != null) {
                                i10 = R.id.shoubing;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.shoubing);
                                if (imageView5 != null) {
                                    i10 = R.id.title_textview;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                    if (textView2 != null) {
                                        return new zn0((RelativeLayout) rootView, imageView, imageView2, imageView3, linearLayout, imageView4, textView, imageView5, textView2);
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
    public static zn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48325b;
    }

    @NonNull
    public static zn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mygame_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
