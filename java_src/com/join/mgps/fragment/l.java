package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout2;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class l extends k implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f70058l;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zc.c f70057k = new zc.c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map<Class<?>, Object> f70059m = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l.this.O();
        }
    }

    public static class b extends org.androidannotations.api.builder.d<b, k> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public k build() {
            l lVar = new l();
            lVar.setArguments(this.args);
            return lVar;
        }
    }

    public static b R() {
        return new b();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70059m.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70058l;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70057k);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70058l = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70058l = inflater.inflate(R.layout.fragment_classify_rank, container, false);
        }
        return this.f70058l;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70058l = null;
        this.f69928d = null;
        this.f69929e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69928d = (ViewPager) hasViews.internalFindViewById(R.id.mViewpagerV4);
        this.f69929e = (SlidingTabLayout2) hasViews.internalFindViewById(R.id.mSlidingTabLayout);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.searchImage);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70057k.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70059m.put(key, value);
    }
}
