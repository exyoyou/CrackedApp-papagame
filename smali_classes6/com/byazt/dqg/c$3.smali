.class public Lcom/byazt/dqg/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dqg/c;->rh()V
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
    iput-object p1, p0, Lcom/byazt/dqg/c$3;->c:Lcom/byazt/dqg/c;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/c$3;->c:Lcom/byazt/dqg/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sv()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/c$3;->c:Lcom/byazt/dqg/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->aw()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/dqg/c$3;->c:Lcom/byazt/dqg/c;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/dqg/c;->tt(Lcom/byazt/dqg/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/dqg/c$3;->c:Lcom/byazt/dqg/c;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/dqg/c;->ve(Lcom/byazt/dqg/c;)Lcom/byazt/lo/tt;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/byazt/lo/tt;->my()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
