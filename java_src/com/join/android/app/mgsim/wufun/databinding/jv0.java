package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40459f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f40460g;

    private jv0(@NonNull ConstraintLayout rootView, @NonNull TextView bg, @NonNull SimpleDraweeView image, @NonNull LinearLayout indicator, @NonNull TextView name, @NonNull ImageView play) {
        this.f40455b = rootView;
        this.f40456c = bg;
        this.f40457d = image;
        this.f40458e = indicator;
        this.f40459f = name;
        this.f40460g = play;
    }

    @NonNull
    public static jv0 bind(@NonNull View rootView) {
        int i10 = R.id.bg;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.bg);
        if (textView != null) {
            i10 = R.id.image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.image);
            if (simpleDraweeView != null) {
                i10 = R.id.indicator;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.indicator);
                if (linearLayout != null) {
                    i10 = R.id.name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (textView2 != null) {
                        i10 = R.id.play;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.play);
                        if (imageView != null) {
                            return new jv0((ConstraintLayout) rootView, textView, simpleDraweeView, linearLayout, textView2, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40455b;
    }

    @NonNull
    public static jv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.sliding_tab_item_game_detail_image, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
