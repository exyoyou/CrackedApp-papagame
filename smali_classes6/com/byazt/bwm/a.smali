.class public Lcom/byazt/bwm/a;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/byazt/bwm/a<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public c:I

.field public tt:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x5

    .line 9
    :goto_0
    iput p2, p0, Lcom/byazt/bwm/a;->c:I

    .line 10
    .line 11
    iput p3, p0, Lcom/byazt/bwm/a;->tt:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/byazt/bwm/a;->c:I

    return v0
.end method

.method public c(Lcom/byazt/bwm/a;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/bwm/a;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/byazt/bwm/a;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/bwm/a;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/byazt/bwm/a;->c()I

    move-result p1

    if-le v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/bwm/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/bwm/a;->c(Lcom/byazt/bwm/a;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
