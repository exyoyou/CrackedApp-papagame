.class Lcom/haima/hmcp/business/HmcpRequestManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getSwitchStreamTypeRequest(Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$onGetSwitchStreamTypeResultListener:Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;

.field final synthetic val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

.field final synthetic val$streamType:Lcom/haima/hmcp/enums/StreamType;

.field final synthetic val$switchCode:I


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 4
    .line 5
    iput p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$switchCode:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$onGetSwitchStreamTypeResultListener:Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 6
    .line 7
    iget v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$switchCode:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$onGetSwitchStreamTypeResultListener:Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSwitchStreamTypeRequest(Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 4
    .line 5
    iget v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$switchCode:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$5;->val$onGetSwitchStreamTypeResultListener:Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getSwitchStreamTypeRequest(Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
