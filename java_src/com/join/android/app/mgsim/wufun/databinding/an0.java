package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class an0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35924c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35925d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35926e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35927f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35928g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35929h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35930i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35931j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f35932k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f35933l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f35934m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f35935n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35936o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35937p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35938q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35939r;

    private an0(@NonNull LinearLayout rootView, @NonNull TextView appButn1, @NonNull TextView appButn2, @NonNull TextView appButn3, @NonNull TextView appButn4, @NonNull SimpleDraweeView appIcon1, @NonNull SimpleDraweeView appIcon2, @NonNull SimpleDraweeView appIcon3, @NonNull SimpleDraweeView appIcon4, @NonNull TextView appName1, @NonNull TextView appName2, @NonNull TextView appName3, @NonNull TextView appName4, @NonNull LinearLayout layout1, @NonNull LinearLayout layout2, @NonNull LinearLayout layout3, @NonNull LinearLayout layout4) {
        this.f35923b = rootView;
        this.f35924c = appButn1;
        this.f35925d = appButn2;
        this.f35926e = appButn3;
        this.f35927f = appButn4;
        this.f35928g = appIcon1;
        this.f35929h = appIcon2;
        this.f35930i = appIcon3;
        this.f35931j = appIcon4;
        this.f35932k = appName1;
        this.f35933l = appName2;
        this.f35934m = appName3;
        this.f35935n = appName4;
        this.f35936o = layout1;
        this.f35937p = layout2;
        this.f35938q = layout3;
        this.f35939r = layout4;
    }

    @NonNull
    public static an0 bind(@NonNull View rootView) {
        int i10 = R.id.appButn1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appButn1);
        if (textView != null) {
            i10 = R.id.appButn2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appButn2);
            if (textView2 != null) {
                i10 = R.id.appButn3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appButn3);
                if (textView3 != null) {
                    i10 = R.id.appButn4;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appButn4);
                    if (textView4 != null) {
                        i10 = R.id.appIcon1;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon1);
                        if (simpleDraweeView != null) {
                            i10 = R.id.appIcon2;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon2);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.appIcon3;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon3);
                                if (simpleDraweeView3 != null) {
                                    i10 = R.id.appIcon4;
                                    SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon4);
                                    if (simpleDraweeView4 != null) {
                                        i10 = R.id.appName1;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName1);
                                        if (textView5 != null) {
                                            i10 = R.id.appName2;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName2);
                                            if (textView6 != null) {
                                                i10 = R.id.appName3;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName3);
                                                if (textView7 != null) {
                                                    i10 = R.id.appName4;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName4);
                                                    if (textView8 != null) {
                                                        i10 = R.id.layout1;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout1);
                                                        if (linearLayout != null) {
                                                            i10 = R.id.layout2;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout2);
                                                            if (linearLayout2 != null) {
                                                                i10 = R.id.layout3;
                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout3);
                                                                if (linearLayout3 != null) {
                                                                    i10 = R.id.layout4;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout4);
                                                                    if (linearLayout4 != null) {
                                                                        return new an0((LinearLayout) rootView, textView, textView2, textView3, textView4, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, textView5, textView6, textView7, textView8, linearLayout, linearLayout2, linearLayout3, linearLayout4);
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
    public static an0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35923b;
    }

    @NonNull
    public static an0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.must_play_app_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
