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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f46826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46828f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46829g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46830h;

    private wj(@NonNull LinearLayout rootView, @NonNull ImageView fightIconLeft, @NonNull ImageView fightIconRight, @NonNull SimpleDraweeView fightImgLeft, @NonNull SimpleDraweeView fightImgRight, @NonNull RelativeLayout fightLayoutLeft, @NonNull RelativeLayout fightLayoutRight) {
        this.f46824b = rootView;
        this.f46825c = fightIconLeft;
        this.f46826d = fightIconRight;
        this.f46827e = fightImgLeft;
        this.f46828f = fightImgRight;
        this.f46829g = fightLayoutLeft;
        this.f46830h = fightLayoutRight;
    }

    @NonNull
    public static wj bind(@NonNull View rootView) {
        int i10 = R.id.fightIconLeft;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.fightIconLeft);
        if (imageView != null) {
            i10 = R.id.fightIconRight;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.fightIconRight);
            if (imageView2 != null) {
                i10 = R.id.fightImgLeft;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.fightImgLeft);
                if (simpleDraweeView != null) {
                    i10 = R.id.fightImgRight;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.fightImgRight);
                    if (simpleDraweeView2 != null) {
                        i10 = R.id.fightLayoutLeft;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.fightLayoutLeft);
                        if (relativeLayout != null) {
                            i10 = R.id.fightLayoutRight;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.fightLayoutRight);
                            if (relativeLayout2 != null) {
                                return new wj((LinearLayout) rootView, imageView, imageView2, simpleDraweeView, simpleDraweeView2, relativeLayout, relativeLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46824b;
    }

    @NonNull
    public static wj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fight_hot_game_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
