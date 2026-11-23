package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44056e;

    private qv0(@NonNull RelativeLayout rootView, @NonNull FrameLayout main, @NonNull TextView skipView, @NonNull ImageView splashHolder) {
        this.f44053b = rootView;
        this.f44054c = main;
        this.f44055d = skipView;
        this.f44056e = splashHolder;
    }

    @NonNull
    public static qv0 bind(@NonNull View rootView) {
        int i10 = R.id.main;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.main);
        if (frameLayout != null) {
            i10 = R.id.skip_view;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.skip_view);
            if (textView != null) {
                i10 = R.id.splash_holder;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.splash_holder);
                if (imageView != null) {
                    return new qv0((RelativeLayout) rootView, frameLayout, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44053b;
    }

    @NonNull
    public static qv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.splash_main_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
