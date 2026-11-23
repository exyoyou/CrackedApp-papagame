package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ls implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f41516e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41517f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41518g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41519h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f41520i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f41521j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TabLayout f41522k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41523l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ViewPager f41524m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f41525n;

    private ls(@NonNull RelativeLayout rootView, @NonNull ImageView backImg, @NonNull FrameLayout fragment, @NonNull ImageView ivBack, @NonNull ConstraintLayout layoutNew, @NonNull RelativeLayout layoutOld, @NonNull LinearLayout mainContent, @NonNull View mainCover, @NonNull View statuHVIew, @NonNull TabLayout tablayout, @NonNull RelativeLayout titleTransfer, @NonNull ViewPager viewPager, @NonNull ViewPager2 viewpager) {
        this.f41513b = rootView;
        this.f41514c = backImg;
        this.f41515d = fragment;
        this.f41516e = ivBack;
        this.f41517f = layoutNew;
        this.f41518g = layoutOld;
        this.f41519h = mainContent;
        this.f41520i = mainCover;
        this.f41521j = statuHVIew;
        this.f41522k = tablayout;
        this.f41523l = titleTransfer;
        this.f41524m = viewPager;
        this.f41525n = viewpager;
    }

    @NonNull
    public static ls bind(@NonNull View rootView) {
        int i10 = R.id.backImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImg);
        if (imageView != null) {
            i10 = R.id.fragment;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fragment);
            if (frameLayout != null) {
                i10 = R.id.iv_back;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_back);
                if (imageView2 != null) {
                    i10 = R.id.layout_new;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.layout_new);
                    if (constraintLayout != null) {
                        i10 = R.id.layout_old;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout_old);
                        if (relativeLayout != null) {
                            i10 = R.id.main_content;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main_content);
                            if (linearLayout != null) {
                                i10 = R.id.mainCover;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.mainCover);
                                if (viewFindChildViewById != null) {
                                    i10 = R.id.statuHVIew;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.statuHVIew);
                                    if (viewFindChildViewById2 != null) {
                                        i10 = R.id.tablayout;
                                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tablayout);
                                        if (tabLayout != null) {
                                            i10 = R.id.titleTransfer;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.titleTransfer);
                                            if (relativeLayout2 != null) {
                                                i10 = R.id.viewPager;
                                                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                                if (viewPager != null) {
                                                    i10 = R.id.viewpager;
                                                    ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                                                    if (viewPager2 != null) {
                                                        return new ls((RelativeLayout) rootView, imageView, frameLayout, imageView2, constraintLayout, relativeLayout, linearLayout, viewFindChildViewById, viewFindChildViewById2, tabLayout, relativeLayout2, viewPager, viewPager2);
                                                    }
                                                }
                                            }
                                        }
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
    public static ls inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41513b;
    }

    @NonNull
    public static ls inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_video_main_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
