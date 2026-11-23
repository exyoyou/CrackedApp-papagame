package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class w9 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f46682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f46683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final kw0 f46684f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46685g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46686h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46687i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46688j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46689k;

    private w9(@NonNull LinearLayout rootView, @NonNull FrameLayout classifyFrameLayout, @NonNull View imgPT, @NonNull View imgYX, @NonNull kw0 include, @NonNull RelativeLayout lLayoutPT, @NonNull RelativeLayout lLayoutYX, @NonNull LinearLayout linearLayout3, @NonNull TextView textViewPT, @NonNull TextView textViewYX) {
        this.f46680b = rootView;
        this.f46681c = classifyFrameLayout;
        this.f46682d = imgPT;
        this.f46683e = imgYX;
        this.f46684f = include;
        this.f46685g = lLayoutPT;
        this.f46686h = lLayoutYX;
        this.f46687i = linearLayout3;
        this.f46688j = textViewPT;
        this.f46689k = textViewYX;
    }

    @NonNull
    public static w9 bind(@NonNull View rootView) {
        int i10 = R.id.classifyFrameLayout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.classifyFrameLayout);
        if (frameLayout != null) {
            i10 = R.id.imgPT;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.imgPT);
            if (viewFindChildViewById != null) {
                i10 = R.id.imgYX;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.imgYX);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.include;
                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.include);
                    if (viewFindChildViewById3 != null) {
                        kw0 kw0VarBind = kw0.bind(viewFindChildViewById3);
                        i10 = R.id.lLayoutPT;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.lLayoutPT);
                        if (relativeLayout != null) {
                            i10 = R.id.lLayoutYX;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.lLayoutYX);
                            if (relativeLayout2 != null) {
                                i10 = R.id.linearLayout3;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout3);
                                if (linearLayout != null) {
                                    i10 = R.id.textViewPT;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewPT);
                                    if (textView != null) {
                                        i10 = R.id.textViewYX;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewYX);
                                        if (textView2 != null) {
                                            return new w9((LinearLayout) rootView, frameLayout, viewFindChildViewById, viewFindChildViewById2, kw0VarBind, relativeLayout, relativeLayout2, linearLayout, textView, textView2);
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
    public static w9 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46680b;
    }

    @NonNull
    public static w9 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.classify_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
