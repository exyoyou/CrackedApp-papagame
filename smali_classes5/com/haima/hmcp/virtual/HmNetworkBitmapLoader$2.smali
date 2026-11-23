.class Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->initCleanup(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$2;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 1
    const-string p1, "HmNetworkBitmapLoader"

    .line 2
    .line 3
    const-string p2, "Cache cleanup task rejected! Already has a pending cleanup task."

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
