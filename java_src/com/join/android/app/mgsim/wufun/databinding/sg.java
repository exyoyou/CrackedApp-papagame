package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f44782c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44783d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44784e;

    private sg(@NonNull RelativeLayout rootView, @NonNull Button localGameTwoBt, @NonNull TextView localGameTwoContentTv, @NonNull TextView localGameTwoTitleTv) {
        this.f44781b = rootView;
        this.f44782c = localGameTwoBt;
        this.f44783d = localGameTwoContentTv;
        this.f44784e = localGameTwoTitleTv;
    }

    @NonNull
    public static sg bind(@NonNull View rootView) {
        int i10 = R.id.localGameTwoBt;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.localGameTwoBt);
        if (button != null) {
            i10 = R.id.localGameTwoContentTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameTwoContentTv);
            if (textView != null) {
                i10 = R.id.localGameTwoTitleTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.localGameTwoTitleTv);
                if (textView2 != null) {
                    return new sg((RelativeLayout) rootView, button, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44781b;
    }

    @NonNull
    public static sg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_localgame_two_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
