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
public final class x2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f47040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f47042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47043f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f47044g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final Button f47047j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47048k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final Button f47049l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f47050m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final Button f47051n;

    private x2(@NonNull LinearLayout rootView, @NonNull Button a10, @NonNull TextView aTv, @NonNull Button b10, @NonNull TextView bTv, @NonNull Button c10, @NonNull TextView l1Tv, @NonNull TextView r1Tv, @NonNull Button x10, @NonNull TextView xTv, @NonNull Button y10, @NonNull TextView yTv, @NonNull Button z10) {
        this.f47039b = rootView;
        this.f47040c = a10;
        this.f47041d = aTv;
        this.f47042e = b10;
        this.f47043f = bTv;
        this.f47044g = c10;
        this.f47045h = l1Tv;
        this.f47046i = r1Tv;
        this.f47047j = x10;
        this.f47048k = xTv;
        this.f47049l = y10;
        this.f47050m = yTv;
        this.f47051n = z10;
    }

    @NonNull
    public static x2 bind(@NonNull View rootView) {
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
                        i10 = R.id.f35454c;
                        Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35454c);
                        if (button3 != null) {
                            i10 = R.id.l1_tv;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.l1_tv);
                            if (textView3 != null) {
                                i10 = R.id.r1_tv;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.r1_tv);
                                if (textView4 != null) {
                                    i10 = R.id.f35491x;
                                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                    if (button4 != null) {
                                        i10 = R.id.x_tv;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.x_tv);
                                        if (textView5 != null) {
                                            i10 = R.id.f35492y;
                                            Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35492y);
                                            if (button5 != null) {
                                                i10 = R.id.y_tv;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.y_tv);
                                                if (textView6 != null) {
                                                    i10 = R.id.f35493z;
                                                    Button button6 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35493z);
                                                    if (button6 != null) {
                                                        return new x2((LinearLayout) rootView, button, textView, button2, textView2, button3, textView3, textView4, button4, textView5, button5, textView6, button6);
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
    public static x2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47039b;
    }

    @NonNull
    public static x2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_md_key_map, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
