package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class l10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f41101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41103d;

    private l10(@NonNull FrameLayout rootView, @NonNull TextView tvCountNew, @NonNull TextView tvType) {
        this.f41101b = rootView;
        this.f41102c = tvCountNew;
        this.f41103d = tvType;
    }

    @NonNull
    public static l10 bind(@NonNull View rootView) {
        int i10 = R.id.tvCountNew;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCountNew);
        if (textView != null) {
            i10 = R.id.tvType;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvType);
            if (textView2 != null) {
                return new l10((FrameLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static l10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f41101b;
    }

    @NonNull
    public static l10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_cloud_archive_type, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
