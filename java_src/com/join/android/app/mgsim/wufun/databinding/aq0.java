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
public final class aq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35961c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35962d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35964f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35965g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f35967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f35968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35969k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35970l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f35971m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f35972n;

    private aq0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView appimage, @NonNull SimpleDraweeView appimage2, @NonNull TextView appname, @NonNull TextView appname2, @NonNull TextView appsize, @NonNull TextView appsize2, @NonNull TextView downloadapp, @NonNull TextView downloadapp2, @NonNull LinearLayout itemLeft, @NonNull LinearLayout itemRight, @NonNull TextView moneyText, @NonNull TextView moneyText2) {
        this.f35960b = rootView;
        this.f35961c = appimage;
        this.f35962d = appimage2;
        this.f35963e = appname;
        this.f35964f = appname2;
        this.f35965g = appsize;
        this.f35966h = appsize2;
        this.f35967i = downloadapp;
        this.f35968j = downloadapp2;
        this.f35969k = itemLeft;
        this.f35970l = itemRight;
        this.f35971m = moneyText;
        this.f35972n = moneyText2;
    }

    @NonNull
    public static aq0 bind(@NonNull View rootView) {
        int i10 = R.id.appimage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appimage);
        if (simpleDraweeView != null) {
            i10 = R.id.appimage2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appimage2);
            if (simpleDraweeView2 != null) {
                i10 = R.id.appname;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname);
                if (textView != null) {
                    i10 = R.id.appname2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname2);
                    if (textView2 != null) {
                        i10 = R.id.appsize;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appsize);
                        if (textView3 != null) {
                            i10 = R.id.appsize2;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appsize2);
                            if (textView4 != null) {
                                i10 = R.id.downloadapp;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downloadapp);
                                if (textView5 != null) {
                                    i10 = R.id.downloadapp2;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downloadapp2);
                                    if (textView6 != null) {
                                        i10 = R.id.itemLeft;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.itemLeft);
                                        if (linearLayout != null) {
                                            i10 = R.id.itemRight;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.itemRight);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.moneyText;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                                if (textView7 != null) {
                                                    i10 = R.id.moneyText2;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText2);
                                                    if (textView8 != null) {
                                                        return new aq0((LinearLayout) rootView, simpleDraweeView, simpleDraweeView2, textView, textView2, textView3, textView4, textView5, textView6, linearLayout, linearLayout2, textView7, textView8);
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
    public static aq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35960b;
    }

    @NonNull
    public static aq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_guessyoulike_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
