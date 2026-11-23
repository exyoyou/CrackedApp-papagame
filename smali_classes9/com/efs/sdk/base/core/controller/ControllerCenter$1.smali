.class final Lcom/efs/sdk/base/core/controller/ControllerCenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/base/core/controller/ControllerCenter;->b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/base/protocol/ILogProtocol;

.field final synthetic b:Lcom/efs/sdk/base/core/controller/ControllerCenter;


# direct methods
.method constructor <init>(Lcom/efs/sdk/base/core/controller/ControllerCenter;Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 2
    .line 3
    invoke-static {}, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->getInstance()Lcom/efs/sdk/base/core/config/GlobalInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->getGlobalInfo()Lcom/efs/sdk/base/core/config/GlobalInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/efs/sdk/base/protocol/ILogProtocol;->insertGlobal(Lcom/efs/sdk/base/core/config/GlobalInfo;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "wa"

    .line 15
    .line 16
    iget-object v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLogType()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isEnableSendLog()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/efs/sdk/base/core/d/b;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)Lcom/efs/sdk/base/core/d/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {}, Lcom/efs/sdk/base/core/e/d$a;->a()Lcom/efs/sdk/base/core/e/d;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lcom/efs/sdk/base/core/e/d$1;

    .line 55
    .line 56
    invoke-direct {v2, v1, v0}, Lcom/efs/sdk/base/core/e/d$1;-><init>(Lcom/efs/sdk/base/core/e/d;Lcom/efs/sdk/base/core/d/b;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/efs/sdk/base/core/util/concurrent/WorkThreadUtil;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    const-string v1, "efs.base"

    .line 65
    .line 66
    const-string v2, "log send error"

    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
