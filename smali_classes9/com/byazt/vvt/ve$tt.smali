.class public Lcom/byazt/vvt/ve$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x21f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/vvt/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tt"
.end annotation


# instance fields
.field public c:J

.field public tt:Lorg/json/JSONObject;


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

.method private c(I)Z
    .locals 5

    .line 5
    invoke-static {p1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/x$ve;->z()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/byazt/vvt/ve$tt;->c:J

    sub-long/2addr v1, v3

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/byazt/vvt/ve$tt;->tt:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public c(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/vvt/ve$tt;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/byazt/vvt/ve;->ve(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/vvt/ve$tt;->tt:Lorg/json/JSONObject;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/vvt/ve$tt;->c:J

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/vvt/ve$tt;->tt:Lorg/json/JSONObject;

    return-object p1
.end method
