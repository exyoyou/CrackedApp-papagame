.class public Lcom/haima/hmcp/utils/HmNetWorkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mQueue:Lcom/haima/hmcp/volley/RequestQueue;


# instance fields
.field private instance:Lcom/haima/hmcp/utils/HmNetWorkManager;


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

.method public static getRequestQueue()Lcom/haima/hmcp/volley/RequestQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmNetWorkManager;->mQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/utils/HmNetWorkManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/haima/hmcp/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/haima/hmcp/volley/RequestQueue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/haima/hmcp/utils/HmNetWorkManager;->mQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/HmNetWorkManager;->mQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 14
    .line 15
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sput-object p0, Lcom/haima/hmcp/utils/HmNetWorkManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/haima/hmcp/utils/HmNetWorkManager;->getRequestQueue()Lcom/haima/hmcp/volley/RequestQueue;

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public instance()Lcom/haima/hmcp/utils/HmNetWorkManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmNetWorkManager;->instance:Lcom/haima/hmcp/utils/HmNetWorkManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v0, Lcom/haima/hmcp/utils/HmNetWorkManager;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/haima/hmcp/utils/HmNetWorkManager;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/utils/HmNetWorkManager;->instance:Lcom/haima/hmcp/utils/HmNetWorkManager;

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v0

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmNetWorkManager;->instance:Lcom/haima/hmcp/utils/HmNetWorkManager;

    .line 19
    .line 20
    return-object v0
.end method

.method public post()V
    .locals 0

    return-void
.end method
