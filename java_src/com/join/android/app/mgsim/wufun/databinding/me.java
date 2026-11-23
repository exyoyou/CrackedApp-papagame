package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class me implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f41853d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41854e;

    private me(@NonNull ConstraintLayout rootView, @NonNull ImageView iv1, @NonNull RecyclerView rvList, @NonNull TextView tvText1) {
        this.f41851b = rootView;
        this.f41852c = iv1;
        this.f41853d = rvList;
        this.f41854e = tvText1;
    }

    @NonNull
    public static me bind(@NonNull View rootView) {
        int i10 = R.id.iv_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
        if (imageView != null) {
            i10 = R.id.rv_list;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list);
            if (recyclerView != null) {
                i10 = R.id.tv_text_1;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                if (textView != null) {
                    return new me((ConstraintLayout) rootView, imageView, recyclerView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static me inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f41851b;
    }

    @NonNull
    public static me inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_cloud_game_router, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
