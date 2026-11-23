.class public Lcom/byazt/qw/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d6,
        0x14
    }
.end annotation


# static fields
.field public static a:I = 0x2

.field public static c:I = 0x1

.field public static m:J = 0x0L

.field public static n:I = 0x1

.field public static nu:I = 0x0

.field public static tt:I = 0x2

.field public static uj:I = 0x0

.field public static ve:I = 0x3

.field public static z:J


# instance fields
.field public da:J

.field public i:J

.field public sl:J

.field public sp:J

.field public t:J

.field public u:I

.field public x:J

.field public yp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()J
    .locals 9

    .line 1
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qw/ve;->x()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 3
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/qw/ve;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v0

    if-lez v8, :cond_0

    return-wide v6

    :cond_0
    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/qw/ve;->c()J

    move-result-wide v2

    sub-long v2, v0, v2

    :cond_1
    return-wide v2
.end method

.method private static c(Lcom/byazt/qw/c;J)J
    .locals 5

    const-wide/32 v0, 0x1ee62800

    sub-long/2addr p1, v0

    .line 24
    invoke-virtual {p0}, Lcom/byazt/qw/c;->x()J

    move-result-wide v0

    .line 25
    invoke-virtual {p0}, Lcom/byazt/qw/c;->tt()J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/byazt/qw/c;->tt()J

    move-result-wide p0

    return-wide p0

    :cond_0
    sub-long/2addr v0, p1

    const-wide/16 p0, 0x0

    cmp-long p2, v0, p0

    if-gez p2, :cond_1

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method public static c(I)V
    .locals 10

    .line 3
    new-instance v0, Lcom/byazt/qw/tt;

    invoke-direct {v0}, Lcom/byazt/qw/tt;-><init>()V

    .line 4
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qw/ve;->sp()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/byazt/qw/tt;->c(J)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-wide/16 v5, 0x0

    .line 9
    sput-wide v5, Lcom/byazt/qw/c;->z:J

    .line 10
    sput-wide v5, Lcom/byazt/qw/c;->m:J

    const/4 v5, 0x0

    .line 11
    sput v5, Lcom/byazt/qw/c;->nu:I

    .line 12
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/qw/c;

    .line 13
    invoke-virtual {v5}, Lcom/byazt/qw/c;->u()I

    move-result v6

    sget v7, Lcom/byazt/qw/c;->tt:I

    if-ne v6, v7, :cond_1

    .line 14
    sget-wide v6, Lcom/byazt/qw/c;->m:J

    invoke-static {v5, v1, v2}, Lcom/byazt/qw/c;->c(Lcom/byazt/qw/c;J)J

    move-result-wide v8

    add-long/2addr v6, v8

    sput-wide v6, Lcom/byazt/qw/c;->m:J

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v5}, Lcom/byazt/qw/c;->u()I

    move-result v6

    sget v7, Lcom/byazt/qw/c;->ve:I

    if-ne v6, v7, :cond_2

    .line 16
    sget-wide v6, Lcom/byazt/qw/c;->z:J

    invoke-virtual {v5}, Lcom/byazt/qw/c;->c()J

    move-result-wide v8

    add-long/2addr v6, v8

    sput-wide v6, Lcom/byazt/qw/c;->z:J

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v5}, Lcom/byazt/qw/c;->u()I

    move-result v6

    sget v7, Lcom/byazt/qw/c;->c:I

    if-ne v6, v7, :cond_0

    .line 18
    iget-wide v6, v5, Lcom/byazt/qw/c;->sp:J

    cmp-long v8, v6, v1

    if-nez v8, :cond_0

    .line 19
    invoke-virtual {v5}, Lcom/byazt/qw/c;->da()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v1

    sput v1, Lcom/byazt/qw/c;->nu:I

    .line 21
    sget v1, Lcom/byazt/qw/c;->n:I

    if-ne p0, v1, :cond_4

    const/4 p0, 0x1

    .line 22
    sput p0, Lcom/byazt/qw/c;->nu:I

    .line 23
    :cond_4
    invoke-virtual {v0}, Lcom/byazt/qw/tt;->c()V

    return-void
.end method

.method public static c(IJJ)V
    .locals 7

    .line 27
    new-instance v0, Lcom/byazt/qw/c;

    invoke-direct {v0}, Lcom/byazt/qw/c;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 29
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/qw/ve;->c()J

    move-result-wide v3

    .line 30
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/qw/ve;->sp()J

    move-result-wide v5

    .line 31
    invoke-virtual {v0, v5, v6}, Lcom/byazt/qw/c;->uj(J)V

    .line 32
    invoke-virtual {v0, v3, v4}, Lcom/byazt/qw/c;->n(J)V

    .line 33
    invoke-virtual {v0, p0}, Lcom/byazt/qw/c;->tt(I)V

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/byazt/qw/c;->ve(J)V

    .line 35
    sget v3, Lcom/byazt/qw/c;->c:I

    const-wide/16 v4, 0x0

    if-ne p0, v3, :cond_0

    .line 36
    invoke-virtual {v0, v4, v5}, Lcom/byazt/qw/c;->c(J)V

    .line 37
    invoke-virtual {v0, v4, v5}, Lcom/byazt/qw/c;->tt(J)V

    .line 38
    invoke-virtual {v0, v4, v5}, Lcom/byazt/qw/c;->sp(J)V

    .line 39
    invoke-virtual {v0, v4, v5}, Lcom/byazt/qw/c;->a(J)V

    goto :goto_0

    .line 40
    :cond_0
    sget v3, Lcom/byazt/qw/c;->tt:I

    if-ne p0, v3, :cond_1

    .line 41
    invoke-virtual {v0, v4, v5}, Lcom/byazt/qw/c;->c(J)V

    .line 42
    invoke-virtual {v0, p3, p4}, Lcom/byazt/qw/c;->tt(J)V

    .line 43
    invoke-virtual {v0, v4, v5}, Lcom/byazt/qw/c;->sp(J)V

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/byazt/qw/c;->a(J)V

    goto :goto_0

    .line 45
    :cond_1
    sget p3, Lcom/byazt/qw/c;->ve:I

    if-ne p0, p3, :cond_2

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/byazt/qw/c;->c(J)V

    .line 47
    invoke-virtual {v0, v4, v5}, Lcom/byazt/qw/c;->tt(J)V

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/byazt/qw/c;->sp(J)V

    .line 49
    invoke-virtual {v0, v4, v5}, Lcom/byazt/qw/c;->a(J)V

    .line 50
    :cond_2
    :goto_0
    new-instance p0, Lcom/byazt/qw/tt;

    invoke-direct {p0}, Lcom/byazt/qw/tt;-><init>()V

    .line 51
    invoke-virtual {p0, v0}, Lcom/byazt/qw/tt;->insert(Lcom/byazt/qw/c;)V

    return-void
.end method

.method public static n()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/qw/c;->nu:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static sp()J
    .locals 7

    .line 1
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qw/ve;->i()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/qw/ve;->x()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    return-wide v4

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    return-wide v4

    :cond_1
    return-wide v2
.end method

.method public static uj()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/qw/c;->sp()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/byazt/qw/c;->m:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static ve()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/qw/c;->a()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/byazt/qw/c;->z:J

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/qw/c;->i:J

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qw/c;->sl:J

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/qw/c;->sl:J

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    check-cast p1, Lcom/byazt/qw/c;

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/byazt/qw/c;->sp:J

    .line 8
    .line 9
    iget-wide v3, p1, Lcom/byazt/qw/c;->sp:J

    .line 10
    .line 11
    cmp-long v5, v1, v3

    .line 12
    .line 13
    if-lez v5, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-wide v1, p0, Lcom/byazt/qw/c;->i:J

    .line 17
    .line 18
    iget-wide v3, p1, Lcom/byazt/qw/c;->i:J

    .line 19
    .line 20
    cmp-long v5, v1, v3

    .line 21
    .line 22
    if-lez v5, :cond_2

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    iget-wide v1, p0, Lcom/byazt/qw/c;->da:J

    .line 26
    .line 27
    iget-wide v3, p1, Lcom/byazt/qw/c;->da:J

    .line 28
    .line 29
    cmp-long p1, v1, v3

    .line 30
    .line 31
    if-lez p1, :cond_3

    .line 32
    .line 33
    return v0

    .line 34
    :cond_3
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public da()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qw/c;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qw/c;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/qw/c;->x:J

    return-void
.end method

.method public sl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qw/c;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public sp(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/qw/c;->da:J

    return-void
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qw/c;->da:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qw/c;->t:J

    return-wide v0
.end method

.method public tt(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/qw/c;->u:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/qw/c;->t:J

    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/qw/c;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public uj(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/qw/c;->sp:J

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/qw/c;->yp:J

    return-void
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qw/c;->yp:J

    .line 2
    .line 3
    return-wide v0
.end method
