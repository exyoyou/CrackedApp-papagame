package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ea0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f37863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f37864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37865f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f37866g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f37867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f37868i;

    private ea0(@NonNull ConstraintLayout rootView, @NonNull ImageView a10, @NonNull ImageView bg, @NonNull ImageView d10, @NonNull ImageView s10, @NonNull ImageView stick, @NonNull View stickEdge, @NonNull ImageView w10) {
        this.f37861b = rootView;
        this.f37862c = a10;
        this.f37863d = bg;
        this.f37864e = d10;
        this.f37865f = s10;
        this.f37866g = stick;
        this.f37867h = stickEdge;
        this.f37868i = w10;
    }

    @NonNull
    public static ea0 bind(@NonNull View rootView) {
        int i10 = R.id.f35449a;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35449a);
        if (imageView != null) {
            i10 = R.id.bg;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bg);
            if (imageView2 != null) {
                i10 = R.id.f35457d;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35457d);
                if (imageView3 != null) {
                    i10 = R.id.f35485s;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35485s);
                    if (imageView4 != null) {
                        i10 = R.id.stick;
                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.stick);
                        if (imageView5 != null) {
                            i10 = R.id.stick_edge;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.stick_edge);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.f35490w;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35490w);
                                if (imageView6 != null) {
                                    return new ea0((ConstraintLayout) rootView, imageView, imageView2, imageView3, imageView4, imageView5, viewFindChildViewById, imageView6);
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
    public static ea0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37861b;
    }

    @NonNull
    public static ea0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_pad_analog_wasd, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
