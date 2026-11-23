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
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class md implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f41846c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f41847d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final hw0 f41848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f41849f;

    private md(@NonNull LinearLayout rootView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull XListView2 rankListView, @NonNull hw0 titleBarLayout, @NonNull View viewBg) {
        this.f41845b = rootView;
        this.f41846c = mPtrFrame;
        this.f41847d = rankListView;
        this.f41848e = titleBarLayout;
        this.f41849f = viewBg;
    }

    @NonNull
    public static md bind(@NonNull View rootView) {
        int i10 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i10 = R.id.rankListView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.rankListView);
            if (xListView2 != null) {
                i10 = R.id.title_bar_layout;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                if (viewFindChildViewById != null) {
                    hw0 hw0VarBind = hw0.bind(viewFindChildViewById);
                    i10 = R.id.viewBg;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.viewBg);
                    if (viewFindChildViewById2 != null) {
                        return new md((LinearLayout) rootView, ptrClassicFrameLayout, xListView2, hw0VarBind, viewFindChildViewById2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static md inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41845b;
    }

    @NonNull
    public static md inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_more_imformation_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
