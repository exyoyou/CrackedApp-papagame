.class public Lcom/cloudplay/messagesdk/network/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/network/INetwork;


# static fields
.field private static volatile b:Lcom/cloudplay/messagesdk/network/b;


# instance fields
.field private a:Lcom/cloudplay/messagesdk/network/INetwork;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/cloudplay/messagesdk/network/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/network/b;->b:Lcom/cloudplay/messagesdk/network/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/cloudplay/messagesdk/network/b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/cloudplay/messagesdk/network/b;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/cloudplay/messagesdk/network/b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/cloudplay/messagesdk/network/b;->b:Lcom/cloudplay/messagesdk/network/b;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lcom/cloudplay/messagesdk/network/b;->b:Lcom/cloudplay/messagesdk/network/b;

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/network/b;->b:Lcom/cloudplay/messagesdk/network/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/b;->a:Lcom/cloudplay/messagesdk/network/INetwork;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/network/INetwork;->cancel(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "NetworkManager"

    .line 12
    .line 13
    const-string v0, "cancel() mInstance is null "

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloudplay/messagesdk/network/c;->b()Lcom/cloudplay/messagesdk/network/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/b;->a:Lcom/cloudplay/messagesdk/network/INetwork;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/network/INetwork;->init(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public postJson(Ljava/lang/String;Lorg/json/JSONObject;Lcom/cloudplay/messagesdk/network/HttpResultListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/network/b;->b:Lcom/cloudplay/messagesdk/network/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/b;->a:Lcom/cloudplay/messagesdk/network/INetwork;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/cloudplay/messagesdk/network/INetwork;->postJson(Ljava/lang/String;Lorg/json/JSONObject;Lcom/cloudplay/messagesdk/network/HttpResultListener;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "NetworkManager"

    .line 12
    .line 13
    const-string p2, "postJson() mInstance is null "

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
