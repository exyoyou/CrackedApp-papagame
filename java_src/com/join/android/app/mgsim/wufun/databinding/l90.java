package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentGridView;

/* JADX INFO: loaded from: classes4.dex */
public final class l90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41228d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final WrapContentGridView f41230f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41231g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41232h;

    private l90(@NonNull LinearLayout rootView, @NonNull TextView buyVip, @NonNull ConstraintLayout rl1, @NonNull TextView vipDesc, @NonNull WrapContentGridView vipFunc, @NonNull SimpleDraweeView vipIcon, @NonNull TextView vipTitle) {
        this.f41226b = rootView;
        this.f41227c = buyVip;
        this.f41228d = rl1;
        this.f41229e = vipDesc;
        this.f41230f = vipFunc;
        this.f41231g = vipIcon;
        this.f41232h = vipTitle;
    }

    @NonNull
    public static l90 bind(@NonNull View rootView) {
        int i10 = R.id.buyVip;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.buyVip);
        if (textView != null) {
            i10 = R.id.rl1;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.rl1);
            if (constraintLayout != null) {
                i10 = R.id.vipDesc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vipDesc);
                if (textView2 != null) {
                    i10 = R.id.vipFunc;
                    WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(rootView, R.id.vipFunc);
                    if (wrapContentGridView != null) {
                        i10 = R.id.vipIcon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.vipIcon);
                        if (simpleDraweeView != null) {
                            i10 = R.id.vipTitle;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vipTitle);
                            if (textView3 != null) {
                                return new l90((LinearLayout) rootView, textView, constraintLayout, textView2, wrapContentGridView, simpleDraweeView, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static l90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41226b;
    }

    @NonNull
    public static l90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_game_main_vip, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
