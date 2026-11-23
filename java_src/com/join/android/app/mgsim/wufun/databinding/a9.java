package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class a9 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f35699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f35700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35701g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35702h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f35703i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f35704j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f35705k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f35706l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35707m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35708n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35709o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35710p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35711q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f35712r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f35713s;

    private a9(@NonNull RelativeLayout rootView, @NonNull TextView back, @NonNull TextView back1, @NonNull ImageView closeImage, @NonNull ImageView closeImage1, @NonNull TextView describ, @NonNull TextView downFrom1, @NonNull TextView downFrom11, @NonNull TextView downFrom2, @NonNull TextView downFrom21, @NonNull TextView downFrom3, @NonNull RelativeLayout layoutq, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayoutx, @NonNull RelativeLayout mPtrFrame, @NonNull RelativeLayout main, @NonNull TextView title, @NonNull TextView title1) {
        this.f35696b = rootView;
        this.f35697c = back;
        this.f35698d = back1;
        this.f35699e = closeImage;
        this.f35700f = closeImage1;
        this.f35701g = describ;
        this.f35702h = downFrom1;
        this.f35703i = downFrom11;
        this.f35704j = downFrom2;
        this.f35705k = downFrom21;
        this.f35706l = downFrom3;
        this.f35707m = layoutq;
        this.f35708n = linearLayout6;
        this.f35709o = linearLayoutx;
        this.f35710p = mPtrFrame;
        this.f35711q = main;
        this.f35712r = title;
        this.f35713s = title1;
    }

    @NonNull
    public static a9 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (textView != null) {
            i10 = R.id.back1;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.back1);
            if (textView2 != null) {
                i10 = R.id.closeImage;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.closeImage);
                if (imageView != null) {
                    i10 = R.id.closeImage1;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.closeImage1);
                    if (imageView2 != null) {
                        i10 = R.id.describ;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.describ);
                        if (textView3 != null) {
                            i10 = R.id.downFrom1;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downFrom1);
                            if (textView4 != null) {
                                i10 = R.id.downFrom11;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downFrom11);
                                if (textView5 != null) {
                                    i10 = R.id.downFrom2;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downFrom2);
                                    if (textView6 != null) {
                                        i10 = R.id.downFrom21;
                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downFrom21);
                                        if (textView7 != null) {
                                            i10 = R.id.downFrom3;
                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downFrom3);
                                            if (textView8 != null) {
                                                i10 = R.id.layoutq;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layoutq);
                                                if (relativeLayout != null) {
                                                    i10 = R.id.linearLayout6;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout6);
                                                    if (linearLayout != null) {
                                                        i10 = R.id.linearLayoutx;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayoutx);
                                                        if (linearLayout2 != null) {
                                                            i10 = R.id.mPtrFrame;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                                                            if (relativeLayout2 != null) {
                                                                RelativeLayout relativeLayout3 = (RelativeLayout) rootView;
                                                                i10 = R.id.title;
                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                if (textView9 != null) {
                                                                    i10 = R.id.title1;
                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title1);
                                                                    if (textView10 != null) {
                                                                        return new a9(relativeLayout3, textView, textView2, imageView, imageView2, textView3, textView4, textView5, textView6, textView7, textView8, relativeLayout, linearLayout, linearLayout2, relativeLayout2, relativeLayout3, textView9, textView10);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static a9 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35696b;
    }

    @NonNull
    public static a9 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.choice_down_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
