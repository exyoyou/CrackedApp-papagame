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
public final class x3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f47057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47058d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f47059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47060f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f47061g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47062h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Button f47063i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47064j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TableLayout f47065k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final Button f47066l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f47067m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final Button f47068n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f47069o;

    private x3(@NonNull LinearLayout rootView, @NonNull Button a10, @NonNull TextView aTv, @NonNull Button b10, @NonNull TextView bTv, @NonNull Button l10, @NonNull TextView l1Tv, @NonNull Button r10, @NonNull TextView r1Tv, @NonNull TableLayout tableMain, @NonNull Button x10, @NonNull TextView xTv, @NonNull Button y10, @NonNull TextView yTv) {
        this.f47056b = rootView;
        this.f47057c = a10;
        this.f47058d = aTv;
        this.f47059e = b10;
        this.f47060f = bTv;
        this.f47061g = l10;
        this.f47062h = l1Tv;
        this.f47063i = r10;
        this.f47064j = r1Tv;
        this.f47065k = tableMain;
        this.f47066l = x10;
        this.f47067m = xTv;
        this.f47068n = y10;
        this.f47069o = yTv;
    }

    @NonNull
    public static x3 bind(@NonNull View rootView) {
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
                                i10 = R.id.f35481r;
                                Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35481r);
                                if (button4 != null) {
                                    i10 = R.id.r1_tv;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.r1_tv);
                                    if (textView4 != null) {
                                        i10 = R.id.table_main;
                                        TableLayout tableLayout = (TableLayout) ViewBindings.findChildViewById(rootView, R.id.table_main);
                                        if (tableLayout != null) {
                                            i10 = R.id.f35491x;
                                            Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                            if (button5 != null) {
                                                i10 = R.id.x_tv;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.x_tv);
                                                if (textView5 != null) {
                                                    i10 = R.id.f35492y;
                                                    Button button6 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35492y);
                                                    if (button6 != null) {
                                                        i10 = R.id.y_tv;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.y_tv);
                                                        if (textView6 != null) {
                                                            return new x3((LinearLayout) rootView, button, textView, button2, textView2, button3, textView3, button4, textView4, tableLayout, button5, textView5, button6, textView6);
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
    public static x3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47056b;
    }

    @NonNull
    public static x3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_psp_key_map, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
