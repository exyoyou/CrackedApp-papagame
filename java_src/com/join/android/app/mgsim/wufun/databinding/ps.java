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
public final class ps implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43509f;

    private ps(@NonNull LinearLayout rootView, @NonNull TextView day, @NonNull TextView serverName, @NonNull TextView tag, @NonNull TextView time) {
        this.f43505b = rootView;
        this.f43506c = day;
        this.f43507d = serverName;
        this.f43508e = tag;
        this.f43509f = time;
    }

    @NonNull
    public static ps bind(@NonNull View rootView) {
        int i10 = R.id.day;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.day);
        if (textView != null) {
            i10 = R.id.serverName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.serverName);
            if (textView2 != null) {
                i10 = R.id.tag;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tag);
                if (textView3 != null) {
                    i10 = R.id.time;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.time);
                    if (textView4 != null) {
                        return new ps((LinearLayout) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ps inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43505b;
    }

    @NonNull
    public static ps inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_bt_serviceinfo_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
