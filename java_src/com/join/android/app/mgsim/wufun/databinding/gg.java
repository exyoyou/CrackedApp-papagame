package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class gg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38834b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LottieAnimationView f38835c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38836d;

    private gg(@NonNull LinearLayout rootView, @NonNull LottieAnimationView lottie, @NonNull TextView tip) {
        this.f38834b = rootView;
        this.f38835c = lottie;
        this.f38836d = tip;
    }

    @NonNull
    public static gg bind(@NonNull View rootView) {
        int i10 = R.id.lottie;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(rootView, R.id.lottie);
        if (lottieAnimationView != null) {
            i10 = R.id.tip;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
            if (textView != null) {
                return new gg((LinearLayout) rootView, lottieAnimationView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38834b;
    }

    @NonNull
    public static gg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_hm_loading, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
