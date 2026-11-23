.class Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->createExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$1;->this$0:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

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
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p2, "HmVir pics ThreadPoolExecutor rejectedExecution"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
