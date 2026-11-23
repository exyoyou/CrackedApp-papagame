package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class bi0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f36400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f36401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f36402e;

    private bi0(@NonNull LinearLayout rootView, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull XListView2 mgForumProfileCommentList) {
        this.f36399b = rootView;
        this.f36400c = loadingView;
        this.f36401d = mPtrFrame;
        this.f36402e = mgForumProfileCommentList;
    }

    @NonNull
    public static bi0 bind(@NonNull View rootView) {
        int i10 = R.id.loadingView;
        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
        if (forumLoadingView != null) {
            i10 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i10 = R.id.mg_forum_profile_comment_list;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.mg_forum_profile_comment_list);
                if (xListView2 != null) {
                    return new bi0((LinearLayout) rootView, forumLoadingView, ptrClassicFrameLayout, xListView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bi0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36399b;
    }

    @NonNull
    public static bi0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_profile_comment_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
