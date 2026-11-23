.class Lcom/haima/hmcp/HmcpManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/HmcpManager;->testSpeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/HmcpManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager$5;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/HmcpManager$5;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onComplete(ZII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/haima/hmcp/HmcpManager;->IsSpeedTesting:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$5;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, p2, p3}, Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;->onComplete(ZII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
