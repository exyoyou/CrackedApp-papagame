package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37121c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ListView f37122d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37123e;

    private cv0(@NonNull LinearLayout rootView, @NonNull LinearLayout close, @NonNull ListView list, @NonNull TextView title) {
        this.f37120b = rootView;
        this.f37121c = close;
        this.f37122d = list;
        this.f37123e = title;
    }

    @NonNull
    public static cv0 bind(@NonNull View rootView) {
        int i10 = R.id.close;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.close);
        if (linearLayout != null) {
            i10 = R.id.list;
            ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.list);
            if (listView != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                if (textView != null) {
                    return new cv0((LinearLayout) rootView, linearLayout, listView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37120b;
    }

    @NonNull
    public static cv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.simple_sheet_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
