package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class b30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36210d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f36212f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36213g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36214h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36215i;

    private b30(@NonNull ConstraintLayout rootView, @NonNull ImageView iv1, @NonNull ImageView iv2, @NonNull ImageView iv3, @NonNull ImageView iv4, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull TextView tvText3) {
        this.f36208b = rootView;
        this.f36209c = iv1;
        this.f36210d = iv2;
        this.f36211e = iv3;
        this.f36212f = iv4;
        this.f36213g = tvText1;
        this.f36214h = tvText2;
        this.f36215i = tvText3;
    }

    @NonNull
    public static b30 bind(@NonNull View rootView) {
        int i10 = R.id.iv_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
        if (imageView != null) {
            i10 = R.id.iv_2;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_2);
            if (imageView2 != null) {
                i10 = R.id.iv_3;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_3);
                if (imageView3 != null) {
                    i10 = R.id.iv_4;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_4);
                    if (imageView4 != null) {
                        i10 = R.id.tv_text_1;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                        if (textView != null) {
                            i10 = R.id.tv_text_2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                            if (textView2 != null) {
                                i10 = R.id.tv_text_3;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                                if (textView3 != null) {
                                    return new b30((ConstraintLayout) rootView, imageView, imageView2, imageView3, imageView4, textView, textView2, textView3);
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
    public static b30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36208b;
    }

    @NonNull
    public static b30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_home_cloud_active_first_large, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
