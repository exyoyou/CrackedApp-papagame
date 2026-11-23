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
public final class ii implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39831f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f39832g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39833h;

    private ii(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView mainDialogAdImg, @NonNull TextView mainDialogCancelTv, @NonNull TextView mainDialogContenTv, @NonNull TextView mainDialogOkIv, @NonNull TextView mainDialogTopTv, @NonNull LinearLayout rootLl) {
        this.f39827b = rootView;
        this.f39828c = mainDialogAdImg;
        this.f39829d = mainDialogCancelTv;
        this.f39830e = mainDialogContenTv;
        this.f39831f = mainDialogOkIv;
        this.f39832g = mainDialogTopTv;
        this.f39833h = rootLl;
    }

    @NonNull
    public static ii bind(@NonNull View rootView) {
        int i10 = R.id.mainDialogAdImg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.mainDialogAdImg);
        if (simpleDraweeView != null) {
            i10 = R.id.mainDialogCancelTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.mainDialogCancelTv);
            if (textView != null) {
                i10 = R.id.mainDialogContenTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mainDialogContenTv);
                if (textView2 != null) {
                    i10 = R.id.mainDialogOkIv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mainDialogOkIv);
                    if (textView3 != null) {
                        i10 = R.id.mainDialogTopTv;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mainDialogTopTv);
                        if (textView4 != null) {
                            i10 = R.id.rootLl;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rootLl);
                            if (linearLayout != null) {
                                return new ii((RelativeLayout) rootView, simpleDraweeView, textView, textView2, textView3, textView4, linearLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ii inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39827b;
    }

    @NonNull
    public static ii inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_vip_app_vertical_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
