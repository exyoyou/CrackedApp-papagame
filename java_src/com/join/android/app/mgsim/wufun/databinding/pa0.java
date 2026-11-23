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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pa0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f43293f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f43294g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f43295h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43296i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43297j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43298k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f43299l;

    private pa0(@NonNull ConstraintLayout rootView, @NonNull ImageView imageView66, @NonNull ImageView imageView68, @NonNull ImageView imageView69, @NonNull ImageView imageView70, @NonNull View ivClose, @NonNull View qq, @NonNull TextView textView97, @NonNull TextView textView98, @NonNull TextView textView99, @NonNull View wechat) {
        this.f43289b = rootView;
        this.f43290c = imageView66;
        this.f43291d = imageView68;
        this.f43292e = imageView69;
        this.f43293f = imageView70;
        this.f43294g = ivClose;
        this.f43295h = qq;
        this.f43296i = textView97;
        this.f43297j = textView98;
        this.f43298k = textView99;
        this.f43299l = wechat;
    }

    @NonNull
    public static pa0 bind(@NonNull View rootView) {
        int i10 = R.id.imageView66;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView66);
        if (imageView != null) {
            i10 = R.id.imageView68;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView68);
            if (imageView2 != null) {
                i10 = R.id.imageView69;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView69);
                if (imageView3 != null) {
                    i10 = R.id.imageView70;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView70);
                    if (imageView4 != null) {
                        i10 = R.id.iv_close;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.iv_close);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.qq;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.qq);
                            if (viewFindChildViewById2 != null) {
                                i10 = R.id.textView97;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView97);
                                if (textView != null) {
                                    i10 = R.id.textView98;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView98);
                                    if (textView2 != null) {
                                        i10 = R.id.textView99;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView99);
                                        if (textView3 != null) {
                                            i10 = R.id.wechat;
                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.wechat);
                                            if (viewFindChildViewById3 != null) {
                                                return new pa0((ConstraintLayout) rootView, imageView, imageView2, imageView3, imageView4, viewFindChildViewById, viewFindChildViewById2, textView, textView2, textView3, viewFindChildViewById3);
                                            }
                                        }
                                    }
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
    public static pa0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43289b;
    }

    @NonNull
    public static pa0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_invite_battle, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
