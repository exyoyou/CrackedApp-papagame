.class public Lcom/byazt/ix/sp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x68d,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/byazt/ix/sp;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/yl/ve;

.field public tt:J

.field public uj:Lcom/byazt/ll/tt;

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/yl/ve;JLcom/byazt/ll/tt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ix/sp;->ve:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    iput-wide p2, p0, Lcom/byazt/ix/sp;->tt:J

    .line 10
    .line 11
    iput-object p4, p0, Lcom/byazt/ix/sp;->uj:Lcom/byazt/ll/tt;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ix/sp;->uj:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public c(Lcom/byazt/ix/sp;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    iget-object p1, p1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->compareTo(Lcom/byazt/yl/ve;)I

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/ix/sp;->tt:J

    return-wide v0
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ix/sp;->ve:Z

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/ix/sp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/ix/sp;->c(Lcom/byazt/ix/sp;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/byazt/ix/sp;->uj:Lcom/byazt/ll/tt;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isHasShown()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/byazt/ix/sp;->uj:Lcom/byazt/ll/tt;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_1
    :goto_0
    return v1
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isUseFromCache()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tt(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setUseFromCache(Z)V

    return-void
.end method

.method public uj()Lcom/byazt/ll/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ix/sp;->uj:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ix/sp;->ve:Z

    .line 2
    .line 3
    return v0
.end method
