.class Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->startCacheCleanup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$6;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "startCacheCleanup: cleanup task completed, flag reset"

    .line 2
    .line 3
    const-string v1, "HmNetworkBitmapLoader"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$6;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 7
    .line 8
    invoke-static {v3}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$200(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$6;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$300(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v3

    .line 25
    iget-object v4, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$6;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 26
    .line 27
    invoke-static {v4}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$300(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v3
.end method
