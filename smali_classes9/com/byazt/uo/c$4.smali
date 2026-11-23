.class public Lcom/byazt/uo/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cc/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/c;->c(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/c;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    invoke-static {v0}, Lcom/byazt/uo/c;->u(Lcom/byazt/uo/c;)Lcom/byazt/nr/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public c(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    invoke-static {v0}, Lcom/byazt/uo/c;->u(Lcom/byazt/uo/c;)Lcom/byazt/nr/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    invoke-static {p1}, Lcom/byazt/uo/c;->u(Lcom/byazt/uo/c;)Lcom/byazt/nr/d;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    invoke-static {p1}, Lcom/byazt/uo/c;->u(Lcom/byazt/uo/c;)Lcom/byazt/nr/d;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    invoke-static {v0, p1, p2}, Lcom/byazt/uo/c;->c(Lcom/byazt/uo/c;J)J

    .line 5
    iget-object p1, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    invoke-static {p1, v4, v5}, Lcom/byazt/uo/c;->tt(Lcom/byazt/uo/c;J)J

    .line 6
    iget-object p1, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    invoke-static {p1}, Lcom/byazt/uo/c;->u(Lcom/byazt/uo/c;)Lcom/byazt/nr/d;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public getActivity()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/uo/c;->z(Lcom/byazt/uo/c;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/uo/c;->uj(Lcom/byazt/uo/c;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/uo/c$4;->c:Lcom/byazt/uo/c;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/uo/c;->yp(Lcom/byazt/uo/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
