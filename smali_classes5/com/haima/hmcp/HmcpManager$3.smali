.class Lcom/haima/hmcp/HmcpManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetPublicIPV4Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/HmcpManager;->testSpeed(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/HmcpManager;

.field final synthetic val$clientCity:Ljava/lang/String;

.field final synthetic val$clientISP:Ljava/lang/String;

.field final synthetic val$clientProvince:Ljava/lang/String;

.field final synthetic val$duration:I

.field final synthetic val$gameBID:Ljava/lang/String;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/HmcpManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager$3;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/HmcpManager$3;->val$duration:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/HmcpManager$3;->val$clientISP:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/HmcpManager$3;->val$clientProvince:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/HmcpManager$3;->val$clientCity:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/haima/hmcp/HmcpManager$3;->val$gameBID:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/haima/hmcp/HmcpManager$3;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

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
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$3;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/HmcpManager$3;->val$duration:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/HmcpManager$3;->val$clientISP:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/haima/hmcp/HmcpManager$3;->val$clientProvince:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/haima/hmcp/HmcpManager$3;->val$clientCity:Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    iget-object v6, p0, Lcom/haima/hmcp/HmcpManager$3;->val$gameBID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/haima/hmcp/HmcpManager$3;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 16
    .line 17
    invoke-static/range {v0 .. v7}, Lcom/haima/hmcp/HmcpManager;->access$300(Lcom/haima/hmcp/HmcpManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$3;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/HmcpManager$3;->val$duration:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/HmcpManager$3;->val$clientISP:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/haima/hmcp/HmcpManager$3;->val$clientProvince:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/haima/hmcp/HmcpManager$3;->val$clientCity:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/haima/hmcp/HmcpManager$3;->val$gameBID:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/haima/hmcp/HmcpManager$3;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 14
    .line 15
    move-object v5, p1

    .line 16
    invoke-static/range {v0 .. v7}, Lcom/haima/hmcp/HmcpManager;->access$300(Lcom/haima/hmcp/HmcpManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
