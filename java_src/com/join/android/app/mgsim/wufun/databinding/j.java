package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class j implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final EditText f40008c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40009d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40010e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40011f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f40012g;

    private j(@NonNull RelativeLayout rootView, @NonNull EditText edGame, @NonNull RelativeLayout ivBack, @NonNull RelativeLayout rlTitle, @NonNull TextView tvFinish, @NonNull View viewLine) {
        this.f40007b = rootView;
        this.f40008c = edGame;
        this.f40009d = ivBack;
        this.f40010e = rlTitle;
        this.f40011f = tvFinish;
        this.f40012g = viewLine;
    }

    @NonNull
    public static j bind(@NonNull View rootView) {
        int i10 = R.id.ed_game;
        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.ed_game);
        if (editText != null) {
            i10 = R.id.iv_back;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.iv_back);
            if (relativeLayout != null) {
                i10 = R.id.rl_title;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_title);
                if (relativeLayout2 != null) {
                    i10 = R.id.tv_finish;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_finish);
                    if (textView != null) {
                        i10 = R.id.view_line;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view_line);
                        if (viewFindChildViewById != null) {
                            return new j((RelativeLayout) rootView, editText, relativeLayout, relativeLayout2, textView, viewFindChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static j inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40007b;
    }

    @NonNull
    public static j inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_build_game_from, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
