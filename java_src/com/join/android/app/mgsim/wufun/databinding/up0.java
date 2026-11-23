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
public final class up0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45809f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f45812i;

    private up0(@NonNull LinearLayout rootView, @NonNull LinearLayout gamebroadcastBottom, @NonNull SimpleDraweeView gamebroadcastBottomImage1, @NonNull SimpleDraweeView gamebroadcastBottomImage2, @NonNull SimpleDraweeView gamebroadcastBottomImage3, @NonNull TextView gamebroadcastBottomText1, @NonNull TextView gamebroadcastBottomText2, @NonNull ImageView imageView12) {
        this.f45805b = rootView;
        this.f45806c = gamebroadcastBottom;
        this.f45807d = gamebroadcastBottomImage1;
        this.f45808e = gamebroadcastBottomImage2;
        this.f45809f = gamebroadcastBottomImage3;
        this.f45810g = gamebroadcastBottomText1;
        this.f45811h = gamebroadcastBottomText2;
        this.f45812i = imageView12;
    }

    @NonNull
    public static up0 bind(@NonNull View rootView) {
        int i10 = R.id.gamebroadcastBottom;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastBottom);
        if (linearLayout != null) {
            i10 = R.id.gamebroadcastBottomImage1;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastBottomImage1);
            if (simpleDraweeView != null) {
                i10 = R.id.gamebroadcastBottomImage2;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastBottomImage2);
                if (simpleDraweeView2 != null) {
                    i10 = R.id.gamebroadcastBottomImage3;
                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastBottomImage3);
                    if (simpleDraweeView3 != null) {
                        i10 = R.id.gamebroadcastBottomText1;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastBottomText1);
                        if (textView != null) {
                            i10 = R.id.gamebroadcastBottomText2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastBottomText2);
                            if (textView2 != null) {
                                i10 = R.id.imageView12;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView12);
                                if (imageView != null) {
                                    return new up0((LinearLayout) rootView, linearLayout, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, textView, textView2, imageView);
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
    public static up0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45805b;
    }

    @NonNull
    public static up0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_broadcase_bottom_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
