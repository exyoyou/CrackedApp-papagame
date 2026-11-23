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
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class wn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f46873d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f46874e;

    private wn(@NonNull RelativeLayout rootView, @NonNull RelativeLayout gameOnlineFirstLayout, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull XListView2 rankListView) {
        this.f46871b = rootView;
        this.f46872c = gameOnlineFirstLayout;
        this.f46873d = mPtrFrame;
        this.f46874e = rankListView;
    }

    @NonNull
    public static wn bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i10 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i10 = R.id.rankListView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.rankListView);
            if (xListView2 != null) {
                return new wn(relativeLayout, relativeLayout, ptrClassicFrameLayout, xListView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46871b;
    }

    @NonNull
    public static wn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_olopen_test, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
