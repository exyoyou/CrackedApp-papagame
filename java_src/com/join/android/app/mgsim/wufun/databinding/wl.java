package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class wl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f46846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46847e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f46848f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f46849g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f46850h;

    private wl(@NonNull RelativeLayout rootView, @NonNull ConstraintLayout clRecentGames, @NonNull ImageView iv1, @NonNull LinearLayout ivNome, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull RecyclerView rvList, @NonNull XQuickRecyclerView xrvList) {
        this.f46844b = rootView;
        this.f46845c = clRecentGames;
        this.f46846d = iv1;
        this.f46847e = ivNome;
        this.f46848f = mPtrFrame;
        this.f46849g = rvList;
        this.f46850h = xrvList;
    }

    @NonNull
    public static wl bind(@NonNull View rootView) {
        int i10 = R.id.cl_recent_games;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_recent_games);
        if (constraintLayout != null) {
            i10 = R.id.iv_1;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
            if (imageView != null) {
                i10 = R.id.iv_nome;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_nome);
                if (linearLayout != null) {
                    i10 = R.id.mPtrFrame;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                    if (ptrClassicFrameLayout != null) {
                        i10 = R.id.rv_list;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list);
                        if (recyclerView != null) {
                            i10 = R.id.xrv_list;
                            XQuickRecyclerView xQuickRecyclerView = (XQuickRecyclerView) ViewBindings.findChildViewById(rootView, R.id.xrv_list);
                            if (xQuickRecyclerView != null) {
                                return new wl((RelativeLayout) rootView, constraintLayout, imageView, linearLayout, ptrClassicFrameLayout, recyclerView, xQuickRecyclerView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46844b;
    }

    @NonNull
    public static wl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_find_mini_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
