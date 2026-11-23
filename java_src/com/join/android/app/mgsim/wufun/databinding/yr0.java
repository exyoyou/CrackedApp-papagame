package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47906c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47907d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47908e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47909f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f47910g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f47911h;

    private yr0(@NonNull ConstraintLayout rootView, @NonNull TextView cancel, @NonNull TextView delete, @NonNull TextView name, @NonNull TextView title, @NonNull View view5, @NonNull View view8) {
        this.f47905b = rootView;
        this.f47906c = cancel;
        this.f47907d = delete;
        this.f47908e = name;
        this.f47909f = title;
        this.f47910g = view5;
        this.f47911h = view8;
    }

    @NonNull
    public static yr0 bind(@NonNull View rootView) {
        int i10 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancel);
        if (textView != null) {
            i10 = R.id.delete;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.delete);
            if (textView2 != null) {
                i10 = R.id.name;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                if (textView3 != null) {
                    i10 = R.id.title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                    if (textView4 != null) {
                        i10 = R.id.view5;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view5);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.view8;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.view8);
                            if (viewFindChildViewById2 != null) {
                                return new yr0((ConstraintLayout) rootView, textView, textView2, textView3, textView4, viewFindChildViewById, viewFindChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47905b;
    }

    @NonNull
    public static yr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_my_game_deletesouce_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
