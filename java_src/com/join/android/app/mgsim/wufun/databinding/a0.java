package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class a0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f35550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f35551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f35552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f35553f;

    private a0(@NonNull RelativeLayout rootView, @NonNull bj0 actionbarLayout, @NonNull XListView2 listview, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame) {
        this.f35549b = rootView;
        this.f35550c = actionbarLayout;
        this.f35551d = listview;
        this.f35552e = loadingView;
        this.f35553f = mPtrFrame;
    }

    @NonNull
    public static a0 bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listview);
            if (xListView2 != null) {
                i10 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                if (forumLoadingView != null) {
                    i10 = R.id.mPtrFrame;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                    if (ptrClassicFrameLayout != null) {
                        return new a0((RelativeLayout) rootView, bj0VarBind, xListView2, forumLoadingView, ptrClassicFrameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static a0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35549b;
    }

    @NonNull
    public static a0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_comment_self_list_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
