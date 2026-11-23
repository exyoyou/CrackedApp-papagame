package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class h2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f39124c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39125d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f39126e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39127f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f39128g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39129h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Button f39130i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f39131j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f39132k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f39133l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TableLayout f39134m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final Button f39135n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final Button f39136o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f39137p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f39138q;

    private h2(@NonNull LinearLayout rootView, @NonNull Button a10, @NonNull TextView aTv, @NonNull Button b10, @NonNull TextView bTv, @NonNull Button l10, @NonNull TextView l1Tv, @NonNull Button l11, @NonNull TextView l2Tv, @NonNull Button r10, @NonNull TextView r1Tv, @NonNull TableLayout tableMain, @NonNull Button turboA, @NonNull Button turboB, @NonNull TextView xTv, @NonNull TextView yTv) {
        this.f39123b = rootView;
        this.f39124c = a10;
        this.f39125d = aTv;
        this.f39126e = b10;
        this.f39127f = bTv;
        this.f39128g = l10;
        this.f39129h = l1Tv;
        this.f39130i = l11;
        this.f39131j = l2Tv;
        this.f39132k = r10;
        this.f39133l = r1Tv;
        this.f39134m = tableMain;
        this.f39135n = turboA;
        this.f39136o = turboB;
        this.f39137p = xTv;
        this.f39138q = yTv;
    }

    @NonNull
    public static h2 bind(@NonNull View rootView) {
        int i10 = R.id.f35449a;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.f35449a);
        if (button != null) {
            i10 = R.id.a_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.a_tv);
            if (textView != null) {
                i10 = R.id.f35453b;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35453b);
                if (button2 != null) {
                    i10 = R.id.b_tv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.b_tv);
                    if (textView2 != null) {
                        i10 = R.id.f35471l;
                        Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35471l);
                        if (button3 != null) {
                            i10 = R.id.l1_tv;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.l1_tv);
                            if (textView3 != null) {
                                i10 = R.id.f35473l2;
                                Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35473l2);
                                if (button4 != null) {
                                    i10 = R.id.l2_tv;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.l2_tv);
                                    if (textView4 != null) {
                                        i10 = R.id.f35481r;
                                        Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35481r);
                                        if (button5 != null) {
                                            i10 = R.id.r1_tv;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.r1_tv);
                                            if (textView5 != null) {
                                                i10 = R.id.table_main;
                                                TableLayout tableLayout = (TableLayout) ViewBindings.findChildViewById(rootView, R.id.table_main);
                                                if (tableLayout != null) {
                                                    i10 = R.id.turbo_a;
                                                    Button button6 = (Button) ViewBindings.findChildViewById(rootView, R.id.turbo_a);
                                                    if (button6 != null) {
                                                        i10 = R.id.turbo_b;
                                                        Button button7 = (Button) ViewBindings.findChildViewById(rootView, R.id.turbo_b);
                                                        if (button7 != null) {
                                                            i10 = R.id.x_tv;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.x_tv);
                                                            if (textView6 != null) {
                                                                i10 = R.id.y_tv;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.y_tv);
                                                                if (textView7 != null) {
                                                                    return new h2((LinearLayout) rootView, button, textView, button2, textView2, button3, textView3, button4, textView4, button5, textView5, tableLayout, button6, button7, textView6, textView7);
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
    public static h2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39123b;
    }

    @NonNull
    public static h2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_gba_key_map, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
