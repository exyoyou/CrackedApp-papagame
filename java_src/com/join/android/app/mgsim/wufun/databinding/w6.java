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
public final class w6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f46645f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46646g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46647h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46648i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46649j;

    private w6(@NonNull LinearLayout rootView, @NonNull TextView nativeBrandName, @NonNull TextView nativeCta, @NonNull SimpleDraweeView nativeIconImage, @NonNull ImageView nativeMainImage, @NonNull RelativeLayout nativeOuterView, @NonNull TextView nativeText, @NonNull TextView nativeTitle, @NonNull TextView textView26) {
        this.f46641b = rootView;
        this.f46642c = nativeBrandName;
        this.f46643d = nativeCta;
        this.f46644e = nativeIconImage;
        this.f46645f = nativeMainImage;
        this.f46646g = nativeOuterView;
        this.f46647h = nativeText;
        this.f46648i = nativeTitle;
        this.f46649j = textView26;
    }

    @NonNull
    public static w6 bind(@NonNull View rootView) {
        int i10 = R.id.native_brand_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.native_brand_name);
        if (textView != null) {
            i10 = R.id.native_cta;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.native_cta);
            if (textView2 != null) {
                i10 = R.id.native_icon_image;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.native_icon_image);
                if (simpleDraweeView != null) {
                    i10 = R.id.native_main_image;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.native_main_image);
                    if (imageView != null) {
                        i10 = R.id.native_outer_view;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.native_outer_view);
                        if (relativeLayout != null) {
                            i10 = R.id.native_text;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.native_text);
                            if (textView3 != null) {
                                i10 = R.id.native_title;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.native_title);
                                if (textView4 != null) {
                                    i10 = R.id.textView26;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView26);
                                    if (textView5 != null) {
                                        return new w6((LinearLayout) rootView, textView, textView2, simpleDraweeView, imageView, relativeLayout, textView3, textView4, textView5);
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
    public static w6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46641b;
    }

    @NonNull
    public static w6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.baidu_ad_listview_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
