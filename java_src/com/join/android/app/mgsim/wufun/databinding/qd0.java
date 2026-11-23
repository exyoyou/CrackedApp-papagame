package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f43770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f43772f;

    private qd0(@NonNull LinearLayout rootView, @NonNull TextView createTime, @NonNull Button install, @NonNull TextView name, @NonNull ImageView portrait) {
        this.f43768b = rootView;
        this.f43769c = createTime;
        this.f43770d = install;
        this.f43771e = name;
        this.f43772f = portrait;
    }

    @NonNull
    public static qd0 bind(@NonNull View rootView) {
        int i10 = R.id.createTime;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.createTime);
        if (textView != null) {
            i10 = R.id.install;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.install);
            if (button != null) {
                i10 = R.id.name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                if (textView2 != null) {
                    i10 = R.id.portrait;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.portrait);
                    if (imageView != null) {
                        return new qd0((LinearLayout) rootView, textView, button, textView2, imageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43768b;
    }

    @NonNull
    public static qd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.listview_download, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
