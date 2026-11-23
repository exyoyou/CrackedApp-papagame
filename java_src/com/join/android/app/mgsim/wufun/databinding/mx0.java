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
public final class mx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42073g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42074h;

    private mx0(@NonNull RelativeLayout rootView, @NonNull ImageView downloadIconImg, @NonNull ImageView downloadLinePointView, @NonNull ImageView downloadLineView, @NonNull TextView downloadNumAnimTxt, @NonNull TextView downloadNumHintTxt, @NonNull ImageView downloadRedPoint) {
        this.f42068b = rootView;
        this.f42069c = downloadIconImg;
        this.f42070d = downloadLinePointView;
        this.f42071e = downloadLineView;
        this.f42072f = downloadNumAnimTxt;
        this.f42073g = downloadNumHintTxt;
        this.f42074h = downloadRedPoint;
    }

    @NonNull
    public static mx0 bind(@NonNull View rootView) {
        int i10 = R.id.download_icon_img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.download_icon_img);
        if (imageView != null) {
            i10 = R.id.download_line_point_view;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.download_line_point_view);
            if (imageView2 != null) {
                i10 = R.id.download_line_view;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.download_line_view);
                if (imageView3 != null) {
                    i10 = R.id.download_num_anim_txt;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.download_num_anim_txt);
                    if (textView != null) {
                        i10 = R.id.download_num_hint_txt;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.download_num_hint_txt);
                        if (textView2 != null) {
                            i10 = R.id.download_red_point;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.download_red_point);
                            if (imageView4 != null) {
                                return new mx0((RelativeLayout) rootView, imageView, imageView2, imageView3, textView, textView2, imageView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42068b;
    }

    @NonNull
    public static mx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_customer_download, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
