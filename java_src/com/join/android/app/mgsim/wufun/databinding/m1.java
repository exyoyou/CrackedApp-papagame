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
import com.join.mgps.customview.XExpandableListView;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class m1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f41666c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XExpandableListView f41667d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f41668e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f41669f;

    private m1(@NonNull LinearLayout rootView, @NonNull bj0 actionBar, @NonNull XExpandableListView expandableListView, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame) {
        this.f41665b = rootView;
        this.f41666c = actionBar;
        this.f41667d = expandableListView;
        this.f41668e = loadingView;
        this.f41669f = mPtrFrame;
    }

    @NonNull
    public static m1 bind(@NonNull View rootView) {
        int i10 = R.id.actionBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionBar);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.expandableListView;
            XExpandableListView xExpandableListView = (XExpandableListView) ViewBindings.findChildViewById(rootView, R.id.expandableListView);
            if (xExpandableListView != null) {
                i10 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                if (forumLoadingView != null) {
                    i10 = R.id.mPtrFrame;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                    if (ptrClassicFrameLayout != null) {
                        return new m1((LinearLayout) rootView, bj0VarBind, xExpandableListView, forumLoadingView, ptrClassicFrameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static m1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41665b;
    }

    @NonNull
    public static m1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_forum_my, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
