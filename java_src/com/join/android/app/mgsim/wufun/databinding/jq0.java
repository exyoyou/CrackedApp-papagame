package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40366f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40367g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40368h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40369i;

    private jq0(@NonNull LinearLayout rootView, @NonNull LinearLayout goLive, @NonNull ImageView imageView34, @NonNull SimpleDraweeView picImage, @NonNull TextView subtitle, @NonNull TextView textView64, @NonNull TextView title, @NonNull LinearLayout tvLiveListLayout) {
        this.f40362b = rootView;
        this.f40363c = goLive;
        this.f40364d = imageView34;
        this.f40365e = picImage;
        this.f40366f = subtitle;
        this.f40367g = textView64;
        this.f40368h = title;
        this.f40369i = tvLiveListLayout;
    }

    @NonNull
    public static jq0 bind(@NonNull View rootView) {
        int i10 = R.id.goLive;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.goLive);
        if (linearLayout != null) {
            i10 = R.id.imageView34;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView34);
            if (imageView != null) {
                i10 = R.id.picImage;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.picImage);
                if (simpleDraweeView != null) {
                    i10 = R.id.subtitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.subtitle);
                    if (textView != null) {
                        i10 = R.id.textView64;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView64);
                        if (textView2 != null) {
                            i10 = R.id.title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                            if (textView3 != null) {
                                i10 = R.id.tvLiveListLayout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tvLiveListLayout);
                                if (linearLayout2 != null) {
                                    return new jq0((LinearLayout) rootView, linearLayout, imageView, simpleDraweeView, textView, textView2, textView3, linearLayout2);
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
    public static jq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40362b;
    }

    @NonNull
    public static jq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_live_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
