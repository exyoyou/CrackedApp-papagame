package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f37154c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37155d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37156e;

    private cy0(@NonNull RelativeLayout rootView, @NonNull View line, @NonNull TextView more, @NonNull TextView title) {
        this.f37153b = rootView;
        this.f37154c = line;
        this.f37155d = more;
        this.f37156e = title;
    }

    @NonNull
    public static cy0 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.more;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.more);
            if (textView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                if (textView2 != null) {
                    return new cy0((RelativeLayout) rootView, viewFindChildViewById, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37153b;
    }

    @NonNull
    public static cy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.vip_center_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
