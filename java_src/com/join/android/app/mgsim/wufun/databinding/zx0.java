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
public final class zx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48480e;

    private zx0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView cardImage, @NonNull TextView gameName, @NonNull LinearLayout main) {
        this.f48477b = rootView;
        this.f48478c = cardImage;
        this.f48479d = gameName;
        this.f48480e = main;
    }

    @NonNull
    public static zx0 bind(@NonNull View rootView) {
        int i10 = R.id.cardImage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.cardImage);
        if (simpleDraweeView != null) {
            i10 = R.id.gameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                return new zx0(linearLayout, simpleDraweeView, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48477b;
    }

    @NonNull
    public static zx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.vip_center_icongame_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
