package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43767e;

    private qd(@NonNull RelativeLayout rootView, @NonNull RelativeLayout detialSearchLayout, @NonNull ImageView searchDetialBack, @NonNull ImageView searchDetialImage) {
        this.f43764b = rootView;
        this.f43765c = detialSearchLayout;
        this.f43766d = searchDetialBack;
        this.f43767e = searchDetialImage;
    }

    @NonNull
    public static qd bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i10 = R.id.search_detial_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search_detial_back);
        if (imageView != null) {
            i10 = R.id.search_detial_image;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search_detial_image);
            if (imageView2 != null) {
                return new qd(relativeLayout, relativeLayout, imageView, imageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43764b;
    }

    @NonNull
    public static qd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_search_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
