.class public Lcom/byazt/cc/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0xd
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ete/x$uj;

.field public c:I

.field public n:Lcom/byazt/vvt/a$c;

.field public tt:J

.field public uj:I

.field public ve:I


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
    iput v0, p0, Lcom/byazt/cc/tt;->c:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/byazt/cc/tt;->tt:J

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/byazt/cc/tt;->ve:I

    .line 13
    .line 14
    return-void
.end method

.method private c(I)V
    .locals 6

    if-lez p1, :cond_0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3c

    mul-long v2, v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byazt/cc/tt;->tt:J

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/byazt/cc/tt;->tt:J

    return-void

    .line 29
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/cc/tt;->tt:J

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/dj/tt;I)I
    .locals 10

    .line 1
    iput p2, p0, Lcom/byazt/cc/tt;->uj:I

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/byazt/ogz/sl;->x(I)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/ete/x;->c()Lcom/byazt/ete/x$ve;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v2}, Lcom/byazt/ete/x$ve;->i()I

    move-result v4

    :goto_0
    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v2}, Lcom/byazt/ete/x$ve;->sl()Lcom/byazt/ete/x$uj;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    if-eqz v2, :cond_e

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    goto/16 :goto_5

    .line 6
    :cond_3
    invoke-virtual {v2}, Lcom/byazt/ete/x$uj;->tt()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_4

    const-wide/16 v6, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/byazt/whk/c;->c()Lcom/byazt/whk/c;

    move-result-object v0

    const-string v4, "DeviceRate"

    const-string v8, "bytebench_value"

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, v8, p1}, Lcom/byazt/whk/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    move-wide v8, v6

    :goto_2
    cmpl-double p1, v8, v6

    if-lez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1}, Lcom/byazt/ete/x$uj;->tt()I

    move-result p1

    int-to-double v6, p1

    cmpg-double p1, v8, v6

    if-gez p1, :cond_4

    .line 9
    iput v2, p0, Lcom/byazt/cc/tt;->c:I

    return v2

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1}, Lcom/byazt/ete/x$uj;->ve()I

    move-result p1

    const/4 v0, 0x4

    const/4 v4, 0x2

    if-lez p1, :cond_b

    .line 11
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v4, :cond_9

    if-eq p1, v1, :cond_8

    if-eq p1, v0, :cond_7

    if-eq p1, v5, :cond_6

    const/4 v5, 0x6

    if-eq p1, v5, :cond_5

    goto :goto_4

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1}, Lcom/byazt/ete/x$uj;->ve()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_a

    goto :goto_3

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1}, Lcom/byazt/ete/x$uj;->ve()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    goto :goto_3

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1}, Lcom/byazt/ete/x$uj;->ve()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_a

    goto :goto_3

    .line 15
    :cond_8
    iget-object p1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1}, Lcom/byazt/ete/x$uj;->ve()I

    move-result p1

    and-int/2addr p1, v4

    if-eqz p1, :cond_a

    goto :goto_3

    .line 16
    :cond_9
    iget-object p1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1}, Lcom/byazt/ete/x$uj;->ve()I

    move-result p1

    and-int/2addr p1, v2

    if-eqz p1, :cond_a

    :goto_3
    const/4 v3, 0x1

    :cond_a
    :goto_4
    if-eqz v3, :cond_b

    .line 17
    iput v4, p0, Lcom/byazt/cc/tt;->c:I

    return v2

    .line 18
    :cond_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-static {p1, p2}, Lcom/byazt/vvt/a;->c(Ljava/lang/String;Lcom/byazt/ete/x$uj;)Lcom/byazt/vvt/a$c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/cc/tt;->n:Lcom/byazt/vvt/a$c;

    .line 19
    iget-object p1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1}, Lcom/byazt/ete/x$uj;->uj()I

    move-result p1

    if-lez p1, :cond_d

    .line 20
    iput v1, p0, Lcom/byazt/cc/tt;->c:I

    .line 21
    iget-object p1, p0, Lcom/byazt/cc/tt;->n:Lcom/byazt/vvt/a$c;

    iget-object p2, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p2}, Lcom/byazt/ete/x$uj;->uj()I

    move-result p2

    iget-object v1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1, p2, v1}, Lcom/byazt/vvt/a$c;->c(ILcom/byazt/ete/x$uj;)I

    move-result p1

    if-lez p1, :cond_c

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long p1, p1

    const-wide/16 v3, 0x3c

    mul-long p1, p1, v3

    const-wide/16 v3, 0x3e8

    mul-long p1, p1, v3

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/byazt/cc/tt;->tt:J

    return v2

    :cond_c
    if-nez p1, :cond_d

    return v2

    .line 23
    :cond_d
    iput v0, p0, Lcom/byazt/cc/tt;->c:I

    .line 24
    iget-object p1, p0, Lcom/byazt/cc/tt;->n:Lcom/byazt/vvt/a$c;

    iget-object p2, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p2}, Lcom/byazt/ete/x$uj;->n()I

    move-result p2

    iget-object v0, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    invoke-virtual {p1, p2, v0}, Lcom/byazt/vvt/a$c;->c(ILcom/byazt/ete/x$uj;)I

    move-result p1

    .line 25
    invoke-direct {p0, p1}, Lcom/byazt/cc/tt;->c(I)V

    return v4

    :cond_e
    :goto_5
    return v0
.end method

.method public c()Z
    .locals 2

    .line 26
    iget v0, p0, Lcom/byazt/cc/tt;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tt()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/cc/tt;->tt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/byazt/cc/tt;->c:I

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/cc/tt;->n:Lcom/byazt/vvt/a$c;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/byazt/ete/x$uj;->n()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/byazt/cc/tt;->a:Lcom/byazt/ete/x$uj;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/byazt/vvt/a$c;->c(ILcom/byazt/ete/x$uj;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, -0x1

    .line 34
    :goto_0
    invoke-direct {p0, v0}, Lcom/byazt/cc/tt;->c(I)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    iput v0, p0, Lcom/byazt/cc/tt;->ve:I

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    return v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    return v0
.end method
