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
public final class cf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36909d;

    private cf(@NonNull RelativeLayout rootView, @NonNull TextView downloadDialogOneTv, @NonNull TextView downloadDialogTwoTv) {
        this.f36907b = rootView;
        this.f36908c = downloadDialogOneTv;
        this.f36909d = downloadDialogTwoTv;
    }

    @NonNull
    public static cf bind(@NonNull View rootView) {
        int i10 = R.id.downloadDialogOneTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.downloadDialogOneTv);
        if (textView != null) {
            i10 = R.id.downloadDialogTwoTv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downloadDialogTwoTv);
            if (textView2 != null) {
                return new cf((RelativeLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36907b;
    }

    @NonNull
    public static cf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_download_bottom_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
