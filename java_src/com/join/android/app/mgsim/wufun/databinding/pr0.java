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
public final class pr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43498d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f43500f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f43501g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43502h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43503i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f43504j;

    private pr0(@NonNull ConstraintLayout rootView, @NonNull ImageView imageView71, @NonNull ImageView imageView72, @NonNull TextView iv1, @NonNull View notDisturb, @NonNull View online, @NonNull TextView textView95, @NonNull TextView textView96, @NonNull View view9) {
        this.f43496b = rootView;
        this.f43497c = imageView71;
        this.f43498d = imageView72;
        this.f43499e = iv1;
        this.f43500f = notDisturb;
        this.f43501g = online;
        this.f43502h = textView95;
        this.f43503i = textView96;
        this.f43504j = view9;
    }

    @NonNull
    public static pr0 bind(@NonNull View rootView) {
        int i10 = R.id.imageView71;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView71);
        if (imageView != null) {
            i10 = R.id.imageView72;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView72);
            if (imageView2 != null) {
                i10 = R.id.iv1;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.iv1);
                if (textView != null) {
                    i10 = R.id.notDisturb;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.notDisturb);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.online;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.online);
                        if (viewFindChildViewById2 != null) {
                            i10 = R.id.textView95;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView95);
                            if (textView2 != null) {
                                i10 = R.id.textView96;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView96);
                                if (textView3 != null) {
                                    i10 = R.id.view9;
                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.view9);
                                    if (viewFindChildViewById3 != null) {
                                        return new pr0((ConstraintLayout) rootView, imageView, imageView2, textView, viewFindChildViewById, viewFindChildViewById2, textView2, textView3, viewFindChildViewById3);
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
    public static pr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43496b;
    }

    @NonNull
    public static pr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_friend_alive, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
