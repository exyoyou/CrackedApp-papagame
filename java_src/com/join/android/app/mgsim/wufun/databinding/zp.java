package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48346d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48347e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48348f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48349g;

    private zp(@NonNull LinearLayout rootView, @NonNull TextView commentNumber, @NonNull TextView more, @NonNull TextView textView3, @NonNull TextView textView9, @NonNull TextView xx) {
        this.f48344b = rootView;
        this.f48345c = commentNumber;
        this.f48346d = more;
        this.f48347e = textView3;
        this.f48348f = textView9;
        this.f48349g = xx;
    }

    @NonNull
    public static zp bind(@NonNull View rootView) {
        int i10 = R.id.comment_number;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_number);
        if (textView != null) {
            i10 = R.id.more;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.more);
            if (textView2 != null) {
                i10 = R.id.textView3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                if (textView3 != null) {
                    i10 = R.id.textView9;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                    if (textView4 != null) {
                        i10 = R.id.xx;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.xx);
                        if (textView5 != null) {
                            return new zp((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48344b;
    }

    @NonNull
    public static zp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_information_comment_top, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
