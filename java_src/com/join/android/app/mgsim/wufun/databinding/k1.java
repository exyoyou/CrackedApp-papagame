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
public final class k1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f40520c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f40522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f40523f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40524g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40525h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Button f40526i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40527j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f40528k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40529l;

    private k1(@NonNull LinearLayout rootView, @NonNull Button a10, @NonNull TextView aTv, @NonNull Button ab2, @NonNull Button b10, @NonNull TextView bTv, @NonNull TextView r1Tv, @NonNull Button x10, @NonNull TextView xTv, @NonNull Button y10, @NonNull TextView yTv) {
        this.f40519b = rootView;
        this.f40520c = a10;
        this.f40521d = aTv;
        this.f40522e = ab2;
        this.f40523f = b10;
        this.f40524g = bTv;
        this.f40525h = r1Tv;
        this.f40526i = x10;
        this.f40527j = xTv;
        this.f40528k = y10;
        this.f40529l = yTv;
    }

    @NonNull
    public static k1 bind(@NonNull View rootView) {
        int i10 = R.id.f35449a;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.f35449a);
        if (button != null) {
            i10 = R.id.a_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.a_tv);
            if (textView != null) {
                i10 = R.id.f35451ab;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35451ab);
                if (button2 != null) {
                    i10 = R.id.f35453b;
                    Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35453b);
                    if (button3 != null) {
                        i10 = R.id.b_tv;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.b_tv);
                        if (textView2 != null) {
                            i10 = R.id.r1_tv;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.r1_tv);
                            if (textView3 != null) {
                                i10 = R.id.f35491x;
                                Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                if (button4 != null) {
                                    i10 = R.id.x_tv;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.x_tv);
                                    if (textView4 != null) {
                                        i10 = R.id.f35492y;
                                        Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.f35492y);
                                        if (button5 != null) {
                                            i10 = R.id.y_tv;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.y_tv);
                                            if (textView5 != null) {
                                                return new k1((LinearLayout) rootView, button, textView, button2, button3, textView2, textView3, button4, textView4, button5, textView5);
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
    public static k1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40519b;
    }

    @NonNull
    public static k1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_fc_key_map, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
