package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class gu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CheckBox f38987c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CheckBox f38988d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38990f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38991g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38992h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final CheckBox f38993i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38994j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f38995k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f38996l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f38997m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f38998n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f38999o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f39000p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f39001q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f39002r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39003s;

    private gu(@NonNull RelativeLayout rootView, @NonNull CheckBox gbaNewPlug, @NonNull CheckBox gbaOld, @NonNull ImageView imageView3, @NonNull LinearLayout newGBAOlug, @NonNull LinearLayout oldGBAPlug, @NonNull LinearLayout showdialog, @NonNull CheckBox showdialogPlug, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView9, @NonNull TextView titleText, @NonNull LinearLayout why) {
        this.f38986b = rootView;
        this.f38987c = gbaNewPlug;
        this.f38988d = gbaOld;
        this.f38989e = imageView3;
        this.f38990f = newGBAOlug;
        this.f38991g = oldGBAPlug;
        this.f38992h = showdialog;
        this.f38993i = showdialogPlug;
        this.f38994j = textView;
        this.f38995k = textView2;
        this.f38996l = textView3;
        this.f38997m = textView4;
        this.f38998n = textView5;
        this.f38999o = textView6;
        this.f39000p = textView7;
        this.f39001q = textView9;
        this.f39002r = titleText;
        this.f39003s = why;
    }

    @NonNull
    public static gu bind(@NonNull View rootView) {
        int i10 = R.id.gbaNewPlug;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.gbaNewPlug);
        if (checkBox != null) {
            i10 = R.id.gbaOld;
            CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.gbaOld);
            if (checkBox2 != null) {
                i10 = R.id.imageView3;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView3);
                if (imageView != null) {
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
                                CheckBox checkBox3 = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.showdialogPlug);
                                if (checkBox3 != null) {
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
                                                                i10 = R.id.textView9;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                                                if (textView8 != null) {
                                                                    i10 = R.id.titleText;
                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                    if (textView9 != null) {
                                                                        i10 = R.id.why;
                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.why);
                                                                        if (linearLayout4 != null) {
                                                                            return new gu((RelativeLayout) rootView, checkBox, checkBox2, imageView, linearLayout, linearLayout2, linearLayout3, checkBox3, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, linearLayout4);
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
    public static gu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38986b;
    }

    @NonNull
    public static gu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gbaplug_choice_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
