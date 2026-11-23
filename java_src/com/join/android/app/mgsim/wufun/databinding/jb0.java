package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class jb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f40170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Group f40171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40173f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40174g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40175h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40176i;

    private jb0(@NonNull ConstraintLayout rootView, @NonNull DownloadNormalView dvView, @NonNull Group g10, @NonNull ImageView iv2, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull TextView tvText3) {
        this.f40169b = rootView;
        this.f40170c = dvView;
        this.f40171d = g10;
        this.f40172e = iv2;
        this.f40173f = sdvImage;
        this.f40174g = tvText1;
        this.f40175h = tvText2;
        this.f40176i = tvText3;
    }

    @NonNull
    public static jb0 bind(@NonNull View rootView) {
        int i10 = R.id.dv_view;
        DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
        if (downloadNormalView != null) {
            i10 = R.id.g_1;
            Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.g_1);
            if (group != null) {
                i10 = R.id.iv_2;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_2);
                if (imageView != null) {
                    i10 = R.id.sdv_image;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                    if (simpleDraweeView != null) {
                        i10 = R.id.tv_text_1;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                        if (textView != null) {
                            i10 = R.id.tv_text_2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                            if (textView2 != null) {
                                i10 = R.id.tv_text_3;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                                if (textView3 != null) {
                                    return new jb0((ConstraintLayout) rootView, downloadNormalView, group, imageView, simpleDraweeView, textView, textView2, textView3);
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
    public static jb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40169b;
    }

    @NonNull
    public static jb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_papa_main_home_v4_guess_like_recommend, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
