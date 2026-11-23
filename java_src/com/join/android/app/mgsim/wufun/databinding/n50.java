package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class n50 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f42197d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42198e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42199f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42200g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42201h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f42202i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final VipView f42203j;

    private n50(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull View borderView, @NonNull ImageView ivProficiencyLevel, @NonNull ImageView ivState, @NonNull RelativeLayout pMain, @NonNull ImageView platformType, @NonNull ImageView tvChenghao, @NonNull VipView vipView) {
        this.f42195b = rootView;
        this.f42196c = avatar;
        this.f42197d = borderView;
        this.f42198e = ivProficiencyLevel;
        this.f42199f = ivState;
        this.f42200g = pMain;
        this.f42201h = platformType;
        this.f42202i = tvChenghao;
        this.f42203j = vipView;
    }

    @NonNull
    public static n50 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.borderView;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.borderView);
            if (viewFindChildViewById != null) {
                i10 = R.id.ivProficiencyLevel;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivProficiencyLevel);
                if (imageView != null) {
                    i10 = R.id.iv_state;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_state);
                    if (imageView2 != null) {
                        i10 = R.id.pMain;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.pMain);
                        if (relativeLayout != null) {
                            i10 = R.id.platformType;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.platformType);
                            if (imageView3 != null) {
                                i10 = R.id.tv_chenghao;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.tv_chenghao);
                                if (imageView4 != null) {
                                    i10 = R.id.vipView;
                                    VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.vipView);
                                    if (vipView != null) {
                                        return new n50((RelativeLayout) rootView, simpleDraweeView, viewFindChildViewById, imageView, imageView2, relativeLayout, imageView3, imageView4, vipView);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static n50 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42195b;
    }

    @NonNull
    public static n50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_room_list_p, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
