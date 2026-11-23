.class Lcom/haima/hmcp/HmcpManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/HmcpManager;->getGameArchiveStatus(Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/HmcpManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager$7;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/HmcpManager$7;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$7;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public success(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$7;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->success(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
