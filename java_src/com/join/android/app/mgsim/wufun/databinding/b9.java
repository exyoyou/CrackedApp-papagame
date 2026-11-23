package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class b9 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f36277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f36278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f36279e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36280f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36281g;

    private b9(@NonNull LinearLayout rootView, @NonNull ForumLoadingView loadingView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull XRecyclerView recyclerView, @NonNull TextView searchBack, @NonNull RelativeLayout title) {
        this.f36276b = rootView;
        this.f36277c = loadingView;
        this.f36278d = mPtrFrame;
        this.f36279e = recyclerView;
        this.f36280f = searchBack;
        this.f36281g = title;
    }

    @NonNull
    public static b9 bind(@NonNull View rootView) {
        int i10 = R.id.loadingView;
        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
        if (forumLoadingView != null) {
            i10 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i10 = R.id.recyclerView;
                XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                if (xRecyclerView != null) {
                    i10 = R.id.searchBack;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.searchBack);
                    if (textView != null) {
                        i10 = R.id.title;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (relativeLayout != null) {
                            return new b9((LinearLayout) rootView, forumLoadingView, ptrClassicFrameLayout, xRecyclerView, textView, relativeLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static b9 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36276b;
    }

    @NonNull
    public static b9 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.choice_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
