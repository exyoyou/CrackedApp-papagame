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
public final class ak0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35877e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35878f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35879g;

    private ak0(@NonNull LinearLayout rootView, @NonNull ImageView arrowImage, @NonNull TextView giftsCount, @NonNull SimpleDraweeView giftsImage, @NonNull RelativeLayout giftsLayout, @NonNull TextView giftsTitle) {
        this.f35874b = rootView;
        this.f35875c = arrowImage;
        this.f35876d = giftsCount;
        this.f35877e = giftsImage;
        this.f35878f = giftsLayout;
        this.f35879g = giftsTitle;
    }

    @NonNull
    public static ak0 bind(@NonNull View rootView) {
        int i10 = R.id.arrowImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrowImage);
        if (imageView != null) {
            i10 = R.id.giftsCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftsCount);
            if (textView != null) {
                i10 = R.id.giftsImage;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.giftsImage);
                if (simpleDraweeView != null) {
                    i10 = R.id.giftsLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.giftsLayout);
                    if (relativeLayout != null) {
                        i10 = R.id.giftsTitle;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftsTitle);
                        if (textView2 != null) {
                            return new ak0((LinearLayout) rootView, imageView, textView, simpleDraweeView, relativeLayout, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ak0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35874b;
    }

    @NonNull
    public static ak0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_gifts, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
