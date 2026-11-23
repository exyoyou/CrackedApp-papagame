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

/* JADX INFO: loaded from: classes4.dex */
public final class i00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f39582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39584f;

    private i00(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView ItemIcon, @NonNull ImageView ItemMy, @NonNull TextView ItemName, @NonNull TextView ItemNum) {
        this.f39580b = rootView;
        this.f39581c = ItemIcon;
        this.f39582d = ItemMy;
        this.f39583e = ItemName;
        this.f39584f = ItemNum;
    }

    @NonNull
    public static i00 bind(@NonNull View rootView) {
        int i10 = R.id.ItemIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ItemIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.ItemMy;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ItemMy);
            if (imageView != null) {
                i10 = R.id.ItemName;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.ItemName);
                if (textView != null) {
                    i10 = R.id.ItemNum;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ItemNum);
                    if (textView2 != null) {
                        return new i00((RelativeLayout) rootView, simpleDraweeView, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static i00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39580b;
    }

    @NonNull
    public static i00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_discovery_top_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
