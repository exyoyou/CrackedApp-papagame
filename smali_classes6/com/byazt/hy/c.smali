.class public Lcom/byazt/hy/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25c,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hy/c$c;
    }
.end annotation


# static fields
.field public static volatile c:J = 0x0L

.field public static volatile tt:Ljava/lang/String; = "0"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic c(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/byazt/hy/c;->c:J

    return-wide p0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/byazt/hy/c;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4
    sget-object v0, Lcom/byazt/hy/c;->tt:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/byazt/hy/c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic tt()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/hy/c;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
