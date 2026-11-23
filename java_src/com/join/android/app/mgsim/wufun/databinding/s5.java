package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class s5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44637c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final BottomSheetLayout f44638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final zi f44640f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f44641g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44642h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44643i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44644j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44645k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44646l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f44647m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44648n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f44649o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44650p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final Button f44651q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f44652r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f44653s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f44654t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44655u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LJWebView f44656v;

    private s5(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout actionBar, @NonNull BottomSheetLayout bottomSheetLayout, @NonNull LinearLayout close, @NonNull zi downloadCenter, @NonNull ImageView imageView11, @NonNull TextView inputUrl, @NonNull ConstraintLayout layoutFail, @NonNull ConstraintLayout layoutLoading, @NonNull ConstraintLayout main, @NonNull LinearLayout next, @NonNull ImageView nextImg, @NonNull LinearLayout prev, @NonNull ImageView prevImg, @NonNull LinearLayout refresh, @NonNull Button sniffer, @NonNull TextView textView32, @NonNull TextView textView33, @NonNull TextView tipSniffing, @NonNull ConstraintLayout toolbar, @NonNull LJWebView web) {
        this.f44636b = rootView;
        this.f44637c = actionBar;
        this.f44638d = bottomSheetLayout;
        this.f44639e = close;
        this.f44640f = downloadCenter;
        this.f44641g = imageView11;
        this.f44642h = inputUrl;
        this.f44643i = layoutFail;
        this.f44644j = layoutLoading;
        this.f44645k = main;
        this.f44646l = next;
        this.f44647m = nextImg;
        this.f44648n = prev;
        this.f44649o = prevImg;
        this.f44650p = refresh;
        this.f44651q = sniffer;
        this.f44652r = textView32;
        this.f44653s = textView33;
        this.f44654t = tipSniffing;
        this.f44655u = toolbar;
        this.f44656v = web;
    }

    @NonNull
    public static s5 bind(@NonNull View rootView) {
        int i10 = R.id.actionBar;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.actionBar);
        if (constraintLayout != null) {
            i10 = R.id.bottomSheetLayout;
            BottomSheetLayout bottomSheetLayout = (BottomSheetLayout) ViewBindings.findChildViewById(rootView, R.id.bottomSheetLayout);
            if (bottomSheetLayout != null) {
                i10 = R.id.close;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.close);
                if (linearLayout != null) {
                    i10 = R.id.downloadCenter;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.downloadCenter);
                    if (viewFindChildViewById != null) {
                        zi ziVarBind = zi.bind(viewFindChildViewById);
                        i10 = R.id.imageView11;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView11);
                        if (imageView != null) {
                            i10 = R.id.inputUrl;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.inputUrl);
                            if (textView != null) {
                                i10 = R.id.layoutFail;
                                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.layoutFail);
                                if (constraintLayout2 != null) {
                                    i10 = R.id.layoutLoading;
                                    ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.layoutLoading);
                                    if (constraintLayout3 != null) {
                                        i10 = R.id.main;
                                        ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                        if (constraintLayout4 != null) {
                                            i10 = R.id.next;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.next);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.nextImg;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.nextImg);
                                                if (imageView2 != null) {
                                                    i10 = R.id.prev;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.prev);
                                                    if (linearLayout3 != null) {
                                                        i10 = R.id.prevImg;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.prevImg);
                                                        if (imageView3 != null) {
                                                            i10 = R.id.refresh;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.refresh);
                                                            if (linearLayout4 != null) {
                                                                i10 = R.id.sniffer;
                                                                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.sniffer);
                                                                if (button != null) {
                                                                    i10 = R.id.textView32;
                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView32);
                                                                    if (textView2 != null) {
                                                                        i10 = R.id.textView33;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView33);
                                                                        if (textView3 != null) {
                                                                            i10 = R.id.tipSniffing;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tipSniffing);
                                                                            if (textView4 != null) {
                                                                                i10 = R.id.toolbar;
                                                                                ConstraintLayout constraintLayout5 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.toolbar);
                                                                                if (constraintLayout5 != null) {
                                                                                    i10 = R.id.web;
                                                                                    LJWebView lJWebView = (LJWebView) ViewBindings.findChildViewById(rootView, R.id.web);
                                                                                    if (lJWebView != null) {
                                                                                        return new s5((ConstraintLayout) rootView, constraintLayout, bottomSheetLayout, linearLayout, ziVarBind, imageView, textView, constraintLayout2, constraintLayout3, constraintLayout4, linearLayout2, imageView2, linearLayout3, imageView3, linearLayout4, button, textView2, textView3, textView4, constraintLayout5, lJWebView);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static s5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44636b;
    }

    @NonNull
    public static s5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_web_view_search, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
