.class Lcom/haima/hmcp/business/HmcpHttpManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/IHttp$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Lcom/haima/hmcp/business/IRequestPolicy;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/haima/hmcp/business/IHttp$OnResponseListener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

.field final synthetic val$postJson:Ljava/io/Serializable;

.field final synthetic val$requestTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$clazz:Ljava/lang/Class;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$requestTag:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$postJson:Ljava/io/Serializable;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$clazz:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$000(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$400()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "==postRequest onErrorResponse need stop==>"

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$400()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "==postRequest onErrorResponse==>"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    const/16 p1, -0x3e8

    .line 73
    .line 74
    if-eq p2, p1, :cond_3

    .line 75
    .line 76
    const/16 p1, -0x3eb

    .line 77
    .line 78
    if-ne p2, p1, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$clazz:Ljava/lang/Class;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->isNeedRetry(Ljava/lang/Class;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-static {}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$400()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "==postRequest onErrorResponse retryPostRequest==>"

    .line 96
    .line 97
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 101
    .line 102
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$postJson:Ljava/io/Serializable;

    .line 103
    .line 104
    iget-object p3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$clazz:Ljava/lang/Class;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    .line 107
    .line 108
    invoke-static {p1, p2, p3, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$500(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v0, Lcom/haima/hmcp/business/HmcpHttpManager$1$3;

    .line 119
    .line 120
    invoke-direct {v0, p0, p2, p3}, Lcom/haima/hmcp/business/HmcpHttpManager$1$3;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager$1;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance v0, Lcom/haima/hmcp/business/HmcpHttpManager$1$2;

    .line 134
    .line 135
    invoke-direct {v0, p0, p2, p3}, Lcom/haima/hmcp/business/HmcpHttpManager$1$2;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager$1;ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager$1;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$clazz:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$000(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$clazz:Ljava/lang/Class;

    invoke-static {v0, p1, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$200(Lcom/haima/hmcp/business/HmcpHttpManager;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/haima/hmcp/beans/BaseResult;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$requestTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$postJson:Ljava/io/Serializable;

    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$clazz:Ljava/lang/Class;

    iget-object v7, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$300(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/String;Lcom/haima/hmcp/beans/BaseResult;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$1;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/haima/hmcp/business/HmcpHttpManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager$1$1;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager$1;Lcom/haima/hmcp/beans/BaseResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
