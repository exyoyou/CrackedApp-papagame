.class public Lcom/byazt/hz/tt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hz/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/nbs/da;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hz/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/tt$3;->c:Lcom/byazt/hz/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/nbs/da;Lcom/byazt/nbs/da;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->zm()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->zm()D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmpl-double v4, v0, v2

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->zm()D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->zm()D

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    cmpg-double v2, v0, p1

    .line 24
    .line 25
    if-gez v2, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/nbs/da;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/nbs/da;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/hz/tt$3;->c(Lcom/byazt/nbs/da;Lcom/byazt/nbs/da;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
