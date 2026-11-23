package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class mp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ListView f42009c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f42010d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42012f;

    private mp0(@NonNull LinearLayout rootView, @NonNull ListView listView, @NonNull Button ok, @NonNull TextView textView, @NonNull TextView xxx) {
        this.f42008b = rootView;
        this.f42009c = listView;
        this.f42010d = ok;
        this.f42011e = textView;
        this.f42012f = xxx;
    }

    @NonNull
    public static mp0 bind(@NonNull View rootView) {
        int i10 = R.id.listView;
        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.listView);
        if (listView != null) {
            i10 = R.id.ok;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.ok);
            if (button != null) {
                i10 = R.id.textView;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                if (textView != null) {
                    i10 = R.id.xxx;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.xxx);
                    if (textView2 != null) {
                        return new mp0((LinearLayout) rootView, listView, button, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42008b;
    }

    @NonNull
    public static mp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papa_coupon_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
