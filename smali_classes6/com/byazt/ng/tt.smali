.class public Lcom/byazt/ng/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ng/tt$c;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/ng/tt;


# instance fields
.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/ng/tt$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ng/tt;->tt:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static c()Lcom/byazt/ng/tt;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ng/tt;->c:Lcom/byazt/ng/tt;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/ng/tt;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/ng/tt;->c:Lcom/byazt/ng/tt;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/ng/tt;

    invoke-direct {v1}, Lcom/byazt/ng/tt;-><init>()V

    sput-object v1, Lcom/byazt/ng/tt;->c:Lcom/byazt/ng/tt;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/ng/tt;->c:Lcom/byazt/ng/tt;

    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/ng/uj;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "--==-- event \u4fdd\u5b58\u5230\u57cb\u70b9\u8f85\u52a9\u6a21\u5757"

    .line 7
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/ng/tt;->tt:Ljava/util/List;

    new-instance v1, Lcom/byazt/ng/tt$c;

    invoke-direct {v1, p1, p2}, Lcom/byazt/ng/tt$c;-><init>(Lcom/byazt/ng/uj;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/ng/tt$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ng/tt;->tt:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()V
    .locals 2

    .line 1
    const-string v0, "TTMediationSDK"

    .line 2
    .line 3
    const-string v1, "--==-- event \u6e05\u7a7a\u57cb\u70b9\u8f85\u52a9\u6a21\u5757"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ng/tt;->tt:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
