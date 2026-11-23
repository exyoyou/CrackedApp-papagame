package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ji implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FrameLayout f40260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40261f;

    private ji(@NonNull RelativeLayout rootView, @NonNull ImageView btnBack, @NonNull ImageView downloadBg, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout layoutBack) {
        this.f40257b = rootView;
        this.f40258c = btnBack;
        this.f40259d = downloadBg;
        this.f40260e = frameLayout;
        this.f40261f = layoutBack;
    }

    @NonNull
    public static ji bind(@NonNull View rootView) {
        int i10 = R.id.btnBack;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.btnBack);
        if (imageView != null) {
            i10 = R.id.download_bg;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.download_bg);
            if (imageView2 != null) {
                i10 = R.id.frameLayout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.frameLayout);
                if (frameLayout != null) {
                    i10 = R.id.layoutBack;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layoutBack);
                    if (relativeLayout != null) {
                        return new ji((RelativeLayout) rootView, imageView, imageView2, frameLayout, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ji inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40257b;
    }

    @NonNull
    public static ji inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.discover_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
