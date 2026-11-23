package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ox0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f43122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f43123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f43124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f43125f;

    private ox0(@NonNull LinearLayout rootView, @NonNull View musicBar1, @NonNull View musicBar2, @NonNull View musicBar3, @NonNull View musicBar4) {
        this.f43121b = rootView;
        this.f43122c = musicBar1;
        this.f43123d = musicBar2;
        this.f43124e = musicBar3;
        this.f43125f = musicBar4;
    }

    @NonNull
    public static ox0 bind(@NonNull View rootView) {
        int i10 = R.id.music_bar1;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.music_bar1);
        if (viewFindChildViewById != null) {
            i10 = R.id.music_bar2;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.music_bar2);
            if (viewFindChildViewById2 != null) {
                i10 = R.id.music_bar3;
                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.music_bar3);
                if (viewFindChildViewById3 != null) {
                    i10 = R.id.music_bar4;
                    View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.music_bar4);
                    if (viewFindChildViewById4 != null) {
                        return new ox0((LinearLayout) rootView, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ox0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43121b;
    }

    @NonNull
    public static ox0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_equalizer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
