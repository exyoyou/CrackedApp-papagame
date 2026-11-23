.class Lcom/haima/hmcp/business/HmcpHttpManager$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpHttpManager$3;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/business/HmcpHttpManager$3;

.field final synthetic val$result:Lcom/haima/hmcp/beans/BaseResult;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpHttpManager$3;Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3$1;->this$1:Lcom/haima/hmcp/business/HmcpHttpManager$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3$1;->val$result:Lcom/haima/hmcp/beans/BaseResult;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3$1;->this$1:Lcom/haima/hmcp/business/HmcpHttpManager$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3$1;->val$result:Lcom/haima/hmcp/beans/BaseResult;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/OnVolleyListener;->onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
