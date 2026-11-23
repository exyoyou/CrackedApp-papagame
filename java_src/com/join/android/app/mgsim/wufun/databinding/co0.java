package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class co0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f37018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f37019c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f37020d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f37021e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37022f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f37023g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final FrameLayout f37024h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37025i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37026j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37027k;

    private co0(@NonNull FrameLayout rootView, @NonNull FrameLayout customContainer, @NonNull ImageView img1, @NonNull ImageView img2, @NonNull ImageView img3, @NonNull ImageView imgPoster, @NonNull FrameLayout mediaLayout, @NonNull LinearLayout native3imgAdContainer, @NonNull TextView textDesc, @NonNull TextView textTitle) {
        this.f37018b = rootView;
        this.f37019c = customContainer;
        this.f37020d = img1;
        this.f37021e = img2;
        this.f37022f = img3;
        this.f37023g = imgPoster;
        this.f37024h = mediaLayout;
        this.f37025i = native3imgAdContainer;
        this.f37026j = textDesc;
        this.f37027k = textTitle;
    }

    @NonNull
    public static co0 bind(@NonNull View rootView) {
        int i10 = R.id.custom_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.custom_container);
        if (frameLayout != null) {
            i10 = R.id.img_1;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_1);
            if (imageView != null) {
                i10 = R.id.img_2;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_2);
                if (imageView2 != null) {
                    i10 = R.id.img_3;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_3);
                    if (imageView3 != null) {
                        i10 = R.id.img_poster;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_poster);
                        if (imageView4 != null) {
                            i10 = R.id.media_layout;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.media_layout);
                            if (frameLayout2 != null) {
                                i10 = R.id.native_3img_ad_container;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.native_3img_ad_container);
                                if (linearLayout != null) {
                                    i10 = R.id.text_desc;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_desc);
                                    if (textView != null) {
                                        i10 = R.id.text_title;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_title);
                                        if (textView2 != null) {
                                            return new co0((FrameLayout) rootView, frameLayout, imageView, imageView2, imageView3, imageView4, frameLayout2, linearLayout, textView, textView2);
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
    public static co0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f37018b;
    }

    @NonNull
    public static co0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.native_ad_item_exit, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
