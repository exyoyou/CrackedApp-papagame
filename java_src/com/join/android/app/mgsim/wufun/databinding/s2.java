package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class s2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44607d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44609f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44610g;

    private s2(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView gameImg, @NonNull ImageView ivClose, @NonNull TextView tvDesc, @NonNull TextView tvGameName, @NonNull TextView tvInstall) {
        this.f44605b = rootView;
        this.f44606c = gameImg;
        this.f44607d = ivClose;
        this.f44608e = tvDesc;
        this.f44609f = tvGameName;
        this.f44610g = tvInstall;
    }

    @NonNull
    public static s2 bind(@NonNull View rootView) {
        int i10 = R.id.gameImg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameImg);
        if (simpleDraweeView != null) {
            i10 = R.id.ivClose;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivClose);
            if (imageView != null) {
                i10 = R.id.tvDesc;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
                if (textView != null) {
                    i10 = R.id.tvGameName;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                    if (textView2 != null) {
                        i10 = R.id.tvInstall;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvInstall);
                        if (textView3 != null) {
                            return new s2((ConstraintLayout) rootView, simpleDraweeView, imageView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static s2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44605b;
    }

    @NonNull
    public static s2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_install_app_dialog_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
