package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CheckBox f41559e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CheckBox f41560f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41561g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final CheckBox f41562h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41563i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final CheckBox f41564j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41565k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final CheckBox f41566l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41567m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f41568n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f41569o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f41570p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f41571q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f41572r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f41573s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f41574t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f41575u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f41576v;

    private lu(@NonNull RelativeLayout rootView, @NonNull LinearLayout notice10, @NonNull LinearLayout notice100, @NonNull CheckBox notice100box, @NonNull CheckBox notice10box, @NonNull LinearLayout notice50, @NonNull CheckBox notice50box, @NonNull LinearLayout noticeall, @NonNull CheckBox noticeallbox, @NonNull LinearLayout noticeno, @NonNull CheckBox noticenobox, @NonNull TextView textView, @NonNull TextView textView11, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView9, @NonNull TextView titleText) {
        this.f41556b = rootView;
        this.f41557c = notice10;
        this.f41558d = notice100;
        this.f41559e = notice100box;
        this.f41560f = notice10box;
        this.f41561g = notice50;
        this.f41562h = notice50box;
        this.f41563i = noticeall;
        this.f41564j = noticeallbox;
        this.f41565k = noticeno;
        this.f41566l = noticenobox;
        this.f41567m = textView;
        this.f41568n = textView11;
        this.f41569o = textView2;
        this.f41570p = textView3;
        this.f41571q = textView4;
        this.f41572r = textView5;
        this.f41573s = textView6;
        this.f41574t = textView7;
        this.f41575u = textView9;
        this.f41576v = titleText;
    }

    @NonNull
    public static lu bind(@NonNull View rootView) {
        int i10 = R.id.notice10;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.notice10);
        if (linearLayout != null) {
            i10 = R.id.notice100;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.notice100);
            if (linearLayout2 != null) {
                i10 = R.id.notice100box;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.notice100box);
                if (checkBox != null) {
                    i10 = R.id.notice10box;
                    CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.notice10box);
                    if (checkBox2 != null) {
                        i10 = R.id.notice50;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.notice50);
                        if (linearLayout3 != null) {
                            i10 = R.id.notice50box;
                            CheckBox checkBox3 = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.notice50box);
                            if (checkBox3 != null) {
                                i10 = R.id.noticeall;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.noticeall);
                                if (linearLayout4 != null) {
                                    i10 = R.id.noticeallbox;
                                    CheckBox checkBox4 = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.noticeallbox);
                                    if (checkBox4 != null) {
                                        i10 = R.id.noticeno;
                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.noticeno);
                                        if (linearLayout5 != null) {
                                            i10 = R.id.noticenobox;
                                            CheckBox checkBox5 = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.noticenobox);
                                            if (checkBox5 != null) {
                                                i10 = R.id.textView;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                                if (textView != null) {
                                                    i10 = R.id.textView11;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView11);
                                                    if (textView2 != null) {
                                                        i10 = R.id.textView2;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                                                        if (textView3 != null) {
                                                            i10 = R.id.textView3;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                                                            if (textView4 != null) {
                                                                i10 = R.id.textView4;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView4);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.textView5;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView5);
                                                                    if (textView6 != null) {
                                                                        i10 = R.id.textView6;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView6);
                                                                        if (textView7 != null) {
                                                                            i10 = R.id.textView7;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView7);
                                                                            if (textView8 != null) {
                                                                                i10 = R.id.textView9;
                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                                                                if (textView9 != null) {
                                                                                    i10 = R.id.titleText;
                                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                                    if (textView10 != null) {
                                                                                        return new lu((RelativeLayout) rootView, linearLayout, linearLayout2, checkBox, checkBox2, linearLayout3, checkBox3, linearLayout4, checkBox4, linearLayout5, checkBox5, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10);
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
    public static lu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41556b;
    }

    @NonNull
    public static lu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gprs_choice_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
