.class public Lcom/byazt/mtp/tt;
.super Lcom/byazt/ip/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfd,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/ip/ve<",
        "Lcom/byazt/hi/tt;",
        "Lcom/byazt/ha/tt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/ip/ve;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/ha/tt;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/byazt/ha/tt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ip/ve;->ve:Lcom/byazt/ip/tt;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/mtp/tt;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ip/ve;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/hi/tt;Lcom/byazt/ip/x;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/byazt/ip/ve;->tt:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/byazt/ip/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/byazt/ip/x;-><init>(J)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/mtp/tt$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/mtp/tt$1;-><init>(Lcom/byazt/mtp/tt;Lcom/byazt/hi/tt;Lcom/byazt/ip/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
