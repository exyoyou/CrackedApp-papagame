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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class hb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f39260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f39262f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39263g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f39264h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39265i;

    private hb(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull XListView2 commentDetailList, @NonNull TextView deletedTv, @NonNull ImageView imTopRight, @NonNull LinearLayout inputLl, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull TextView titleTextview) {
        this.f39258b = rootView;
        this.f39259c = backImage;
        this.f39260d = commentDetailList;
        this.f39261e = deletedTv;
        this.f39262f = imTopRight;
        this.f39263g = inputLl;
        this.f39264h = mPtrFrame;
        this.f39265i = titleTextview;
    }

    @NonNull
    public static hb bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.comment_detail_list;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.comment_detail_list);
            if (xListView2 != null) {
                i10 = R.id.deletedTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.deletedTv);
                if (textView != null) {
                    i10 = R.id.imTopRight;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imTopRight);
                    if (imageView2 != null) {
                        i10 = R.id.inputLl;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.inputLl);
                        if (linearLayout != null) {
                            i10 = R.id.mPtrFrame;
                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                            if (ptrClassicFrameLayout != null) {
                                i10 = R.id.title_textview;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                if (textView2 != null) {
                                    return new hb((LinearLayout) rootView, imageView, xListView2, textView, imageView2, linearLayout, ptrClassicFrameLayout, textView2);
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
    public static hb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39258b;
    }

    @NonNull
    public static hb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_detail_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
