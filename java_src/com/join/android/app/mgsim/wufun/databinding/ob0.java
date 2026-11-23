package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ob0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ScrollView f42770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42772f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42773g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42774h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42775i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42776j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42777k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f42778l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f42779m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f42780n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42781o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42782p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f42783q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f42784r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f42785s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f42786t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42787u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f42788v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f42789w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f42790x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final View f42791y;

    private ob0(@NonNull LinearLayout rootView, @NonNull ImageView close, @NonNull ScrollView scrollView, @NonNull TextView textView101, @NonNull TextView textView93, @NonNull TextView tvLabel1, @NonNull TextView tvLabel2, @NonNull TextView tvLabel21, @NonNull TextView tvLabel22, @NonNull TextView tvLabel23, @NonNull TextView tvLabel24, @NonNull TextView tvLabel25, @NonNull TextView tvLabel3, @NonNull TextView tvLabel4, @NonNull TextView tvValue1, @NonNull TextView tvValue2, @NonNull TextView tvValue21, @NonNull TextView tvValue22, @NonNull TextView tvValue23, @NonNull TextView tvValue24, @NonNull TextView tvValue25, @NonNull TextView tvValue3, @NonNull TextView tvValue4, @NonNull View vLine) {
        this.f42768b = rootView;
        this.f42769c = close;
        this.f42770d = scrollView;
        this.f42771e = textView101;
        this.f42772f = textView93;
        this.f42773g = tvLabel1;
        this.f42774h = tvLabel2;
        this.f42775i = tvLabel21;
        this.f42776j = tvLabel22;
        this.f42777k = tvLabel23;
        this.f42778l = tvLabel24;
        this.f42779m = tvLabel25;
        this.f42780n = tvLabel3;
        this.f42781o = tvLabel4;
        this.f42782p = tvValue1;
        this.f42783q = tvValue2;
        this.f42784r = tvValue21;
        this.f42785s = tvValue22;
        this.f42786t = tvValue23;
        this.f42787u = tvValue24;
        this.f42788v = tvValue25;
        this.f42789w = tvValue3;
        this.f42790x = tvValue4;
        this.f42791y = vLine;
    }

    @NonNull
    public static ob0 bind(@NonNull View rootView) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
        if (imageView != null) {
            i10 = R.id.scrollView;
            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
            if (scrollView != null) {
                i10 = R.id.textView101;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView101);
                if (textView != null) {
                    i10 = R.id.textView93;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView93);
                    if (textView2 != null) {
                        i10 = R.id.tv_label1;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label1);
                        if (textView3 != null) {
                            i10 = R.id.tv_label2;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label2);
                            if (textView4 != null) {
                                i10 = R.id.tv_label21;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label21);
                                if (textView5 != null) {
                                    i10 = R.id.tv_label22;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label22);
                                    if (textView6 != null) {
                                        i10 = R.id.tv_label23;
                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label23);
                                        if (textView7 != null) {
                                            i10 = R.id.tv_label24;
                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label24);
                                            if (textView8 != null) {
                                                i10 = R.id.tv_label25;
                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label25);
                                                if (textView9 != null) {
                                                    i10 = R.id.tv_label3;
                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label3);
                                                    if (textView10 != null) {
                                                        i10 = R.id.tv_label4;
                                                        TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label4);
                                                        if (textView11 != null) {
                                                            i10 = R.id.tv_value1;
                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value1);
                                                            if (textView12 != null) {
                                                                i10 = R.id.tv_value2;
                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value2);
                                                                if (textView13 != null) {
                                                                    i10 = R.id.tv_value21;
                                                                    TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value21);
                                                                    if (textView14 != null) {
                                                                        i10 = R.id.tv_value22;
                                                                        TextView textView15 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value22);
                                                                        if (textView15 != null) {
                                                                            i10 = R.id.tv_value23;
                                                                            TextView textView16 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value23);
                                                                            if (textView16 != null) {
                                                                                i10 = R.id.tv_value24;
                                                                                TextView textView17 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value24);
                                                                                if (textView17 != null) {
                                                                                    i10 = R.id.tv_value25;
                                                                                    TextView textView18 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value25);
                                                                                    if (textView18 != null) {
                                                                                        i10 = R.id.tv_value3;
                                                                                        TextView textView19 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value3);
                                                                                        if (textView19 != null) {
                                                                                            i10 = R.id.tv_value4;
                                                                                            TextView textView20 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value4);
                                                                                            if (textView20 != null) {
                                                                                                i10 = R.id.v_line;
                                                                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_line);
                                                                                                if (viewFindChildViewById != null) {
                                                                                                    return new ob0((LinearLayout) rootView, imageView, scrollView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, viewFindChildViewById);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ob0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42768b;
    }

    @NonNull
    public static ob0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_pc_game_detail_sheet_profile, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
