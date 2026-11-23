package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class u5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45558c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45559d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f45560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45561f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f45562g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45563h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Button f45564i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45565j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f45566k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f45567l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final Button f45568m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f45569n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final Button f45570o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f45571p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final Button f45572q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f45573r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final Button f45574s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f45575t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final Button f45576u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f45577v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final Button f45578w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f45579x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final Button f45580y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f45581z;

    private u5(@NonNull LinearLayout rootView, @NonNull Button a10, @NonNull TextView aTv, @NonNull Button b10, @NonNull TextView bTv, @NonNull Button down, @NonNull TextView downTv, @NonNull Button l10, @NonNull TextView l1Tv, @NonNull Button l11, @NonNull TextView l2Tv, @NonNull Button left, @NonNull TextView leftTv, @NonNull Button r10, @NonNull TextView r1Tv, @NonNull Button r11, @NonNull TextView r2Tv, @NonNull Button right, @NonNull TextView rightTv, @NonNull Button select, @NonNull TextView selectTv, @NonNull Button start, @NonNull TextView startTv, @NonNull Button up, @NonNull TextView upTv) {
        this.f45557b = rootView;
        this.f45558c = a10;
        this.f45559d = aTv;
        this.f45560e = b10;
        this.f45561f = bTv;
        this.f45562g = down;
        this.f45563h = downTv;
        this.f45564i = l10;
        this.f45565j = l1Tv;
        this.f45566k = l11;
        this.f45567l = l2Tv;
        this.f45568m = left;
        this.f45569n = leftTv;
        this.f45570o = r10;
        this.f45571p = r1Tv;
        this.f45572q = r11;
        this.f45573r = r2Tv;
        this.f45574s = right;
        this.f45575t = rightTv;
        this.f45576u = select;
        this.f45577v = selectTv;
        this.f45578w = start;
        this.f45579x = startTv;
        this.f45580y = up;
        this.f45581z = upTv;
    }

    @NonNull
    public static u5 bind(@NonNull View rootView) {
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
                        i10 = R.id.down;
                        Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.down);
                        if (button3 != null) {
                            i10 = R.id.down_tv;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.down_tv);
                            if (textView3 != null) {
                                i10 = R.id.f35472l1;
                                Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35472l1);
                                if (button4 != null) {
                                    i10 = R.id.l1_tv;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.l1_tv);
                                    if (textView4 != null) {
                                        i10 = R.id.f35473l2;
                                        Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35473l2);
                                        if (button5 != null) {
                                            i10 = R.id.l2_tv;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.l2_tv);
                                            if (textView5 != null) {
                                                i10 = R.id.left;
                                                Button button6 = (Button) ViewBindings.findChildViewById(rootView, R.id.left);
                                                if (button6 != null) {
                                                    i10 = R.id.left_tv;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.left_tv);
                                                    if (textView6 != null) {
                                                        i10 = R.id.f35482r1;
                                                        Button button7 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35482r1);
                                                        if (button7 != null) {
                                                            i10 = R.id.r1_tv;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.r1_tv);
                                                            if (textView7 != null) {
                                                                i10 = R.id.f35483r2;
                                                                Button button8 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35483r2);
                                                                if (button8 != null) {
                                                                    i10 = R.id.r2_tv;
                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.r2_tv);
                                                                    if (textView8 != null) {
                                                                        i10 = R.id.right;
                                                                        Button button9 = (Button) ViewBindings.findChildViewById(rootView, R.id.right);
                                                                        if (button9 != null) {
                                                                            i10 = R.id.right_tv;
                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.right_tv);
                                                                            if (textView9 != null) {
                                                                                i10 = R.id.select;
                                                                                Button button10 = (Button) ViewBindings.findChildViewById(rootView, R.id.select);
                                                                                if (button10 != null) {
                                                                                    i10 = R.id.select_tv;
                                                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.select_tv);
                                                                                    if (textView10 != null) {
                                                                                        i10 = R.id.start;
                                                                                        Button button11 = (Button) ViewBindings.findChildViewById(rootView, R.id.start);
                                                                                        if (button11 != null) {
                                                                                            i10 = R.id.start_tv;
                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.start_tv);
                                                                                            if (textView11 != null) {
                                                                                                i10 = R.id.up;
                                                                                                Button button12 = (Button) ViewBindings.findChildViewById(rootView, R.id.up);
                                                                                                if (button12 != null) {
                                                                                                    i10 = R.id.up_tv;
                                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.up_tv);
                                                                                                    if (textView12 != null) {
                                                                                                        return new u5((LinearLayout) rootView, button, textView, button2, textView2, button3, textView3, button4, textView4, button5, textView5, button6, textView6, button7, textView7, button8, textView8, button9, textView9, button10, textView10, button11, textView11, button12, textView12);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static u5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45557b;
    }

    @NonNull
    public static u5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_wsc_key_map, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
