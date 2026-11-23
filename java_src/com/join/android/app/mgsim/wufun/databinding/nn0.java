package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyGridView;

/* JADX INFO: loaded from: classes4.dex */
public final class nn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MyGridView f42432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f42433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ScrollView f42434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42435f;

    private nn0(@NonNull LinearLayout rootView, @NonNull MyGridView chooseGridView, @NonNull Button reginFinish, @NonNull ScrollView scrollView, @NonNull TextView titleTextview) {
        this.f42431b = rootView;
        this.f42432c = chooseGridView;
        this.f42433d = reginFinish;
        this.f42434e = scrollView;
        this.f42435f = titleTextview;
    }

    @NonNull
    public static nn0 bind(@NonNull View rootView) {
        int i10 = R.id.chooseGridView;
        MyGridView myGridView = (MyGridView) ViewBindings.findChildViewById(rootView, R.id.chooseGridView);
        if (myGridView != null) {
            i10 = R.id.reginFinish;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.reginFinish);
            if (button != null) {
                i10 = R.id.scrollView;
                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                if (scrollView != null) {
                    i10 = R.id.title_textview;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                    if (textView != null) {
                        return new nn0((LinearLayout) rootView, myGridView, button, scrollView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42431b;
    }

    @NonNull
    public static nn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_account_reginfinish_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
