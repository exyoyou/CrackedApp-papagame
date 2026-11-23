package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ci0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f36936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f36937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f36938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f36939f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f36940g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final FrameLayout f36941h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final cx0 f36942i;

    private ci0(@NonNull LinearLayout rootView, @NonNull bj0 actionbarLayout, @NonNull View bottom, @NonNull XListView2 forumPostsList, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull FrameLayout videoContainer, @NonNull cx0 videoLayout) {
        this.f36935b = rootView;
        this.f36936c = actionbarLayout;
        this.f36937d = bottom;
        this.f36938e = forumPostsList;
        this.f36939f = loadingView;
        this.f36940g = mPtrFrame;
        this.f36941h = videoContainer;
        this.f36942i = videoLayout;
    }

    @NonNull
    public static ci0 bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.bottom;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.bottom);
            if (viewFindChildViewById2 != null) {
                i10 = R.id.forum_posts_list;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.forum_posts_list);
                if (xListView2 != null) {
                    i10 = R.id.loadingView;
                    ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                    if (forumLoadingView != null) {
                        i10 = R.id.mPtrFrame;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                        if (ptrClassicFrameLayout != null) {
                            i10 = R.id.videoContainer;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContainer);
                            if (frameLayout != null) {
                                i10 = R.id.videoLayout;
                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.videoLayout);
                                if (viewFindChildViewById3 != null) {
                                    return new ci0((LinearLayout) rootView, bj0VarBind, viewFindChildViewById2, xListView2, forumLoadingView, ptrClassicFrameLayout, frameLayout, cx0.bind(viewFindChildViewById3));
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
    public static ci0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36935b;
    }

    @NonNull
    public static ci0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_profile_favorites_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
