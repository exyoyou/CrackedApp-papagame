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
public final class h90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39229c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f39230d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39231e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f39232f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f39233g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39234h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39235i;

    private h90(@NonNull ConstraintLayout rootView, @NonNull TextView cancel, @NonNull ImageView imageView66, @NonNull ImageView imageView68, @NonNull View ivClose, @NonNull TextView ok, @NonNull TextView textView91, @NonNull TextView textView97) {
        this.f39228b = rootView;
        this.f39229c = cancel;
        this.f39230d = imageView66;
        this.f39231e = imageView68;
        this.f39232f = ivClose;
        this.f39233g = ok;
        this.f39234h = textView91;
        this.f39235i = textView97;
    }

    @NonNull
    public static h90 bind(@NonNull View rootView) {
        int i10 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancel);
        if (textView != null) {
            i10 = R.id.imageView66;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView66);
            if (imageView != null) {
                i10 = R.id.imageView68;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView68);
                if (imageView2 != null) {
                    i10 = R.id.iv_close;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.iv_close);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.ok;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                        if (textView2 != null) {
                            i10 = R.id.textView91;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView91);
                            if (textView3 != null) {
                                i10 = R.id.textView97;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView97);
                                if (textView4 != null) {
                                    return new h90((ConstraintLayout) rootView, textView, imageView, imageView2, viewFindChildViewById, textView2, textView3, textView4);
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
    public static h90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39228b;
    }

    @NonNull
    public static h90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_friend_del_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
