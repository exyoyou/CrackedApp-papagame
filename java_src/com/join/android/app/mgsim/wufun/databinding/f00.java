package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class f00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38210f;

    private f00(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView ItemIcon, @NonNull ImageView ItemMy, @NonNull TextView ItemName, @NonNull TextView ItemNum) {
        this.f38206b = rootView;
        this.f38207c = ItemIcon;
        this.f38208d = ItemMy;
        this.f38209e = ItemName;
        this.f38210f = ItemNum;
    }

    @NonNull
    public static f00 bind(@NonNull View rootView) {
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
                        return new f00((LinearLayout) rootView, simpleDraweeView, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static f00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38206b;
    }

    @NonNull
    public static f00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_discovery_bottom_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
