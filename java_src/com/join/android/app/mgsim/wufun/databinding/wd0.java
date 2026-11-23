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
public final class wd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ListView f46759c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46761e;

    private wd0(@NonNull LinearLayout rootView, @NonNull ListView adminList, @NonNull TextView noAdminTest, @NonNull TextView save) {
        this.f46758b = rootView;
        this.f46759c = adminList;
        this.f46760d = noAdminTest;
        this.f46761e = save;
    }

    @NonNull
    public static wd0 bind(@NonNull View rootView) {
        int i10 = R.id.adminList;
        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.adminList);
        if (listView != null) {
            i10 = R.id.noAdminTest;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noAdminTest);
            if (textView != null) {
                i10 = R.id.save;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.save);
                if (textView2 != null) {
                    return new wd0((LinearLayout) rootView, listView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46758b;
    }

    @NonNull
    public static wd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.live_anchor_admin_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
