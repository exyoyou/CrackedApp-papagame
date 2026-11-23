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
public final class qp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43952c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43953d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43955f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43956g;

    private qp0(@NonNull LinearLayout rootView, @NonNull TextView describe, @NonNull TextView describe2, @NonNull SimpleDraweeView guideImage, @NonNull TextView iKnow, @NonNull ImageView imageView25) {
        this.f43951b = rootView;
        this.f43952c = describe;
        this.f43953d = describe2;
        this.f43954e = guideImage;
        this.f43955f = iKnow;
        this.f43956g = imageView25;
    }

    @NonNull
    public static qp0 bind(@NonNull View rootView) {
        int i10 = R.id.describe;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.describe);
        if (textView != null) {
            i10 = R.id.describe2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.describe2);
            if (textView2 != null) {
                i10 = R.id.guideImage;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.guideImage);
                if (simpleDraweeView != null) {
                    i10 = R.id.iKnow;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.iKnow);
                    if (textView3 != null) {
                        i10 = R.id.imageView25;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView25);
                        if (imageView != null) {
                            return new qp0((LinearLayout) rootView, textView, textView2, simpleDraweeView, textView3, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43951b;
    }

    @NonNull
    public static qp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papa_plug_guide_notice_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
