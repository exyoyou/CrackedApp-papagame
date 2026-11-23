package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CornersLinearLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class an implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CornersLinearLayout f35920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f35922d;

    private an(@NonNull CornersLinearLayout rootView, @NonNull ImageView ivClose, @NonNull RecyclerView rvListData) {
        this.f35920b = rootView;
        this.f35921c = ivClose;
        this.f35922d = rvListData;
    }

    @NonNull
    public static an bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (imageView != null) {
            i10 = R.id.rv_list_data;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list_data);
            if (recyclerView != null) {
                return new an((CornersLinearLayout) rootView, imageView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static an inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CornersLinearLayout getRoot() {
        return this.f35920b;
    }

    @NonNull
    public static an inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_more_introduction, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
