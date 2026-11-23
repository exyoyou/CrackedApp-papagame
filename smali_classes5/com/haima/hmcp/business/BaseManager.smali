.class public Lcom/haima/hmcp/business/BaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseManager"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "BaseManager"

    .line 15
    .line 16
    const-string v1, " no implement HmcpPlayerListenerD"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public resetListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setHmcpPlayerListener(Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 2
    .line 3
    return-void
.end method
