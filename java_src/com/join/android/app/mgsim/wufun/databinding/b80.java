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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class b80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36268c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36271f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36272g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36274i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36275j;

    private b80(@NonNull LinearLayout rootView, @NonNull ImageView latestImgLeft, @NonNull ImageView latestImgRight, @NonNull LinearLayout latestLayoutLeft, @NonNull LinearLayout latestLayoutRight, @NonNull TextView latestNameLeft, @NonNull TextView latestNameRight, @NonNull TextView latestTimeLeft, @NonNull TextView latestTimeRight) {
        this.f36267b = rootView;
        this.f36268c = latestImgLeft;
        this.f36269d = latestImgRight;
        this.f36270e = latestLayoutLeft;
        this.f36271f = latestLayoutRight;
        this.f36272g = latestNameLeft;
        this.f36273h = latestNameRight;
        this.f36274i = latestTimeLeft;
        this.f36275j = latestTimeRight;
    }

    @NonNull
    public static b80 bind(@NonNull View rootView) {
        int i10 = R.id.latestImgLeft;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.latestImgLeft);
        if (imageView != null) {
            i10 = R.id.latestImgRight;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.latestImgRight);
            if (imageView2 != null) {
                i10 = R.id.latestLayoutLeft;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.latestLayoutLeft);
                if (linearLayout != null) {
                    i10 = R.id.latestLayoutRight;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.latestLayoutRight);
                    if (linearLayout2 != null) {
                        i10 = R.id.latestNameLeft;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.latestNameLeft);
                        if (textView != null) {
                            i10 = R.id.latestNameRight;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.latestNameRight);
                            if (textView2 != null) {
                                i10 = R.id.latestTimeLeft;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.latestTimeLeft);
                                if (textView3 != null) {
                                    i10 = R.id.latestTimeRight;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.latestTimeRight);
                                    if (textView4 != null) {
                                        return new b80((LinearLayout) rootView, imageView, imageView2, linearLayout, linearLayout2, textView, textView2, textView3, textView4);
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
    public static b80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36267b;
    }

    @NonNull
    public static b80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.latest_game_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
