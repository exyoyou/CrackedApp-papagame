package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class e40 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f37779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37780d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37781e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37782f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37783g;

    private e40(@NonNull ConstraintLayout rootView, @NonNull DownloadNormalView dvView, @NonNull SimpleDraweeView sdvIcon, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvText1, @NonNull TextView tvText3) {
        this.f37778b = rootView;
        this.f37779c = dvView;
        this.f37780d = sdvIcon;
        this.f37781e = sdvImage;
        this.f37782f = tvText1;
        this.f37783g = tvText3;
    }

    @NonNull
    public static e40 bind(@NonNull View rootView) {
        int i10 = R.id.dv_view;
        DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
        if (downloadNormalView != null) {
            i10 = R.id.sdv_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_icon);
            if (simpleDraweeView != null) {
                i10 = R.id.sdv_image;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                if (simpleDraweeView2 != null) {
                    i10 = R.id.tv_text_1;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                    if (textView != null) {
                        i10 = R.id.tv_text_3;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_3);
                        if (textView2 != null) {
                            return new e40((ConstraintLayout) rootView, downloadNormalView, simpleDraweeView, simpleDraweeView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static e40 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37778b;
    }

    @NonNull
    public static e40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_nostalgia_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
