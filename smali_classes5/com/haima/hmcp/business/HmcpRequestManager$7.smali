.class Lcom/haima/hmcp/business/HmcpRequestManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getStartStreamingRequest(Lcom/haima/hmcp/listeners/OnStartStreamingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$onStartStreamingListener:Lcom/haima/hmcp/listeners/OnStartStreamingListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnStartStreamingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$7;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$7;->val$onStartStreamingListener:Lcom/haima/hmcp/listeners/OnStartStreamingListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$7;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$7;->val$onStartStreamingListener:Lcom/haima/hmcp/listeners/OnStartStreamingListener;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getStartStreamingRequest(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnStartStreamingListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$7;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$7;->val$onStartStreamingListener:Lcom/haima/hmcp/listeners/OnStartStreamingListener;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getStartStreamingRequest(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnStartStreamingListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
