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
public final class cs0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f37093e;

    private cs0(@NonNull LinearLayout rootView, @NonNull TextView delete, @NonNull TextView detail, @NonNull View line) {
        this.f37090b = rootView;
        this.f37091c = delete;
        this.f37092d = detail;
        this.f37093e = line;
    }

    @NonNull
    public static cs0 bind(@NonNull View rootView) {
        int i10 = R.id.delete;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.delete);
        if (textView != null) {
            i10 = R.id.detail;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.detail);
            if (textView2 != null) {
                i10 = R.id.line;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                if (viewFindChildViewById != null) {
                    return new cs0((LinearLayout) rootView, textView, textView2, viewFindChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cs0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37090b;
    }

    @NonNull
    public static cs0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_my_game_plug, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
