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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class up implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f45795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f45796f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45797g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45798h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45799i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45800j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45801k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f45802l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f45803m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45804n;

    private up(@NonNull LinearLayout rootView, @NonNull RelativeLayout forumPostMediaContainer, @NonNull LinearLayout forumPostMediaPicMain, @NonNull ImageView imageView16, @NonNull ImageView imageView17, @NonNull TextView imagesCount, @NonNull SimpleDraweeView imgM1, @NonNull SimpleDraweeView imgM2, @NonNull SimpleDraweeView imgM3, @NonNull TextView pubtime, @NonNull TextView pv, @NonNull TextView uv, @NonNull LinearLayout viewBottom) {
        this.f45792b = rootView;
        this.f45793c = forumPostMediaContainer;
        this.f45794d = forumPostMediaPicMain;
        this.f45795e = imageView16;
        this.f45796f = imageView17;
        this.f45797g = imagesCount;
        this.f45798h = imgM1;
        this.f45799i = imgM2;
        this.f45800j = imgM3;
        this.f45801k = pubtime;
        this.f45802l = pv;
        this.f45803m = uv;
        this.f45804n = viewBottom;
    }

    @NonNull
    public static up bind(@NonNull View rootView) {
        int i10 = R.id.forum_post_media_container;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_media_container);
        if (relativeLayout != null) {
            i10 = R.id.forum_post_media_pic_main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_media_pic_main);
            if (linearLayout != null) {
                i10 = R.id.imageView16;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView16);
                if (imageView != null) {
                    i10 = R.id.imageView17;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView17);
                    if (imageView2 != null) {
                        i10 = R.id.images_count;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.images_count);
                        if (textView != null) {
                            i10 = R.id.img_m_1;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_m_1);
                            if (simpleDraweeView != null) {
                                i10 = R.id.img_m_2;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_m_2);
                                if (simpleDraweeView2 != null) {
                                    i10 = R.id.img_m_3;
                                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_m_3);
                                    if (simpleDraweeView3 != null) {
                                        i10 = R.id.pubtime;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pubtime);
                                        if (textView2 != null) {
                                            i10 = R.id.pv;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pv);
                                            if (textView3 != null) {
                                                i10 = R.id.uv;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.uv);
                                                if (textView4 != null) {
                                                    i10 = R.id.viewBottom;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.viewBottom);
                                                    if (linearLayout2 != null) {
                                                        return new up((LinearLayout) rootView, relativeLayout, linearLayout, imageView, imageView2, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, textView2, textView3, textView4, linearLayout2);
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
    public static up inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45792b;
    }

    @NonNull
    public static up inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detial_strainfmore_itemimage3, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
