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
public final class zg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48220e;

    private zg(@NonNull LinearLayout rootView, @NonNull TextView tvContent, @NonNull TextView tvDownload, @NonNull TextView tvTitle) {
        this.f48217b = rootView;
        this.f48218c = tvContent;
        this.f48219d = tvDownload;
        this.f48220e = tvTitle;
    }

    @NonNull
    public static zg bind(@NonNull View rootView) {
        int i10 = R.id.tv_content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_content);
        if (textView != null) {
            i10 = R.id.tv_download;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_download);
            if (textView2 != null) {
                i10 = R.id.tv_title;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                if (textView3 != null) {
                    return new zg((LinearLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48217b;
    }

    @NonNull
    public static zg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_mod_download_support, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
