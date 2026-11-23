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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class yd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final VipView f47683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47684f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47685g;

    private yd0(@NonNull RelativeLayout rootView, @NonNull TextView contribution, @NonNull TextView numberText, @NonNull VipView svip, @NonNull SimpleDraweeView userIcon, @NonNull TextView userName) {
        this.f47680b = rootView;
        this.f47681c = contribution;
        this.f47682d = numberText;
        this.f47683e = svip;
        this.f47684f = userIcon;
        this.f47685g = userName;
    }

    @NonNull
    public static yd0 bind(@NonNull View rootView) {
        int i10 = R.id.contribution;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.contribution);
        if (textView != null) {
            i10 = R.id.numberText;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.numberText);
            if (textView2 != null) {
                i10 = R.id.svip;
                VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.svip);
                if (vipView != null) {
                    i10 = R.id.userIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.userName;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                        if (textView3 != null) {
                            return new yd0((RelativeLayout) rootView, textView, textView2, vipView, simpleDraweeView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47680b;
    }

    @NonNull
    public static yd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.live_contribution_other_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
