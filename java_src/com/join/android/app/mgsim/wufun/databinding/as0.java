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
public final class as0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f36012c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36013d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f36014e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36015f;

    private as0(@NonNull ConstraintLayout rootView, @NonNull View line, @NonNull ImageView r10, @NonNull View rRect, @NonNull TextView title) {
        this.f36011b = rootView;
        this.f36012c = line;
        this.f36013d = r10;
        this.f36014e = rRect;
        this.f36015f = title;
    }

    @NonNull
    public static as0 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.f35481r;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35481r);
            if (imageView != null) {
                i10 = R.id.rRect;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.rRect);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                    if (textView != null) {
                        return new as0((ConstraintLayout) rootView, viewFindChildViewById, imageView, viewFindChildViewById2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static as0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36011b;
    }

    @NonNull
    public static as0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_my_game_filter_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
