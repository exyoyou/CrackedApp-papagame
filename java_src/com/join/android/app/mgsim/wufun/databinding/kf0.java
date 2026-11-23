package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class kf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40753f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40754g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40755h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f40756i;

    private kf0(@NonNull RelativeLayout rootView, @NonNull TextView imagesCount, @NonNull SimpleDraweeView imgM1, @NonNull SimpleDraweeView imgM2, @NonNull SimpleDraweeView imgM3, @NonNull LinearLayout imgsMain, @NonNull RelativeLayout imgsRoot, @NonNull View spaceT) {
        this.f40749b = rootView;
        this.f40750c = imagesCount;
        this.f40751d = imgM1;
        this.f40752e = imgM2;
        this.f40753f = imgM3;
        this.f40754g = imgsMain;
        this.f40755h = imgsRoot;
        this.f40756i = spaceT;
    }

    @NonNull
    public static kf0 bind(@NonNull View rootView) {
        int i10 = R.id.images_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.images_count);
        if (textView != null) {
            i10 = R.id.img_m_1;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_m_1);
            if (simpleDraweeView != null) {
                i10 = R.id.img_m_2;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_m_2);
                if (simpleDraweeView2 != null) {
                    i10 = R.id.img_m_3;
                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_m_3);
                    if (simpleDraweeView3 != null) {
                        i10 = R.id.imgsMain;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.imgsMain);
                        if (linearLayout != null) {
                            RelativeLayout relativeLayout = (RelativeLayout) rootView;
                            i10 = R.id.spaceT;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.spaceT);
                            if (viewFindChildViewById != null) {
                                return new kf0(relativeLayout, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, linearLayout, relativeLayout, viewFindChildViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40749b;
    }

    @NonNull
    public static kf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_f_item_post_imgs, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
