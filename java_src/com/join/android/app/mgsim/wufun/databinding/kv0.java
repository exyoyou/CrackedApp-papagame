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
public final class kv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41001d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41003f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f41004g;

    private kv0(@NonNull ConstraintLayout rootView, @NonNull TextView bg, @NonNull SimpleDraweeView image, @NonNull LinearLayout indicator, @NonNull TextView name, @NonNull ImageView play) {
        this.f40999b = rootView;
        this.f41000c = bg;
        this.f41001d = image;
        this.f41002e = indicator;
        this.f41003f = name;
        this.f41004g = play;
    }

    @NonNull
    public static kv0 bind(@NonNull View rootView) {
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
                            return new kv0((ConstraintLayout) rootView, textView, simpleDraweeView, linearLayout, textView2, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40999b;
    }

    @NonNull
    public static kv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.sliding_tab_item_game_detail_image_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
