.class public Lcom/byazt/dqg/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qj/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dqg/c;->nu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dqg/c;


# direct methods
.method public constructor <init>(Lcom/byazt/dqg/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dqg/c$2;->c:Lcom/byazt/dqg/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/byazt/dqg/c$2$1;

    invoke-direct {v0, p0}, Lcom/byazt/dqg/c$2$1;-><init>(Lcom/byazt/dqg/c$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Lcom/byazt/dqg/c$2;->c:Lcom/byazt/dqg/c;

    invoke-static {p1}, Lcom/byazt/dqg/c;->c(Lcom/byazt/dqg/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/dqg/c$2;->c:Lcom/byazt/dqg/c;

    iget-object p1, p1, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sp(I)V

    .line 2
    iget-object p1, p0, Lcom/byazt/dqg/c$2;->c:Lcom/byazt/dqg/c;

    invoke-static {p1}, Lcom/byazt/dqg/c;->c(Lcom/byazt/dqg/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
