package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LeftGalleryLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class rl0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LeftGalleryLayout f44387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LeftGalleryLayout f44389d;

    private rl0(@NonNull LeftGalleryLayout rootView, @NonNull SimpleDraweeView interstingItemback, @NonNull LeftGalleryLayout rootLay) {
        this.f44387b = rootView;
        this.f44388c = interstingItemback;
        this.f44389d = rootLay;
    }

    @NonNull
    public static rl0 bind(@NonNull View rootView) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.intersting_itemback);
        if (simpleDraweeView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.intersting_itemback)));
        }
        LeftGalleryLayout leftGalleryLayout = (LeftGalleryLayout) rootView;
        return new rl0(leftGalleryLayout, simpleDraweeView, leftGalleryLayout);
    }

    @NonNull
    public static rl0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LeftGalleryLayout getRoot() {
        return this.f44387b;
    }

    @NonNull
    public static rl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapamain_gallery_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
