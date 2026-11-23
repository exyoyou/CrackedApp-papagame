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
public final class ed implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37890f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f37891g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f37893i;

    private ed(@NonNull ConstraintLayout rootView, @NonNull TextView auth, @NonNull TextView count, @NonNull SimpleDraweeView icon, @NonNull ImageView imageView47, @NonNull View lineH, @NonNull TextView title, @NonNull View top) {
        this.f37886b = rootView;
        this.f37887c = auth;
        this.f37888d = count;
        this.f37889e = icon;
        this.f37890f = imageView47;
        this.f37891g = lineH;
        this.f37892h = title;
        this.f37893i = top;
    }

    @NonNull
    public static ed bind(@NonNull View rootView) {
        int i10 = R.id.auth;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.auth);
        if (textView != null) {
            i10 = R.id.count;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.count);
            if (textView2 != null) {
                i10 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                if (simpleDraweeView != null) {
                    i10 = R.id.imageView47;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView47);
                    if (imageView != null) {
                        i10 = R.id.line_h;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line_h);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                            if (textView3 != null) {
                                i10 = R.id.top;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.top);
                                if (viewFindChildViewById2 != null) {
                                    return new ed((ConstraintLayout) rootView, textView, textView2, simpleDraweeView, imageView, viewFindChildViewById, textView3, viewFindChildViewById2);
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
    public static ed inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37886b;
    }

    @NonNull
    public static ed inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_cloud_archive_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
