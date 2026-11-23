package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ew0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout f38136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38139f;

    private ew0(@NonNull RelativeLayout rootView, @NonNull SlidingTabLayout mSlidingTabLayout, @NonNull LinearLayout searchImage, @NonNull ImageView titleNormalDownloadImg, @NonNull ImageView titleNormalSearchImg) {
        this.f38135b = rootView;
        this.f38136c = mSlidingTabLayout;
        this.f38137d = searchImage;
        this.f38138e = titleNormalDownloadImg;
        this.f38139f = titleNormalSearchImg;
    }

    @NonNull
    public static ew0 bind(@NonNull View rootView) {
        int i10 = R.id.mSlidingTabLayout;
        SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(rootView, R.id.mSlidingTabLayout);
        if (slidingTabLayout != null) {
            i10 = R.id.searchImage;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.searchImage);
            if (linearLayout != null) {
                i10 = R.id.title_normal_download_img;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title_normal_download_img);
                if (imageView != null) {
                    i10 = R.id.title_normal_search_img;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title_normal_search_img);
                    if (imageView2 != null) {
                        return new ew0((RelativeLayout) rootView, slidingTabLayout, linearLayout, imageView, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ew0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38135b;
    }

    @NonNull
    public static ew0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.topbar_fight_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
