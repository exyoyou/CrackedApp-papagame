.class public Lcom/byazt/lh/c;
.super Lcom/byazt/ip/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41a,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/ip/uj<",
        "Lcom/byazt/hi/c;",
        "Lcom/byazt/ha/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final tt:Lcom/byazt/zyd/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/ip/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/lh/c$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/lh/c$1;-><init>(Lcom/byazt/lh/c;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/lh/c;->tt:Lcom/byazt/zyd/c;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/lh/c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ip/uj;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/lh/c;)Lcom/byazt/zyd/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lh/c;->tt:Lcom/byazt/zyd/c;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/byazt/hi/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/lh/c;->c(Ljava/lang/String;Lcom/byazt/hi/c;Lcom/byazt/ip/x;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/hi/c;Lcom/byazt/ip/x;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;)Lcom/byazt/ip/ve;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/byazt/mtp/c;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/byazt/mtp/c;

    invoke-virtual {p1, p2, p3}, Lcom/byazt/mtp/c;->c(Lcom/byazt/hi/c;Lcom/byazt/ip/x;)V

    :cond_0
    return-void
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/byazt/mtp/c;

    invoke-direct {v0, p1, p2}, Lcom/byazt/mtp/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/byazt/lh/c;->tt:Lcom/byazt/zyd/c;

    invoke-virtual {v0, p2}, Lcom/byazt/ip/ve;->c(Lcom/byazt/ip/a;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/ve;)V

    return-void
.end method
