.class Lcom/haima/hmcp/business/HmcpHttpManager$3$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpHttpManager$3;->onError(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/business/HmcpHttpManager$3;

.field final synthetic val$finalCurErrorRetryCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpHttpManager$3;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3$2;->this$1:Lcom/haima/hmcp/business/HmcpHttpManager$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3$2;->val$finalCurErrorRetryCount:Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$400()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u8bf7\u6c42\u5931\u8d25\u91cd\u8bd5\uff1apostJson:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3$2;->this$1:Lcom/haima/hmcp/business/HmcpHttpManager$3;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ",\u7b2c"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3$2;->val$finalCurErrorRetryCount:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "\u6b21\u91cd\u8bd5"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3$2;->this$1:Lcom/haima/hmcp/business/HmcpHttpManager$3;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    .line 49
    .line 50
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$clazz:Ljava/lang/Class;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    .line 53
    .line 54
    invoke-static {v1, v2, v3, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$500(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
