package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47967c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47968d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47969e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47970f;

    private yv(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView imageAd, @NonNull RelativeLayout itemLayout, @NonNull TextView tvPraise, @NonNull TextView tvTitle) {
        this.f47966b = rootView;
        this.f47967c = imageAd;
        this.f47968d = itemLayout;
        this.f47969e = tvPraise;
        this.f47970f = tvTitle;
    }

    @NonNull
    public static yv bind(@NonNull View rootView) {
        int i10 = R.id.imageAd;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imageAd);
        if (simpleDraweeView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) rootView;
            i10 = R.id.tvPraise;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPraise);
            if (textView != null) {
                i10 = R.id.tvTitle;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                if (textView2 != null) {
                    return new yv(relativeLayout, simpleDraweeView, relativeLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47966b;
    }

    @NonNull
    public static yv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.information_content_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
