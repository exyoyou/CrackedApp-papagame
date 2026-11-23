.class public abstract Lcom/byazt/kt/RecyclerView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x40a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kt/RecyclerView$a$c;,
        Lcom/byazt/kt/RecyclerView$a$tt;
    }
.end annotation


# instance fields
.field public a:J

.field public c:Lcom/byazt/kt/RecyclerView$a$c;

.field public n:J

.field public tt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uj:J

.field public ve:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$a;->c:Lcom/byazt/kt/RecyclerView$a$c;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$a;->tt:Ljava/util/ArrayList;

    .line 13
    .line 14
    const-wide/16 v0, 0x78

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/byazt/kt/RecyclerView$a;->ve:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/byazt/kt/RecyclerView$a;->uj:J

    .line 19
    .line 20
    const-wide/16 v0, 0xfa

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/byazt/kt/RecyclerView$a;->n:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/byazt/kt/RecyclerView$a;->a:J

    .line 25
    .line 26
    return-void
.end method

.method public static n(Lcom/byazt/kt/RecyclerView$gu;)I
    .locals 3

    .line 2
    iget v0, p0, Lcom/byazt/kt/RecyclerView$gu;->da:I

    and-int/lit8 v0, v0, 0xe

    .line 3
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$gu;->a()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$gu;->n()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kt/RecyclerView$a;->ve:J

    return-wide v0
.end method

.method public final a(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$a;->c:Lcom/byazt/kt/RecyclerView$a$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/kt/RecyclerView$a$c;->c(Lcom/byazt/kt/RecyclerView$gu;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gt;Lcom/byazt/kt/RecyclerView$gu;)Lcom/byazt/kt/RecyclerView$a$tt;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$a;->da()Lcom/byazt/kt/RecyclerView$a$tt;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/kt/RecyclerView$a$tt;->c(Lcom/byazt/kt/RecyclerView$gu;)Lcom/byazt/kt/RecyclerView$a$tt;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gt;Lcom/byazt/kt/RecyclerView$gu;ILjava/util/List;)Lcom/byazt/kt/RecyclerView$a$tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/kt/RecyclerView$gt;",
            "Lcom/byazt/kt/RecyclerView$gu;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/kt/RecyclerView$a$tt;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$a;->da()Lcom/byazt/kt/RecyclerView$a$tt;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/kt/RecyclerView$a$tt;->c(Lcom/byazt/kt/RecyclerView$gu;)Lcom/byazt/kt/RecyclerView$a$tt;

    move-result-object p1

    return-object p1
.end method

.method public abstract c()V
.end method

.method public c(Lcom/byazt/kt/RecyclerView$a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$a;->c:Lcom/byazt/kt/RecyclerView$a$c;

    return-void
.end method

.method public abstract c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z
.end method

.method public abstract c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/kt/RecyclerView$gu;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$a;->sp(Lcom/byazt/kt/RecyclerView$gu;)Z

    move-result p1

    return p1
.end method

.method public da()Lcom/byazt/kt/RecyclerView$a$tt;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/kt/RecyclerView$a$tt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/kt/RecyclerView$a$tt;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$a;->tt:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$a;->tt:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$a;->tt:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kt/RecyclerView$a;->n:J

    return-wide v0
.end method

.method public sp()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/kt/RecyclerView$a;->uj:J

    return-wide v0
.end method

.method public sp(Lcom/byazt/kt/RecyclerView$gu;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public abstract tt()Z
.end method

.method public abstract tt(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z
.end method

.method public abstract uj()V
.end method

.method public abstract uj(Lcom/byazt/kt/RecyclerView$gu;)V
.end method

.method public abstract ve(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;Lcom/byazt/kt/RecyclerView$a$tt;)Z
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kt/RecyclerView$a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
