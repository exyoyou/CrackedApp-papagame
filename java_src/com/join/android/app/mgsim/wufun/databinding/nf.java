package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class nf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42304c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ListView f42305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42306e;

    private nf(@NonNull RelativeLayout rootView, @NonNull ImageView cancel, @NonNull ListView listView, @NonNull TextView tvTop) {
        this.f42303b = rootView;
        this.f42304c = cancel;
        this.f42305d = listView;
        this.f42306e = tvTop;
    }

    @NonNull
    public static nf bind(@NonNull View rootView) {
        int i10 = R.id.cancel;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.cancel);
        if (imageView != null) {
            i10 = R.id.listView;
            ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.listView);
            if (listView != null) {
                i10 = R.id.tv_top;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_top);
                if (textView != null) {
                    return new nf((RelativeLayout) rootView, imageView, listView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42303b;
    }

    @NonNull
    public static nf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_fight_server_chose, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
