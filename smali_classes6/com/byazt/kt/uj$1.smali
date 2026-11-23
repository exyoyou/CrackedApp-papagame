.class public final Lcom/byazt/kt/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/kt/uj$tt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/kt/uj$tt;Lcom/byazt/kt/uj$tt;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/byazt/kt/uj$tt;->uj:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    iget-object v4, p2, Lcom/byazt/kt/uj$tt;->uj:Lcom/byazt/kt/RecyclerView;

    .line 11
    .line 12
    if-nez v4, :cond_1

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 v4, 0x0

    .line 17
    :goto_1
    const/4 v5, -0x1

    .line 18
    if-eq v3, v4, :cond_3

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    return v5

    .line 24
    :cond_3
    iget-boolean v0, p1, Lcom/byazt/kt/uj$tt;->c:Z

    .line 25
    .line 26
    iget-boolean v3, p2, Lcom/byazt/kt/uj$tt;->c:Z

    .line 27
    .line 28
    if-eq v0, v3, :cond_5

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    return v5

    .line 33
    :cond_4
    return v2

    .line 34
    :cond_5
    iget v0, p2, Lcom/byazt/kt/uj$tt;->tt:I

    .line 35
    .line 36
    iget v2, p1, Lcom/byazt/kt/uj$tt;->tt:I

    .line 37
    .line 38
    sub-int/2addr v0, v2

    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    return v0

    .line 42
    :cond_6
    iget p1, p1, Lcom/byazt/kt/uj$tt;->ve:I

    .line 43
    .line 44
    iget p2, p2, Lcom/byazt/kt/uj$tt;->ve:I

    .line 45
    .line 46
    sub-int/2addr p1, p2

    .line 47
    if-eqz p1, :cond_7

    .line 48
    .line 49
    return p1

    .line 50
    :cond_7
    return v1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/kt/uj$tt;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/kt/uj$tt;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/kt/uj$1;->c(Lcom/byazt/kt/uj$tt;Lcom/byazt/kt/uj$tt;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
