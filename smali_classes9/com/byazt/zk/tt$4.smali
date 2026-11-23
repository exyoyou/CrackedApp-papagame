.class public Lcom/byazt/zk/tt$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x5f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/zk/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zk/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/zk/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zk/tt$4;->c:Lcom/byazt/zk/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/tt$4;->c:Lcom/byazt/zk/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zk/tt;->uj(Lcom/byazt/zk/tt;)Lcom/byazt/ga/LottieAnimationView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zk/tt$4;->c:Lcom/byazt/zk/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zk/tt;->uj(Lcom/byazt/zk/tt;)Lcom/byazt/ga/LottieAnimationView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->invalidate()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/tt$4;->c:Lcom/byazt/zk/tt;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/zk/tt;->x(Lcom/byazt/zk/tt;)Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/byazt/zk/tt$4;->c:Lcom/byazt/zk/tt;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/byazt/zk/tt;->sp(Lcom/byazt/zk/tt;)Ljava/lang/Runnable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-wide/16 v2, 0x28

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
