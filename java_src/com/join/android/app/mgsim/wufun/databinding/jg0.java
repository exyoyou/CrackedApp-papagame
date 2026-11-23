package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class jg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final VipView f40233e;

    private jg0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView itemImg, @NonNull TextView itemName, @NonNull VipView vipView) {
        this.f40230b = rootView;
        this.f40231c = itemImg;
        this.f40232d = itemName;
        this.f40233e = vipView;
    }

    @NonNull
    public static jg0 bind(@NonNull View rootView) {
        int i10 = R.id.itemImg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.itemImg);
        if (simpleDraweeView != null) {
            i10 = R.id.itemName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemName);
            if (textView != null) {
                i10 = R.id.vipView;
                VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.vipView);
                if (vipView != null) {
                    return new jg0((LinearLayout) rootView, simpleDraweeView, textView, vipView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40230b;
    }

    @NonNull
    public static jg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_forum_t_member_item_moderators_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
