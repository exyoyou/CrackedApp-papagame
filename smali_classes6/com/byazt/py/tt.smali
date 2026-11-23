.class public Lcom/byazt/py/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x757,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/nbs/tt;

.field public tt:Ljava/lang/Runnable;

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/nbs/tt;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/py/tt;->ve:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/py/tt;->c:Lcom/byazt/nbs/tt;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/py/tt;->tt:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/py/tt;->ve:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/py/tt;->c:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->i()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/py/tt;->c:Lcom/byazt/nbs/tt;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "serverBidding_timeout"

    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/byazt/py/tt;->ve:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/py/tt;->tt:Ljava/lang/Runnable;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
