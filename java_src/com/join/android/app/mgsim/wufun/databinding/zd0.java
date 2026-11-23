package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class zd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f48190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f48192e;

    private zd0(@NonNull RelativeLayout rootView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull TextView nodata, @NonNull XListView2 rankListView) {
        this.f48189b = rootView;
        this.f48190c = mPtrFrame;
        this.f48191d = nodata;
        this.f48192e = rankListView;
    }

    @NonNull
    public static zd0 bind(@NonNull View rootView) {
        int i10 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i10 = R.id.nodata;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.nodata);
            if (textView != null) {
                i10 = R.id.rankListView;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.rankListView);
                if (xListView2 != null) {
                    return new zd0((RelativeLayout) rootView, ptrClassicFrameLayout, textView, xListView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48189b;
    }

    @NonNull
    public static zd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.live_contrybution_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
