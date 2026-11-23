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

/* JADX INFO: loaded from: classes4.dex */
public final class s30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44622e;

    private s30(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView itemMemberFunIv, @NonNull LinearLayout itemMemberFunRootLl, @NonNull TextView itemMemberFunTx) {
        this.f44619b = rootView;
        this.f44620c = itemMemberFunIv;
        this.f44621d = itemMemberFunRootLl;
        this.f44622e = itemMemberFunTx;
    }

    @NonNull
    public static s30 bind(@NonNull View rootView) {
        int i10 = R.id.itemMemberFunIv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.itemMemberFunIv);
        if (simpleDraweeView != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemMemberFunTx);
            if (textView != null) {
                return new s30(linearLayout, simpleDraweeView, linearLayout, textView);
            }
            i10 = R.id.itemMemberFunTx;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static s30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44619b;
    }

    @NonNull
    public static s30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_member_fun_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
