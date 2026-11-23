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
public final class pf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f43343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f43344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final kw0 f43345f;

    private pf0(@NonNull LinearLayout rootView, @NonNull LinearLayout container, @NonNull XListView2 fightListView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull kw0 topLay) {
        this.f43341b = rootView;
        this.f43342c = container;
        this.f43343d = fightListView;
        this.f43344e = mPtrFrame;
        this.f43345f = topLay;
    }

    @NonNull
    public static pf0 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.fightListView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.fightListView);
        if (xListView2 != null) {
            i10 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i10 = R.id.top_lay;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.top_lay);
                if (viewFindChildViewById != null) {
                    return new pf0(linearLayout, linearLayout, xListView2, ptrClassicFrameLayout, kw0.bind(viewFindChildViewById));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43341b;
    }

    @NonNull
    public static pf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_fight_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
