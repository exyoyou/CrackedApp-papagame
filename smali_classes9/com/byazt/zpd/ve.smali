.class public Lcom/byazt/zpd/ve;
.super Lcom/byazt/zpd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x77f,
        0x36
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zpd/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()Lcom/byazt/nr/zm;
    .locals 8

    .line 2
    new-instance v0, Lcom/byazt/nr/zm;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->uj()Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(I)Z

    move-result v3

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/byazt/zpd/c;->c(IJJ)V

    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/zpd/ve;)Lcom/byazt/nr/zm;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zpd/ve;->c()Lcom/byazt/nr/zm;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;I)V
    .locals 4

    .line 7
    invoke-virtual {p0, p2}, Lcom/byazt/zpd/c;->c(I)I

    move-result p1

    .line 8
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/pf/c;->tt()J

    move-result-wide v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    int-to-long p1, p1

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    .line 10
    new-instance p1, Lcom/byazt/zpd/ve$1;

    const-string p2, "reg_sensor"

    invoke-direct {p1, p0, p2}, Lcom/byazt/zpd/ve$1;-><init>(Lcom/byazt/zpd/ve;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    :cond_0
    return-void
.end method
