package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
public final class be0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final VipView f36358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36360g;

    private be0(@NonNull RelativeLayout rootView, @NonNull TextView contribution, @NonNull ImageView numberImage, @NonNull VipView svip, @NonNull SimpleDraweeView userIcon, @NonNull TextView userName) {
        this.f36355b = rootView;
        this.f36356c = contribution;
        this.f36357d = numberImage;
        this.f36358e = svip;
        this.f36359f = userIcon;
        this.f36360g = userName;
    }

    @NonNull
    public static be0 bind(@NonNull View rootView) {
        int i10 = R.id.contribution;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.contribution);
        if (textView != null) {
            i10 = R.id.numberImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.numberImage);
            if (imageView != null) {
                i10 = R.id.svip;
                VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.svip);
                if (vipView != null) {
                    i10 = R.id.userIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.userName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                        if (textView2 != null) {
                            return new be0((RelativeLayout) rootView, textView, imageView, vipView, simpleDraweeView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static be0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36355b;
    }

    @NonNull
    public static be0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.live_contrybution_secondthree_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
