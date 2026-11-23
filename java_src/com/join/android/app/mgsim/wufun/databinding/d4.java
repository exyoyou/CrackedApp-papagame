package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.PictureHProgress;

/* JADX INFO: loaded from: classes4.dex */
public final class d4 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37250c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final PictureHProgress f37251d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37252e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f37253f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37254g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37255h;

    private d4(@NonNull LinearLayout rootView, @NonNull LinearLayout llBack, @NonNull PictureHProgress pbProgress, @NonNull SimpleDraweeView sdvImage, @NonNull View statubar, @NonNull TextView tvLoadingProgress, @NonNull TextView tvName) {
        this.f37249b = rootView;
        this.f37250c = llBack;
        this.f37251d = pbProgress;
        this.f37252e = sdvImage;
        this.f37253f = statubar;
        this.f37254g = tvLoadingProgress;
        this.f37255h = tvName;
    }

    @NonNull
    public static d4 bind(@NonNull View rootView) {
        int i10 = R.id.ll_back;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_back);
        if (linearLayout != null) {
            i10 = R.id.pb_progress;
            PictureHProgress pictureHProgress = (PictureHProgress) ViewBindings.findChildViewById(rootView, R.id.pb_progress);
            if (pictureHProgress != null) {
                i10 = R.id.sdv_image;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                if (simpleDraweeView != null) {
                    i10 = R.id.statubar;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.tv_loading_progress;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_loading_progress);
                        if (textView != null) {
                            i10 = R.id.tv_name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                            if (textView2 != null) {
                                return new d4((LinearLayout) rootView, linearLayout, pictureHProgress, simpleDraweeView, viewFindChildViewById, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static d4 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37249b;
    }

    @NonNull
    public static d4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_quark_loading, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
