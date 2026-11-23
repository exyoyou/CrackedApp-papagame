.class public Lcom/byazt/di/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x159,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/di/i$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "i"

.field public static tt:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/di/i$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/di/i;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/di/i;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/di/i$c;->c()Lcom/byazt/di/i;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic tt()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/di/i;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public c(ILcom/byazt/s/z;)V
    .locals 4

    .line 31
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object v0

    sget-object v1, Lcom/byazt/di/i;->c:Ljava/lang/String;

    const-string v2, "\u52a8\u6001\u5e7f\u64ad\u76d1\u542c\u7684\u6301\u7eed\u65f6\u95f4\u4e3a:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerMarketInstallFinishBroadcast"

    invoke-virtual {v0, v1, v3, v2}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-boolean v0, Lcom/byazt/di/i;->tt:Z

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/byazt/z/uj;->c(Lcom/byazt/s/z;)V

    const/4 p2, 0x1

    .line 34
    sput-boolean p2, Lcom/byazt/di/i;->tt:Z

    .line 35
    :cond_0
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/z/uj;->c(I)V

    return-void
.end method

.method public c(Lcom/byazt/dd/tt;)V
    .locals 10

    .line 20
    invoke-static {p1}, Lcom/byazt/hu/n;->ve(Lcom/byazt/dd/tt;)Z

    move-result v0

    const-string v1, "checkMarketInstallFinishEventForReboot"

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    sget-object v0, Lcom/byazt/di/i;->c:Ljava/lang/String;

    const-string v2, "\u7ebf\u7a0b\u8f6e\u8be2\u603b\u5f00\u5173\u672a\u5f00\u542f,\u56e0\u6b64\u4e0d\u6267\u884c\u515c\u5e95\u903b\u8f91"

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 22
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    sget-object v0, Lcom/byazt/di/i;->c:Ljava/lang/String;

    const-string v2, "nativeDownloadModel\u4e3a\u7a7a,\u4e0d\u7b26\u5408\u9884\u671f"

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/hu/t;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_1
    iget-object v0, p1, Lcom/byazt/dd/tt;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->r()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 24
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    sget-object v0, Lcom/byazt/di/i;->c:Ljava/lang/String;

    const-string v2, "\u515c\u5e95\u8fc7\u4e00\u6b21\u4e86,\u4e0d\u8fdb\u884c\u91cd\u590d\u515c\u5e95"

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_2
    invoke-static {p1}, Lcom/byazt/hu/n;->uj(Lcom/byazt/dd/tt;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "market_install_finish_check_time"

    const/16 v3, 0x258

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->r()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-ltz v0, :cond_3

    .line 28
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    sget-object v0, Lcom/byazt/di/i;->c:Ljava/lang/String;

    const-string v2, "\u5f53\u524d\u65f6\u95f4\u8ddd\u79bb\u9996\u6b21\u68c0\u6d4b\u65f6\u95f4\u8d85\u51fa\u4e86\u5e7f\u64ad\u751f\u6548\u671f,\u4e0d\u518d\u6267\u884c\u515c\u5e95\u7b56\u7565"

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->r()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v1, v0

    .line 30
    new-instance v0, Lcom/byazt/di/i$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/di/i$2;-><init>(Lcom/byazt/di/i;Lcom/byazt/dd/tt;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/di/i;->c(ILcom/byazt/s/z;)V

    :cond_4
    return-void
.end method

.method public c(Lcom/byazt/nn/n;Lcom/byazt/dd/tt;)V
    .locals 8

    .line 2
    invoke-static {p2}, Lcom/byazt/hu/n;->ve(Lcom/byazt/dd/tt;)Z

    move-result p1

    const-string v0, "checkMarketInstallFinishEvent"

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    sget-object p2, Lcom/byazt/di/i;->c:Ljava/lang/String;

    const-string v1, "\u5f00\u5173\u672a\u5f00\u542f, \u4e0d\u4f7f\u7528\u52a8\u6001\u5e7f\u64ad\u76d1\u542c\u80fd\u529b"

    invoke-virtual {p1, p2, v0, v1}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 4
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    sget-object p2, Lcom/byazt/di/i;->c:Ljava/lang/String;

    const-string v1, "nativeDownloadModel\u4e3a\u7a7a,\u4e0d\u7b26\u5408\u9884\u671f"

    invoke-virtual {p1, p2, v0, v1}, Lcom/byazt/hu/t;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->kp()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    sget-object p2, Lcom/byazt/di/i;->c:Ljava/lang/String;

    const-string v1, "\u6b63\u5728\u76d1\u542c\u4e2d,\u4e0d\u91cd\u590d\u76d1\u542c"

    invoke-virtual {p1, p2, v0, v1}, Lcom/byazt/hu/t;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    sget-object v1, Lcom/byazt/di/i;->c:Ljava/lang/String;

    const-string v2, "\u9488\u5bf9\u5546\u5e97\u76f4\u6295\u5e7f\u544a,\u5f00\u59cb\u68c0\u6d4b\u5b89\u88c5\u5b8c\u6210\u4e8b\u4ef6"

    invoke-virtual {p1, v1, v0, v2}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Lcom/byazt/hu/n;->uj(Lcom/byazt/dd/tt;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    const-string v2, "\u5f00\u59cb\u8fdb\u884c\u52a8\u6001\u5e7f\u64ad\u76d1\u542c"

    invoke-virtual {p1, v1, v0, v2}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "market_install_finish_check_time"

    const/16 v3, 0x258

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 11
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->r()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/byazt/dd/tt;->r()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v4, p1

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    const-string v2, "\u76ee\u524d\u4ecd\u5728\u5e7f\u64ad\u76d1\u542c\u7684\u751f\u6548\u671f\u5185,\u4e0d\u8fdb\u884c\u91cd\u590d\u6ce8\u518c"

    invoke-virtual {p1, v1, v0, v2}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/byazt/dd/tt;->da(J)V

    .line 14
    new-instance v2, Lcom/byazt/di/i$1;

    invoke-direct {v2, p0, p2}, Lcom/byazt/di/i$1;-><init>(Lcom/byazt/di/i;Lcom/byazt/dd/tt;)V

    invoke-virtual {p0, p1, v2}, Lcom/byazt/di/i;->c(ILcom/byazt/s/z;)V

    .line 15
    :cond_5
    :goto_1
    invoke-static {p2}, Lcom/byazt/hu/n;->n(Lcom/byazt/dd/tt;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object p1

    const-string v2, "\u5f00\u542f\u8f6e\u8be2\u7ebf\u7a0b\u80fd\u529b,\u4f5c\u4e3a\u5bb9\u707e\u624b\u6bb5"

    invoke-virtual {p1, v1, v0, v2}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/byazt/gq/u;->c()Lcom/byazt/gq/u;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/gq/u;->c(Lcom/byazt/dd/tt;)V

    .line 18
    :cond_6
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 19
    :catch_0
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "\u76d1\u542c\u5546\u5e97\u573a\u666f\u5b89\u88c5\u5b8c\u6210\u4e8b\u4ef6\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/dm/ve;->c(ZLjava/lang/String;)V

    return-void
.end method
