package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class zj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final mj f48261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f48262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ke0 f48263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f48264f;

    private zj(@NonNull ConstraintLayout rootView, @NonNull mj failedLayoutMain, @NonNull PtrClassicFrameLayout llMain, @NonNull ke0 loadingLayoutMain, @NonNull XRecyclerView recycleView) {
        this.f48260b = rootView;
        this.f48261c = failedLayoutMain;
        this.f48262d = llMain;
        this.f48263e = loadingLayoutMain;
        this.f48264f = recycleView;
    }

    @NonNull
    public static zj bind(@NonNull View rootView) {
        int i10 = R.id.failedLayoutMain;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.failedLayoutMain);
        if (viewFindChildViewById != null) {
            mj mjVarBind = mj.bind(viewFindChildViewById);
            i10 = R.id.ll_main;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.ll_main);
            if (ptrClassicFrameLayout != null) {
                i10 = R.id.loadingLayoutMain;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.loadingLayoutMain);
                if (viewFindChildViewById2 != null) {
                    ke0 ke0VarBind = ke0.bind(viewFindChildViewById2);
                    i10 = R.id.recycleView;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recycleView);
                    if (xRecyclerView != null) {
                        return new zj((ConstraintLayout) rootView, mjVarBind, ptrClassicFrameLayout, ke0VarBind, xRecyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48260b;
    }

    @NonNull
    public static zj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.findgame_allfragemnt_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
