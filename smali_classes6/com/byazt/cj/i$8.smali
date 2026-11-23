.class public Lcom/byazt/cj/i$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/at/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0xca
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/cj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cj/i;


# direct methods
.method public constructor <init>(Lcom/byazt/cj/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ZILjava/lang/String;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/byazt/cj/i;->t:Z

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/cj/i;->tt(Lcom/byazt/cj/i;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/byazt/cj/i;->ve(Lcom/byazt/cj/i;)D

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-object v0, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/cj/i;->uj(Lcom/byazt/cj/i;)D

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    iget-object v0, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/cj/i;->n(Lcom/byazt/cj/i;)D

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    iget-object v0, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/cj/i;->a(Lcom/byazt/cj/i;)D

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    iget-object v0, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/cj/i;->sp(Lcom/byazt/cj/i;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-virtual/range {v1 .. v10}, Lcom/byazt/cj/i;->c(DDDDLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Lcom/byazt/cj/i;->c(Lcom/byazt/cj/i;Z)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/byazt/cj/i;->x(Lcom/byazt/cj/i;)Lcom/byazt/ete/ic;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/byazt/ete/xd;->sl(Lcom/byazt/ete/ic;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/byazt/cj/i$8;->c:Lcom/byazt/cj/i;

    .line 66
    .line 67
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/cj/i;->c(ZILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method
