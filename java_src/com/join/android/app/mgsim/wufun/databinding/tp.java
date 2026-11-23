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
public final class tp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45365c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45366d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45367e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f45368f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45369g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45370h;

    private tp(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull TextView date, @NonNull TextView dateMorning, @NonNull View line, @NonNull TextView message, @NonNull TextView messageType) {
        this.f45364b = rootView;
        this.f45365c = backLayout;
        this.f45366d = date;
        this.f45367e = dateMorning;
        this.f45368f = line;
        this.f45369g = message;
        this.f45370h = messageType;
    }

    @NonNull
    public static tp bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.date;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.date);
            if (textView != null) {
                i10 = R.id.dateMorning;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.dateMorning);
                if (textView2 != null) {
                    i10 = R.id.line;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.message;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                        if (textView3 != null) {
                            i10 = R.id.messageType;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.messageType);
                            if (textView4 != null) {
                                return new tp((LinearLayout) rootView, linearLayout, textView, textView2, viewFindChildViewById, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45364b;
    }

    @NonNull
    public static tp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detial_service_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
