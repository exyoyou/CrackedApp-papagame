.class Lcom/haima/hmcp/business/HmcpRequestManager$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager$15;->onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/business/HmcpRequestManager$15;

.field final synthetic val$jsonMap:Ljava/util/Map;

.field final synthetic val$responseSpecialInfo:Lcom/haima/hmcp/beans/ResponseSpecialInfo;

.field final synthetic val$saasMinimumSpeed:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager$15;Ljava/lang/String;Ljava/util/Map;Lcom/haima/hmcp/beans/ResponseSpecialInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->this$1:Lcom/haima/hmcp/business/HmcpRequestManager$15;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$saasMinimumSpeed:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$responseSpecialInfo:Lcom/haima/hmcp/beans/ResponseSpecialInfo;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onCompletion(FLcom/haima/hmcp/utils/SpeedGather;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$saasMinimumSpeed:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$saasMinimumSpeed:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    nop

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    int-to-float v1, p2

    .line 20
    cmpl-float v1, p1, v1

    .line 21
    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$responseSpecialInfo:Lcom/haima/hmcp/beans/ResponseSpecialInfo;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/haima/hmcp/beans/ResponseSpecialInfo;->url:Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "url"

    .line 37
    .line 38
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$saasMinimumSpeed:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    const-string v2, ""

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$saasMinimumSpeed:Ljava/lang/String;

    .line 55
    .line 56
    :goto_1
    const-string v3, "minimum_speed"

    .line 57
    .line 58
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->this$1:Lcom/haima/hmcp/business/HmcpRequestManager$15;

    .line 64
    .line 65
    iget v2, v2, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$duration:I

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "duration"

    .line 72
    .line 73
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->this$1:Lcom/haima/hmcp/business/HmcpRequestManager$15;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 79
    .line 80
    float-to-int v2, p1

    .line 81
    invoke-interface {v1, v0, v2, p2}, Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;->onComplete(ZII)V

    .line 82
    .line 83
    .line 84
    const-string p2, "status"

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 89
    .line 90
    const-string v1, "finish"

    .line 91
    .line 92
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 96
    .line 97
    const-string v0, "speed"

    .line 98
    .line 99
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 108
    .line 109
    const-string v0, "error"

    .line 110
    .line 111
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 115
    .line 116
    const-string p2, "msg"

    .line 117
    .line 118
    const-string v0, "speed < 0 || gather == null"

    .line 119
    .line 120
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :goto_2
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;->val$jsonMap:Ljava/util/Map;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string p2, "13704"

    .line 134
    .line 135
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method
