.class public Lcom/byazt/atv/UGTimerContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x605
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/qmz/c;

.field public final tt:Lcom/byazt/xyr/sp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/xyr/sp;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/atv/UGTimerContainer;->tt:Lcom/byazt/xyr/sp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/byazt/atv/UGTimerContainer;->tt:Lcom/byazt/xyr/sp;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, p0, p1, v0}, Lcom/byazt/xyr/sp;->c(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return v0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/atv/UGTimerContainer;->c:Lcom/byazt/qmz/c;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/qmz/c;->c()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/qmz/c;->tt()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public setTimerHolder(Lcom/byazt/qmz/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/atv/UGTimerContainer;->c:Lcom/byazt/qmz/c;

    .line 2
    .line 3
    return-void
.end method
