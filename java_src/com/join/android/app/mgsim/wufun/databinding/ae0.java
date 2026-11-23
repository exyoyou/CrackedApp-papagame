package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
public final class ae0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f35793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35794f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final VipView f35795g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35796h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35797i;

    private ae0(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull TextView contrybution, @NonNull ImageView imageViewMuberOne, @NonNull LinearLayout ll, @NonNull VipView svip, @NonNull TextView userName, @NonNull SimpleDraweeView usericon) {
        this.f35790b = rootView;
        this.f35791c = backImage;
        this.f35792d = contrybution;
        this.f35793e = imageViewMuberOne;
        this.f35794f = ll;
        this.f35795g = svip;
        this.f35796h = userName;
        this.f35797i = usericon;
    }

    @NonNull
    public static ae0 bind(@NonNull View rootView) {
        int i10 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
        if (imageView != null) {
            i10 = R.id.contrybution;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.contrybution);
            if (textView != null) {
                i10 = R.id.imageViewMuberOne;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageViewMuberOne);
                if (imageView2 != null) {
                    i10 = R.id.ll;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll);
                    if (linearLayout != null) {
                        i10 = R.id.svip;
                        VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.svip);
                        if (vipView != null) {
                            i10 = R.id.userName;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                            if (textView2 != null) {
                                i10 = R.id.usericon;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.usericon);
                                if (simpleDraweeView != null) {
                                    return new ae0((RelativeLayout) rootView, imageView, textView, imageView2, linearLayout, vipView, textView2, simpleDraweeView);
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
    public static ae0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35790b;
    }

    @NonNull
    public static ae0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.live_contrybution_first_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
