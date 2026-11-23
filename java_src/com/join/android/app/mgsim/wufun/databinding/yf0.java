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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabForumLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class yf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f47702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f47703d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f47704e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f47705f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f47706g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47707h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f47708i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SlidingTabForumLayout f47709j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final FrameLayout f47710k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final cx0 f47711l;

    private yf0(@NonNull LinearLayout rootView, @NonNull bj0 actionbarLayout, @NonNull View bottom, @NonNull XListView2 listView, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull RelativeLayout refresh, @NonNull ImageView refreshImg, @NonNull SlidingTabForumLayout tabHover, @NonNull FrameLayout videoContainer, @NonNull cx0 videoLayout) {
        this.f47701b = rootView;
        this.f47702c = actionbarLayout;
        this.f47703d = bottom;
        this.f47704e = listView;
        this.f47705f = loadingView;
        this.f47706g = mPtrFrame;
        this.f47707h = refresh;
        this.f47708i = refreshImg;
        this.f47709j = tabHover;
        this.f47710k = videoContainer;
        this.f47711l = videoLayout;
    }

    @NonNull
    public static yf0 bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.bottom;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.bottom);
            if (viewFindChildViewById2 != null) {
                i10 = R.id.listView;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listView);
                if (xListView2 != null) {
                    i10 = R.id.loadingView;
                    ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                    if (forumLoadingView != null) {
                        i10 = R.id.mPtrFrame;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                        if (ptrClassicFrameLayout != null) {
                            i10 = R.id.refresh;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.refresh);
                            if (relativeLayout != null) {
                                i10 = R.id.refreshImg;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.refreshImg);
                                if (imageView != null) {
                                    i10 = R.id.tabHover;
                                    SlidingTabForumLayout slidingTabForumLayout = (SlidingTabForumLayout) ViewBindings.findChildViewById(rootView, R.id.tabHover);
                                    if (slidingTabForumLayout != null) {
                                        i10 = R.id.videoContainer;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContainer);
                                        if (frameLayout != null) {
                                            i10 = R.id.videoLayout;
                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.videoLayout);
                                            if (viewFindChildViewById3 != null) {
                                                return new yf0((LinearLayout) rootView, bj0VarBind, viewFindChildViewById2, xListView2, forumLoadingView, ptrClassicFrameLayout, relativeLayout, imageView, slidingTabForumLayout, frameLayout, cx0.bind(viewFindChildViewById3));
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
    public static yf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47701b;
    }

    @NonNull
    public static yf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_activity2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
