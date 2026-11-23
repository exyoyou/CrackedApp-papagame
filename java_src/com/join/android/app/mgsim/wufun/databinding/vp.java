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
public final class vp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46375d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f46376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46377f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46378g;

    private vp(@NonNull LinearLayout rootView, @NonNull TextView date, @NonNull TextView dateMorning, @NonNull View lineH, @NonNull TextView message, @NonNull TextView messageType) {
        this.f46373b = rootView;
        this.f46374c = date;
        this.f46375d = dateMorning;
        this.f46376e = lineH;
        this.f46377f = message;
        this.f46378g = messageType;
    }

    @NonNull
    public static vp bind(@NonNull View rootView) {
        int i10 = R.id.date;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.date);
        if (textView != null) {
            i10 = R.id.dateMorning;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dateMorning);
            if (textView2 != null) {
                i10 = R.id.line_h;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line_h);
                if (viewFindChildViewById != null) {
                    i10 = R.id.message;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                    if (textView3 != null) {
                        i10 = R.id.messageType;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageType);
                        if (textView4 != null) {
                            return new vp((LinearLayout) rootView, textView, textView2, viewFindChildViewById, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46373b;
    }

    @NonNull
    public static vp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detialmore_service_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
