.class Lcom/haima/hmcp/business/HmcpRequestManager$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudService(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$confirm:I

.field final synthetic val$isFoldScreen:Z

.field final synthetic val$opType:I


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;IIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->val$confirm:I

    .line 4
    .line 5
    iput p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->val$opType:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->val$isFoldScreen:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iget v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->val$confirm:I

    .line 4
    .line 5
    iget v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->val$opType:I

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->val$isFoldScreen:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudService(IILjava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->val$confirm:I

    .line 4
    .line 5
    iget v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->val$opType:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$20;->val$isFoldScreen:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudService(IILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
