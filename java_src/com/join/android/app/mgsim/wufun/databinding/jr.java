package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class jr implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HListView f40371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MViewpagerV4 f40373e;

    private jr(@NonNull ConstraintLayout rootView, @NonNull HListView hlvTopList, @NonNull LinearLayout llTopImages, @NonNull MViewpagerV4 viewPager1) {
        this.f40370b = rootView;
        this.f40371c = hlvTopList;
        this.f40372d = llTopImages;
        this.f40373e = viewPager1;
    }

    @NonNull
    public static jr bind(@NonNull View rootView) {
        int i10 = R.id.hlv_top_list;
        HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.hlv_top_list);
        if (hListView != null) {
            i10 = R.id.ll_top_images;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_top_images);
            if (linearLayout != null) {
                i10 = R.id.viewPager1;
                MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.viewPager1);
                if (mViewpagerV4 != null) {
                    return new jr((ConstraintLayout) rootView, hListView, linearLayout, mViewpagerV4);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jr inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40370b;
    }

    @NonNull
    public static jr inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_img_navi_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
