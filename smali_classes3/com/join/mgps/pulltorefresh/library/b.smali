.class public interface abstract Lcom/join/mgps/pulltorefresh/library/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e(ZZ)Lcom/join/mgps/pulltorefresh/library/a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "includeStart",
            "includeEnd"
        }
    .end annotation
.end method

.method public abstract f()V
.end method

.method public abstract g()Z
.end method

.method public abstract getCurrentMode()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;
.end method

.method public abstract getFilterTouchEvents()Z
.end method

.method public abstract getLoadingLayoutProxy()Lcom/join/mgps/pulltorefresh/library/a;
.end method

.method public abstract getMode()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;
.end method

.method public abstract getRefreshableView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getShowViewWhileRefreshing()Z
.end method

.method public abstract getState()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;
.end method

.method public abstract setFilterTouchEvents(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterEvents"
        }
    .end annotation
.end method

.method public abstract setMode(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setOnPullEventListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$f<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$g<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setPullToRefreshOverScrollEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract setRefreshing()V
.end method

.method public abstract setRefreshing(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doScroll"
        }
    .end annotation
.end method

.method public abstract setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolator"
        }
    .end annotation
.end method

.method public abstract setScrollingWhileRefreshingEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollingWhileRefreshingEnabled"
        }
    .end annotation
.end method

.method public abstract setShowViewWhileRefreshing(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showView"
        }
    .end annotation
.end method
