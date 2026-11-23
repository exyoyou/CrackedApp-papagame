.class Lcom/haima/hmcp/business/HmcpRequestManager$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->requestControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$accessKeyID:Ljava/lang/String;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$getControlResultListener:Lcom/haima/hmcp/listeners/OnGetControlResultListener;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnContronListener;

.field final synthetic val$pinCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$cid:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$pinCode:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$accessKeyID:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$listener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$getControlResultListener:Lcom/haima/hmcp/listeners/OnGetControlResultListener;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$language:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$cid:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$pinCode:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$accessKeyID:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$listener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$getControlResultListener:Lcom/haima/hmcp/listeners/OnGetControlResultListener;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$language:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual/range {v0 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->requestControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$cid:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$pinCode:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$accessKeyID:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$listener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$getControlResultListener:Lcom/haima/hmcp/listeners/OnGetControlResultListener;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$39;->val$language:Ljava/lang/String;

    .line 14
    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual/range {v0 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->requestControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
