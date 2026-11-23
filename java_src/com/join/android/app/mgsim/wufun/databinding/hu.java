package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
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
public final class hu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39491c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f39492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f39494f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39495g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39496h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39497i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final CheckBox f39498j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f39499k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f39500l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f39501m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f39502n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f39503o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f39504p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f39505q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f39506r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f39507s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39508t;

    private hu(@NonNull RelativeLayout rootView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull Button imageViewx, @NonNull LinearLayout newGBAOlug, @NonNull LinearLayout oldGBAPlug, @NonNull LinearLayout showdialog, @NonNull CheckBox showdialogPlug, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView titleText, @NonNull LinearLayout why) {
        this.f39490b = rootView;
        this.f39491c = imageView;
        this.f39492d = imageView2;
        this.f39493e = imageView3;
        this.f39494f = imageViewx;
        this.f39495g = newGBAOlug;
        this.f39496h = oldGBAPlug;
        this.f39497i = showdialog;
        this.f39498j = showdialogPlug;
        this.f39499k = textView;
        this.f39500l = textView2;
        this.f39501m = textView3;
        this.f39502n = textView4;
        this.f39503o = textView5;
        this.f39504p = textView6;
        this.f39505q = textView7;
        this.f39506r = textView8;
        this.f39507s = titleText;
        this.f39508t = why;
    }

    @NonNull
    public static hu bind(@NonNull View rootView) {
        int i10 = R.id.imageView;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
        if (imageView != null) {
            i10 = R.id.imageView2;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView2);
            if (imageView2 != null) {
                i10 = R.id.imageView3;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView3);
                if (imageView3 != null) {
                    i10 = R.id.imageViewx;
                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.imageViewx);
                    if (button != null) {
                        i10 = R.id.newGBAOlug;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.newGBAOlug);
                        if (linearLayout != null) {
                            i10 = R.id.oldGBAPlug;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.oldGBAPlug);
                            if (linearLayout2 != null) {
                                i10 = R.id.showdialog;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.showdialog);
                                if (linearLayout3 != null) {
                                    i10 = R.id.showdialogPlug;
                                    CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.showdialogPlug);
                                    if (checkBox != null) {
                                        i10 = R.id.textView;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                        if (textView != null) {
                                            i10 = R.id.textView2;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                                            if (textView2 != null) {
                                                i10 = R.id.textView3;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                                                if (textView3 != null) {
                                                    i10 = R.id.textView4;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView4);
                                                    if (textView4 != null) {
                                                        i10 = R.id.textView5;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView5);
                                                        if (textView5 != null) {
                                                            i10 = R.id.textView6;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView6);
                                                            if (textView6 != null) {
                                                                i10 = R.id.textView7;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView7);
                                                                if (textView7 != null) {
                                                                    i10 = R.id.textView8;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView8);
                                                                    if (textView8 != null) {
                                                                        i10 = R.id.titleText;
                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                        if (textView9 != null) {
                                                                            i10 = R.id.why;
                                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.why);
                                                                            if (linearLayout4 != null) {
                                                                                return new hu((RelativeLayout) rootView, imageView, imageView2, imageView3, button, linearLayout, linearLayout2, linearLayout3, checkBox, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, linearLayout4);
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
    public static hu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39490b;
    }

    @NonNull
    public static hu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gbaplug_choice_start_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
