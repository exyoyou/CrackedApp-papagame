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
public final class oa0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42736c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42737d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42738e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42739f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f42740g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42741h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42742i;

    private oa0(@NonNull ConstraintLayout rootView, @NonNull ImageView button, @NonNull ImageView button1, @NonNull ImageView imageView66, @NonNull ImageView imageView68, @NonNull View ivClose, @NonNull TextView textView97, @NonNull TextView txt) {
        this.f42735b = rootView;
        this.f42736c = button;
        this.f42737d = button1;
        this.f42738e = imageView66;
        this.f42739f = imageView68;
        this.f42740g = ivClose;
        this.f42741h = textView97;
        this.f42742i = txt;
    }

    @NonNull
    public static oa0 bind(@NonNull View rootView) {
        int i10 = R.id.button;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.button);
        if (imageView != null) {
            i10 = R.id.button1;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.button1);
            if (imageView2 != null) {
                i10 = R.id.imageView66;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView66);
                if (imageView3 != null) {
                    i10 = R.id.imageView68;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView68);
                    if (imageView4 != null) {
                        i10 = R.id.iv_close;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.iv_close);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.textView97;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView97);
                            if (textView != null) {
                                i10 = R.id.txt;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.txt);
                                if (textView2 != null) {
                                    return new oa0((ConstraintLayout) rootView, imageView, imageView2, imageView3, imageView4, viewFindChildViewById, textView, textView2);
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
    public static oa0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f42735b;
    }

    @NonNull
    public static oa0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_invite_battle1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
