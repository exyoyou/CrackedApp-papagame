package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ClouldItemView;

/* JADX INFO: loaded from: classes4.dex */
public final class w40 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ClouldItemView f46628c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f46629d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f46630e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46631f;

    private w40(@NonNull LinearLayout rootView, @NonNull ClouldItemView coulditem, @NonNull ImageView ivNor, @NonNull ImageView ivSelect, @NonNull RelativeLayout rlImage) {
        this.f46627b = rootView;
        this.f46628c = coulditem;
        this.f46629d = ivNor;
        this.f46630e = ivSelect;
        this.f46631f = rlImage;
    }

    @NonNull
    public static w40 bind(@NonNull View rootView) {
        int i10 = R.id.coulditem;
        ClouldItemView clouldItemView = (ClouldItemView) ViewBindings.findChildViewById(rootView, R.id.coulditem);
        if (clouldItemView != null) {
            i10 = R.id.iv_nor;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_nor);
            if (imageView != null) {
                i10 = R.id.iv_select;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_select);
                if (imageView2 != null) {
                    i10 = R.id.rl_image;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_image);
                    if (relativeLayout != null) {
                        return new w40((LinearLayout) rootView, clouldItemView, imageView, imageView2, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static w40 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46627b;
    }

    @NonNull
    public static w40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_rcy_archive, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
