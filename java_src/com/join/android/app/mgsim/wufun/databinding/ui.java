package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ui implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45711f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45712g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45713h;

    private ui(@NonNull RelativeLayout rootView, @NonNull LinearLayout allpath, @NonNull TextView cancletext, @NonNull TextView ok, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView titleText) {
        this.f45707b = rootView;
        this.f45708c = allpath;
        this.f45709d = cancletext;
        this.f45710e = ok;
        this.f45711f = textView5;
        this.f45712g = textView6;
        this.f45713h = titleText;
    }

    @NonNull
    public static ui bind(@NonNull View rootView) {
        int i10 = R.id.allpath;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.allpath);
        if (linearLayout != null) {
            i10 = R.id.cancletext;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancletext);
            if (textView != null) {
                i10 = R.id.ok;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                if (textView2 != null) {
                    i10 = R.id.textView5;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView5);
                    if (textView3 != null) {
                        i10 = R.id.textView6;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView6);
                        if (textView4 != null) {
                            i10 = R.id.titleText;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                            if (textView5 != null) {
                                return new ui((RelativeLayout) rootView, linearLayout, textView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ui inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45707b;
    }

    @NonNull
    public static ui inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.download_choice_url_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
