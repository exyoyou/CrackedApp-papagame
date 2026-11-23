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
public final class w3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f46590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f46592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f46594g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46595h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Button f46596i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f46597j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f46598k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46599l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final Button f46600m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f46601n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TableLayout f46602o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final Button f46603p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f46604q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final Button f46605r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f46606s;

    private w3(@NonNull LinearLayout rootView, @NonNull Button a10, @NonNull TextView aTv, @NonNull Button b10, @NonNull TextView bTv, @NonNull Button l10, @NonNull TextView l1Tv, @NonNull Button l11, @NonNull TextView l2Tv, @NonNull Button r10, @NonNull TextView r1Tv, @NonNull Button r11, @NonNull TextView r2Tv, @NonNull TableLayout tableMain, @NonNull Button x10, @NonNull TextView xTv, @NonNull Button y10, @NonNull TextView yTv) {
        this.f46589b = rootView;
        this.f46590c = a10;
        this.f46591d = aTv;
        this.f46592e = b10;
        this.f46593f = bTv;
        this.f46594g = l10;
        this.f46595h = l1Tv;
        this.f46596i = l11;
        this.f46597j = l2Tv;
        this.f46598k = r10;
        this.f46599l = r1Tv;
        this.f46600m = r11;
        this.f46601n = r2Tv;
        this.f46602o = tableMain;
        this.f46603p = x10;
        this.f46604q = xTv;
        this.f46605r = y10;
        this.f46606s = yTv;
    }

    @NonNull
    public static w3 bind(@NonNull View rootView) {
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
                        i10 = R.id.f35472l1;
                        Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35472l1);
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
                                        i10 = R.id.f35482r1;
                                        Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35482r1);
                                        if (button5 != null) {
                                            i10 = R.id.r1_tv;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.r1_tv);
                                            if (textView5 != null) {
                                                i10 = R.id.f35483r2;
                                                Button button6 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35483r2);
                                                if (button6 != null) {
                                                    i10 = R.id.r2_tv;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.r2_tv);
                                                    if (textView6 != null) {
                                                        i10 = R.id.table_main;
                                                        TableLayout tableLayout = (TableLayout) ViewBindings.findChildViewById(rootView, R.id.table_main);
                                                        if (tableLayout != null) {
                                                            i10 = R.id.f35491x;
                                                            Button button7 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                                            if (button7 != null) {
                                                                i10 = R.id.x_tv;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.x_tv);
                                                                if (textView7 != null) {
                                                                    i10 = R.id.f35492y;
                                                                    Button button8 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35492y);
                                                                    if (button8 != null) {
                                                                        i10 = R.id.y_tv;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.y_tv);
                                                                        if (textView8 != null) {
                                                                            return new w3((LinearLayout) rootView, button, textView, button2, textView2, button3, textView3, button4, textView4, button5, textView5, button6, textView6, tableLayout, button7, textView7, button8, textView8);
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
    public static w3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46589b;
    }

    @NonNull
    public static w3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_ps_key_map, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
