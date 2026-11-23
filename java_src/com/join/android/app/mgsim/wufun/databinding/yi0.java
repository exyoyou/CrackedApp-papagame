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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yi0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47765d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47766e;

    private yi0(@NonNull RelativeLayout rootView, @NonNull RelativeLayout itemRadioButton, @NonNull ImageView itemRadioImg, @NonNull TextView itemRadioText) {
        this.f47763b = rootView;
        this.f47764c = itemRadioButton;
        this.f47765d = itemRadioImg;
        this.f47766e = itemRadioText;
    }

    @NonNull
    public static yi0 bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i10 = R.id.itemRadioImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.itemRadioImg);
        if (imageView != null) {
            i10 = R.id.itemRadioText;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemRadioText);
            if (textView != null) {
                return new yi0(relativeLayout, relativeLayout, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yi0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47763b;
    }

    @NonNull
    public static yi0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_share_posts_a_item_help_money, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
