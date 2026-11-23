package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class y30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f47564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47565c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47568f;

    private y30(@NonNull CardView rootView, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvPicNum, @NonNull TextView tvTime, @NonNull TextView tvTitle) {
        this.f47564b = rootView;
        this.f47565c = sdvImage;
        this.f47566d = tvPicNum;
        this.f47567e = tvTime;
        this.f47568f = tvTitle;
    }

    @NonNull
    public static y30 bind(@NonNull View rootView) {
        int i10 = R.id.sdv_image;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
        if (simpleDraweeView != null) {
            i10 = R.id.tv_pic_num;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_pic_num);
            if (textView != null) {
                i10 = R.id.tv_time;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time);
                if (textView2 != null) {
                    i10 = R.id.tv_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                    if (textView3 != null) {
                        return new y30((CardView) rootView, simpleDraweeView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static y30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f47564b;
    }

    @NonNull
    public static y30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_mod_introduction_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
