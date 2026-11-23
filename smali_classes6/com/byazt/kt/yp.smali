.class public Lcom/byazt/kt/yp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0xd7
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kt/yp$tt;,
        Lcom/byazt/kt/yp$c;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/kpm/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/kpm/c<",
            "Lcom/byazt/kt/RecyclerView$gu;",
            "Lcom/byazt/kt/yp$c;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Lcom/byazt/kpm/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/kpm/ve<",
            "Lcom/byazt/kt/RecyclerView$gu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/kpm/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/kpm/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/kpm/ve;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/byazt/kpm/ve;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/kt/yp;->tt:Lcom/byazt/kpm/ve;

    .line 17
    .line 18
    return-void
.end method

.method private c(Lcom/byazt/kt/RecyclerView$gu;I)Lcom/byazt/kt/RecyclerView$a$tt;
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->c(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v1, p1}, Lcom/byazt/kpm/n;->tt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/kt/yp$c;

    if-eqz v1, :cond_4

    .line 12
    iget v2, v1, Lcom/byazt/kt/yp$c;->c:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    not-int v0, p2

    and-int/2addr v0, v2

    .line 13
    iput v0, v1, Lcom/byazt/kt/yp$c;->c:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 14
    iget-object p2, v1, Lcom/byazt/kt/yp$c;->tt:Lcom/byazt/kt/RecyclerView$a$tt;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 15
    iget-object p2, v1, Lcom/byazt/kt/yp$c;->ve:Lcom/byazt/kt/RecyclerView$a$tt;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->ve(I)Ljava/lang/Object;

    .line 17
    invoke-static {v1}, Lcom/byazt/kt/yp$c;->c(Lcom/byazt/kt/yp$c;)V

    :cond_2
    return-object p2

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/byazt/kt/yp$c;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget v0, p1, Lcom/byazt/kt/yp$c;->c:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x2

    .line 14
    .line 15
    iput v0, p1, Lcom/byazt/kt/yp$c;->c:I

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public c(J)Lcom/byazt/kt/RecyclerView$gu;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/byazt/kt/yp;->tt:Lcom/byazt/kpm/ve;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/kpm/ve;->c(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView$gu;

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v0}, Lcom/byazt/kpm/n;->clear()V

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/yp;->tt:Lcom/byazt/kpm/ve;

    invoke-virtual {v0}, Lcom/byazt/kpm/ve;->ve()V

    return-void
.end method

.method public c(JLcom/byazt/kt/RecyclerView$gu;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/byazt/kt/yp;->tt:Lcom/byazt/kpm/ve;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/kpm/ve;->tt(JLjava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/yp$c;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/kt/yp$c;->c()Lcom/byazt/kt/yp$c;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v1, p1, v0}, Lcom/byazt/kpm/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iput-object p2, v0, Lcom/byazt/kt/yp$c;->tt:Lcom/byazt/kt/RecyclerView$a$tt;

    .line 7
    iget p1, v0, Lcom/byazt/kt/yp$c;->c:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lcom/byazt/kt/yp$c;->c:I

    return-void
.end method

.method public c(Lcom/byazt/kt/yp$tt;)V
    .locals 6

    .line 21
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v0}, Lcom/byazt/kpm/n;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 22
    iget-object v1, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v1, v0}, Lcom/byazt/kpm/n;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/kt/RecyclerView$gu;

    .line 23
    iget-object v2, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v2, v0}, Lcom/byazt/kpm/n;->ve(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/kt/yp$c;

    .line 24
    iget v3, v2, Lcom/byazt/kt/yp$c;->c:I

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 25
    invoke-interface {p1, v1}, Lcom/byazt/kt/yp$tt;->c(Lcom/byazt/kt/RecyclerView$gu;)V

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    .line 26
    iget-object v3, v2, Lcom/byazt/kt/yp$c;->tt:Lcom/byazt/kt/RecyclerView$a$tt;

    if-nez v3, :cond_1

    .line 27
    invoke-interface {p1, v1}, Lcom/byazt/kt/yp$tt;->c(Lcom/byazt/kt/RecyclerView$gu;)V

    goto :goto_1

    .line 28
    :cond_1
    iget-object v4, v2, Lcom/byazt/kt/yp$c;->ve:Lcom/byazt/kt/RecyclerView$a$tt;

    invoke-interface {p1, v1, v3, v4}, Lcom/byazt/kt/yp$tt;->c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v3, 0xe

    const/16 v5, 0xe

    if-ne v4, v5, :cond_3

    .line 29
    iget-object v3, v2, Lcom/byazt/kt/yp$c;->tt:Lcom/byazt/kt/RecyclerView$a$tt;

    iget-object v4, v2, Lcom/byazt/kt/yp$c;->ve:Lcom/byazt/kt/RecyclerView$a$tt;

    invoke-interface {p1, v1, v3, v4}, Lcom/byazt/kt/yp$tt;->tt(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V

    goto :goto_1

    :cond_3
    and-int/lit8 v4, v3, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    .line 30
    iget-object v3, v2, Lcom/byazt/kt/yp$c;->tt:Lcom/byazt/kt/RecyclerView$a$tt;

    iget-object v4, v2, Lcom/byazt/kt/yp$c;->ve:Lcom/byazt/kt/RecyclerView$a$tt;

    invoke-interface {p1, v1, v3, v4}, Lcom/byazt/kt/yp$tt;->ve(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V

    goto :goto_1

    :cond_4
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5

    .line 31
    iget-object v3, v2, Lcom/byazt/kt/yp$c;->tt:Lcom/byazt/kt/RecyclerView$a$tt;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/byazt/kt/yp$tt;->c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V

    goto :goto_1

    :cond_5
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 32
    iget-object v3, v2, Lcom/byazt/kt/yp$c;->tt:Lcom/byazt/kt/RecyclerView$a$tt;

    iget-object v4, v2, Lcom/byazt/kt/yp$c;->ve:Lcom/byazt/kt/RecyclerView$a$tt;

    invoke-interface {p1, v1, v3, v4}, Lcom/byazt/kt/yp$tt;->tt(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)V

    .line 33
    :cond_6
    :goto_1
    invoke-static {v2}, Lcom/byazt/kt/yp$c;->c(Lcom/byazt/kt/yp$c;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/yp$c;

    if-eqz p1, :cond_0

    .line 9
    iget p1, p1, Lcom/byazt/kt/yp$c;->c:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public n(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/kt/yp$c;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/kt/yp$c;->c()Lcom/byazt/kt/yp$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    .line 16
    .line 17
    invoke-virtual {v1, p1, v0}, Lcom/byazt/kpm/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget p1, v0, Lcom/byazt/kt/yp$c;->c:I

    .line 21
    .line 22
    or-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    iput p1, v0, Lcom/byazt/kt/yp$c;->c:I

    .line 25
    .line 26
    return-void
.end method

.method public sp(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/yp;->tt:Lcom/byazt/kpm/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kpm/ve;->tt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/kt/yp;->tt:Lcom/byazt/kpm/ve;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/byazt/kpm/ve;->ve(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/kt/yp;->tt:Lcom/byazt/kpm/ve;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/byazt/kpm/ve;->c(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/byazt/kt/yp$c;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-static {p1}, Lcom/byazt/kt/yp$c;->c(Lcom/byazt/kt/yp$c;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$gu;)Lcom/byazt/kt/RecyclerView$a$tt;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/byazt/kt/yp;->c(Lcom/byazt/kt/RecyclerView$gu;I)Lcom/byazt/kt/RecyclerView$a$tt;

    move-result-object p1

    return-object p1
.end method

.method public tt()V
    .locals 0

    .line 7
    invoke-static {}, Lcom/byazt/kt/yp$c;->tt()V

    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/yp$c;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/kt/yp$c;->c()Lcom/byazt/kt/yp$c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v1, p1, v0}, Lcom/byazt/kpm/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget p1, v0, Lcom/byazt/kt/yp$c;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/byazt/kt/yp$c;->c:I

    .line 6
    iput-object p2, v0, Lcom/byazt/kt/yp$c;->tt:Lcom/byazt/kt/RecyclerView$a$tt;

    return-void
.end method

.method public uj(Lcom/byazt/kt/RecyclerView$gu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/byazt/kt/yp$c;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, p1, Lcom/byazt/kt/yp$c;->c:I

    .line 12
    .line 13
    and-int/lit8 p1, p1, 0x4

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public ve(Lcom/byazt/kt/RecyclerView$gu;)Lcom/byazt/kt/RecyclerView$a$tt;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/byazt/kt/yp;->c(Lcom/byazt/kt/RecyclerView$gu;I)Lcom/byazt/kt/RecyclerView$a$tt;

    move-result-object p1

    return-object p1
.end method

.method public ve(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v0, p1}, Lcom/byazt/kpm/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/yp$c;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/kt/yp$c;->c()Lcom/byazt/kt/yp$c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/kt/yp;->c:Lcom/byazt/kpm/c;

    invoke-virtual {v1, p1, v0}, Lcom/byazt/kpm/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iput-object p2, v0, Lcom/byazt/kt/yp$c;->ve:Lcom/byazt/kt/RecyclerView$a$tt;

    .line 6
    iget p1, v0, Lcom/byazt/kt/yp$c;->c:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lcom/byazt/kt/yp$c;->c:I

    return-void
.end method

.method public x(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/kt/yp;->a(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
