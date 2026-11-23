.class public final Lcom/kwad/components/core/webview/jshandler/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/webview/c/a;


# instance fields
.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/webview/jshandler/ar;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/kwad/components/core/webview/jshandler/ar;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/c/c;)V
    .locals 6
    .param p2    # Lcom/kwad/sdk/core/webview/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/a/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/webview/a/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/webview/jshandler/ar;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, -0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/kwad/components/core/webview/jshandler/ar;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 13
    .line 14
    invoke-static {p1, v2}, Lcom/kwad/sdk/core/adlog/c;->n(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 15
    .line 16
    .line 17
    const-string p1, "context\u4e3a\u7a7a"

    .line 18
    .line 19
    invoke-interface {p2, v3, p1}, Lcom/kwad/sdk/core/webview/c/c;->onError(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v4}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/kwad/components/core/webview/jshandler/ar;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .line 34
    :try_start_1
    iget v4, v0, Lcom/kwad/components/core/webview/a/c;->apo:I

    .line 35
    .line 36
    if-lez v4, :cond_1

    .line 37
    .line 38
    invoke-static {v4}, Lcom/kwad/components/core/offline/a/f/a/a;->bp(I)Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, v0, Lcom/kwad/components/core/webview/a/c;->PC:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v4, v5}, Lcom/kwad/sdk/core/response/helper/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_1
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lcom/kwad/components/core/webview/jshandler/ar;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 51
    .line 52
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/adlog/c;->n(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "adTemplate\u4e3a\u7a7a\uff1a"

    .line 58
    .line 59
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v0, v0, Lcom/kwad/components/core/webview/a/c;->apo:I

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {p2, v3, v0}, Lcom/kwad/sdk/core/webview/c/c;->onError(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v4}, Lcom/kwad/sdk/core/response/helper/a;->du(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v0, v4}, Lcom/kwad/components/core/webview/a/c;->bB(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/AdInfo$SmallAppJumpInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v4, p0, Lcom/kwad/components/core/webview/jshandler/ar;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    sget-object v5, Lcom/kwad/sdk/commercial/smallApp/JumpFrom;->H5:Lcom/kwad/sdk/commercial/smallApp/JumpFrom;

    .line 90
    .line 91
    invoke-static {v4, v0, v5, p1}, Lcom/kwad/components/core/e/d/f;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdInfo$SmallAppJumpInfo;Lcom/kwad/sdk/commercial/smallApp/JumpFrom;Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v4, 0x1

    .line 96
    if-ne v0, v4, :cond_3

    .line 97
    .line 98
    invoke-interface {p2, v1}, Lcom/kwad/sdk/core/webview/c/c;->b(Lcom/kwad/sdk/core/b;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const-string v0, "\u8df3\u8f6c\u5931\u8d25"

    .line 103
    .line 104
    invoke-interface {p2, v3, v0}, Lcom/kwad/sdk/core/webview/c/c;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    move-object v1, p1

    .line 110
    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    :goto_0
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/adlog/c;->n(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 113
    .line 114
    .line 115
    const-string p1, "\u89e3\u6790\u5931\u8d25"

    .line 116
    .line 117
    invoke-interface {p2, v3, p1}, Lcom/kwad/sdk/core/webview/c/c;->onError(ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "openWechatMiniProgram"

    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method
