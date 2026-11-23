.class Lcom/haima/hmcp/business/HmcpRequestManager$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate(Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$enable:Ljava/lang/Boolean;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$18;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$18;->val$enable:Ljava/lang/Boolean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$18;->val$listener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$18;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$18;->val$enable:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$18;->val$listener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$18;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$18;->val$enable:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$18;->val$listener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
