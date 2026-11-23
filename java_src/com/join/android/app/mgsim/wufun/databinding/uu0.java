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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class uu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45917c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f45920f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45921g;

    private uu0(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView gameIcon, @NonNull TextView gameInfo, @NonNull TextView gameName, @NonNull Button ok, @NonNull TextView title) {
        this.f45916b = rootView;
        this.f45917c = gameIcon;
        this.f45918d = gameInfo;
        this.f45919e = gameName;
        this.f45920f = ok;
        this.f45921g = title;
    }

    @NonNull
    public static uu0 bind(@NonNull View rootView) {
        int i10 = R.id.game_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.game_icon);
        if (simpleDraweeView != null) {
            i10 = R.id.game_info;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_info);
            if (textView != null) {
                i10 = R.id.game_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_name);
                if (textView2 != null) {
                    i10 = R.id.ok;
                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.ok);
                    if (button != null) {
                        i10 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView3 != null) {
                            return new uu0((RelativeLayout) rootView, simpleDraweeView, textView, textView2, button, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45916b;
    }

    @NonNull
    public static uu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.shared_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
