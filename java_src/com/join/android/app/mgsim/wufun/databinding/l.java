package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.zxing.android.view.ViewfinderView;

/* JADX INFO: loaded from: classes4.dex */
public final class l implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SurfaceView f41087c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ViewfinderView f41088d;

    private l(@NonNull RelativeLayout rootView, @NonNull SurfaceView surfaceview, @NonNull ViewfinderView viewfinderview) {
        this.f41086b = rootView;
        this.f41087c = surfaceview;
        this.f41088d = viewfinderview;
    }

    @NonNull
    public static l bind(@NonNull View rootView) {
        int i10 = R.id.surfaceview;
        SurfaceView surfaceView = (SurfaceView) ViewBindings.findChildViewById(rootView, R.id.surfaceview);
        if (surfaceView != null) {
            i10 = R.id.viewfinderview;
            ViewfinderView viewfinderView = (ViewfinderView) ViewBindings.findChildViewById(rootView, R.id.viewfinderview);
            if (viewfinderView != null) {
                return new l((RelativeLayout) rootView, surfaceView, viewfinderView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static l inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41086b;
    }

    @NonNull
    public static l inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_capture, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
