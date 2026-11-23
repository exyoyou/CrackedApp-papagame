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
public final class p4 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f43226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f43227d;

    private p4(@NonNull LinearLayout rootView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull XListView2 simulatorListview) {
        this.f43225b = rootView;
        this.f43226c = mPtrFrame;
        this.f43227d = simulatorListview;
    }

    @NonNull
    public static p4 bind(@NonNull View rootView) {
        int i10 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i10 = R.id.simulator_listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.simulator_listview);
            if (xListView2 != null) {
                return new p4((LinearLayout) rootView, ptrClassicFrameLayout, xListView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static p4 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43225b;
    }

    @NonNull
    public static p4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_simulator_area, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
