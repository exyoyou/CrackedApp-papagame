package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.newgame_fragment_layout)
public class h4 extends e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f69765f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f69767h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f69768i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f69769j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f69762c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f69763d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f69764e = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f69766g = -1;

    @AfterViews
    void afterViews() {
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        if (this.f69769j == null) {
            this.f69769j = inflater.inflate(R.layout.newgame_fragment_layout, (ViewGroup) null);
            this.f69767h = true;
        }
        ViewGroup viewGroup = (ViewGroup) this.f69769j.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.f69769j);
        }
        return this.f69769j;
    }
}
