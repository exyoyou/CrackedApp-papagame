package com.join.mgps.pulltorefresh.library;

import android.view.View;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes3.dex */
public interface b<T extends View> {
    boolean a();

    boolean b();

    boolean c();

    boolean d();

    a e(boolean includeStart, boolean includeEnd);

    void f();

    boolean g();

    PullToRefreshBase.Mode getCurrentMode();

    boolean getFilterTouchEvents();

    a getLoadingLayoutProxy();

    PullToRefreshBase.Mode getMode();

    T getRefreshableView();

    boolean getShowViewWhileRefreshing();

    PullToRefreshBase.State getState();

    void setFilterTouchEvents(boolean filterEvents);

    void setMode(PullToRefreshBase.Mode mode);

    void setOnPullEventListener(PullToRefreshBase.f<T> listener);

    void setOnRefreshListener(PullToRefreshBase.g<T> listener);

    void setOnRefreshListener(PullToRefreshBase.h<T> listener);

    void setPullToRefreshOverScrollEnabled(boolean enabled);

    void setRefreshing();

    void setRefreshing(boolean doScroll);

    void setScrollAnimationInterpolator(Interpolator interpolator);

    void setScrollingWhileRefreshingEnabled(boolean scrollingWhileRefreshingEnabled);

    void setShowViewWhileRefreshing(boolean showView);
}
