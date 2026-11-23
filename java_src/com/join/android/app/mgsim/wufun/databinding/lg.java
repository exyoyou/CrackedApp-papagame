package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f41302c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41303d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f41304e;

    private lg(@NonNull LinearLayout rootView, @NonNull Button cancel, @NonNull TextView info, @NonNull Button rebuild) {
        this.f41301b = rootView;
        this.f41302c = cancel;
        this.f41303d = info;
        this.f41304e = rebuild;
    }

    @NonNull
    public static lg bind(@NonNull View rootView) {
        int i10 = R.id.cancel;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.cancel);
        if (button != null) {
            i10 = R.id.info;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.info);
            if (textView != null) {
                i10 = R.id.rebuild;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.rebuild);
                if (button2 != null) {
                    return new lg((LinearLayout) rootView, button, textView, button2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41301b;
    }

    @NonNull
    public static lg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_invite_fight_error, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
