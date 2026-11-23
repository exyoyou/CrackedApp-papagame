.class public Lcom/byazt/us/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/g/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfb,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/us/n$c;
    }
.end annotation


# instance fields
.field public c:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/byazt/us/n;->c:J

    .line 4
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/g/c;->c(Lcom/byazt/g/c$c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/us/n$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/us/n;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/us/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/us/n;->c:J

    return-wide v0
.end method

.method public static c()Lcom/byazt/us/n;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/us/n$c;->c()Lcom/byazt/us/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/us/uj;)V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/us/n;->c(Lcom/byazt/us/uj;J)V

    return-void
.end method

.method public c(Lcom/byazt/us/uj;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object v0

    new-instance v1, Lcom/byazt/us/n$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/byazt/us/n$1;-><init>(Lcom/byazt/us/n;JLcom/byazt/us/uj;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/us/n;->c:J

    return-void
.end method

.method public tt(Lcom/byazt/us/uj;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "check_an_result_delay"

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    move v2, v0

    :cond_1
    int-to-long v0, v2

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/us/n;->c(Lcom/byazt/us/uj;J)V

    return-void
.end method

.method public ve()V
    .locals 0

    return-void
.end method
