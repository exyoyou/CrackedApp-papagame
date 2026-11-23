.class public Lcom/byazt/ar/AdDownloadController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/su/DownloadController;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x77,
        0x54f
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ar/AdDownloadController$Builder;
    }
.end annotation


# instance fields
.field public mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadMarketInterceptor:Lcom/byazt/ou/DownloadMarketInterceptor;

.field public mDownloadMode:I

.field public mEnableAH:Z

.field public mEnableAM:Z

.field public mEnableNewActivity:Z

.field public mEnableOppoAutoDownload:Z

.field public mEnableShowComplianceDialog:Z

.field public mExtraClickOperation:Ljava/lang/Object;

.field public mExtraJson:Lorg/json/JSONObject;

.field public mExtraObject:Ljava/lang/Object;

.field public mInterceptFlag:I

.field public mIsAddToDownloadManage:Z

.field public mIsAutoDownloadOnCardShow:Z

.field public mIsEnableBackDialog:Z

.field public mLinkMode:I

.field public mShouldUseNewWebView:Z

.field public marketStatusChangeListener:Lcom/byazt/su/tt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableShowComplianceDialog:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableNewActivity:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableAH:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableAM:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableOppoAutoDownload:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/byazt/ar/AdDownloadController;->mDownloadMarketInterceptor:Lcom/byazt/ou/DownloadMarketInterceptor;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/ar/AdDownloadController;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadController;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/ar/AdDownloadController$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadController$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v1, "link_mode"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setLinkMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 17
    .line 18
    .line 19
    const-string v1, "download_mode"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setDownloadMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 26
    .line 27
    .line 28
    const-string v1, "enable_back_dialog"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne v1, v3, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 42
    .line 43
    .line 44
    const-string v1, "add_to_manage"

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ne v1, v3, :cond_2

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    :goto_1
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsAddToDownloadManage(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 56
    .line 57
    .line 58
    const-string v1, "use_new_webview"

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v1, v3, :cond_3

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const/4 v1, 0x0

    .line 69
    :goto_2
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setShouldUseNewWebView(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 70
    .line 71
    .line 72
    const-string v1, "intercept_flag"

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setInterceptFlag(I)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 79
    .line 80
    .line 81
    const-string v1, "enable_show_compliance_dialog"

    .line 82
    .line 83
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-ne v1, v3, :cond_4

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    const/4 v1, 0x0

    .line 92
    :goto_3
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableShowComplianceDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 93
    .line 94
    .line 95
    const-string v1, "is_auto_download_on_card_show"

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ne v1, v3, :cond_5

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    const/4 v1, 0x0

    .line 106
    :goto_4
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsAutoDownloadOnCardShow(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 107
    .line 108
    .line 109
    const-string v1, "enable_new_activity"

    .line 110
    .line 111
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-ne v1, v3, :cond_6

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    goto :goto_5

    .line 119
    :cond_6
    const/4 v1, 0x0

    .line 120
    :goto_5
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableNewActivity(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 121
    .line 122
    .line 123
    const-string v1, "enable_ah"

    .line 124
    .line 125
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-ne v1, v3, :cond_7

    .line 130
    .line 131
    const/4 v1, 0x1

    .line 132
    goto :goto_6

    .line 133
    :cond_7
    const/4 v1, 0x0

    .line 134
    :goto_6
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableAH(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 135
    .line 136
    .line 137
    const-string v1, "enable_am"

    .line 138
    .line 139
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-ne v1, v3, :cond_8

    .line 144
    .line 145
    const/4 v1, 0x1

    .line 146
    goto :goto_7

    .line 147
    :cond_8
    const/4 v1, 0x0

    .line 148
    :goto_7
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableAM(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 149
    .line 150
    .line 151
    const-string v1, "extra"

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setExtraJson(Lorg/json/JSONObject;)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 158
    .line 159
    .line 160
    const-string v1, "enable_oppo_auto_download"

    .line 161
    .line 162
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-ne p0, v3, :cond_9

    .line 167
    .line 168
    const/4 v2, 0x1

    .line 169
    :cond_9
    invoke-virtual {v0, v2}, Lcom/byazt/ar/AdDownloadController$Builder;->setEnableOppoAutoDownload(Z)Lcom/byazt/ar/AdDownloadController$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_8

    .line 173
    :catch_0
    move-exception p0

    .line 174
    invoke-static {}, Lcom/byazt/gq/t;->gt()Lcom/byazt/pd/c;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v2, "AdDownloadController fromJson"

    .line 179
    .line 180
    invoke-interface {v1, p0, v2}, Lcom/byazt/pd/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_8
    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadController$Builder;->build()Lcom/byazt/ar/AdDownloadController;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0
.end method


# virtual methods
.method public enableAH()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableAH:Z

    .line 2
    .line 3
    return v0
.end method

.method public enableAM()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableAM:Z

    .line 2
    .line 3
    return v0
.end method

.method public enableNewActivity()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableNewActivity:Z

    .line 2
    .line 3
    return v0
.end method

.method public enableOppoAutoDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableOppoAutoDownload:Z

    .line 2
    .line 3
    return v0
.end method

.method public enableShowComplianceDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mEnableShowComplianceDialog:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDowloadChunkCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadMarketInterceptor()Lcom/byazt/ou/DownloadMarketInterceptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController;->mDownloadMarketInterceptor:Lcom/byazt/ou/DownloadMarketInterceptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ar/AdDownloadController;->mDownloadMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtraClickOperation()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController;->mExtraClickOperation:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraJson()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController;->mExtraJson:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController;->mExtraObject:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterceptFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ar/AdDownloadController;->mInterceptFlag:I

    .line 2
    .line 3
    return v0
.end method

.method public getLinkMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ar/AdDownloadController;->mLinkMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getMarketStatusChangeListener()Lcom/byazt/su/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController;->marketStatusChangeListener:Lcom/byazt/su/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWeakActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ar/AdDownloadController;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public isAddToDownloadManage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mIsAddToDownloadManage:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAutoDownloadOnCardShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mIsAutoDownloadOnCardShow:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableBackDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mIsEnableBackDialog:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableMultipleDownload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDownloadMarketInterceptor(Lcom/byazt/ou/DownloadMarketInterceptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ar/AdDownloadController;->mDownloadMarketInterceptor:Lcom/byazt/ou/DownloadMarketInterceptor;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ar/AdDownloadController;->mDownloadMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableNewActivity(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ar/AdDownloadController;->mEnableNewActivity:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableOppoAutoDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ar/AdDownloadController;->mEnableOppoAutoDownload:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableShowComplianceDialog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ar/AdDownloadController;->mEnableShowComplianceDialog:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExtraJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ar/AdDownloadController;->mExtraJson:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-void
.end method

.method public setExtraObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ar/AdDownloadController;->mExtraObject:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setIsAutoDownloadOnCardShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ar/AdDownloadController;->mIsAutoDownloadOnCardShow:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLinkMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ar/AdDownloadController;->mLinkMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setMarketStatusChangeListener(Lcom/byazt/su/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ar/AdDownloadController;->marketStatusChangeListener:Lcom/byazt/su/tt;

    .line 2
    .line 3
    return-void
.end method

.method public setWeakActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/ar/AdDownloadController;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/byazt/ar/AdDownloadController;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    return-void
.end method

.method public shouldUseNewWebView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ar/AdDownloadController;->mShouldUseNewWebView:Z

    .line 2
    .line 3
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "link_mode"

    .line 7
    .line 8
    iget v2, p0, Lcom/byazt/ar/AdDownloadController;->mLinkMode:I

    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "download_mode"

    .line 18
    .line 19
    iget v2, p0, Lcom/byazt/ar/AdDownloadController;->mDownloadMode:I

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v1, "enable_back_dialog"

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/byazt/ar/AdDownloadController;->mIsEnableBackDialog:Z

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v1, "add_to_manage"

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/byazt/ar/AdDownloadController;->mIsAddToDownloadManage:Z

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "use_new_webview"

    .line 63
    .line 64
    iget-boolean v2, p0, Lcom/byazt/ar/AdDownloadController;->mShouldUseNewWebView:Z

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v2, 0x0

    .line 71
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string v1, "intercept_flag"

    .line 79
    .line 80
    iget v2, p0, Lcom/byazt/ar/AdDownloadController;->mInterceptFlag:I

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    const-string v1, "enable_show_compliance_dialog"

    .line 90
    .line 91
    iget-boolean v2, p0, Lcom/byazt/ar/AdDownloadController;->mEnableShowComplianceDialog:Z

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    const/4 v2, 0x1

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    const/4 v2, 0x0

    .line 98
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string v1, "is_auto_download_on_card_show"

    .line 106
    .line 107
    iget-boolean v2, p0, Lcom/byazt/ar/AdDownloadController;->mIsAutoDownloadOnCardShow:Z

    .line 108
    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    goto :goto_4

    .line 113
    :cond_4
    const/4 v2, 0x0

    .line 114
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    const-string v1, "extra"

    .line 122
    .line 123
    iget-object v2, p0, Lcom/byazt/ar/AdDownloadController;->mExtraJson:Lorg/json/JSONObject;

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    const-string v1, "enable_new_activity"

    .line 129
    .line 130
    iget-boolean v2, p0, Lcom/byazt/ar/AdDownloadController;->mEnableNewActivity:Z

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    const/4 v2, 0x1

    .line 135
    goto :goto_5

    .line 136
    :cond_5
    const/4 v2, 0x0

    .line 137
    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    const-string v1, "enable_ah"

    .line 145
    .line 146
    iget-boolean v2, p0, Lcom/byazt/ar/AdDownloadController;->mEnableAH:Z

    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    const/4 v2, 0x1

    .line 151
    goto :goto_6

    .line 152
    :cond_6
    const/4 v2, 0x0

    .line 153
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    const-string v1, "enable_am"

    .line 161
    .line 162
    iget-boolean v2, p0, Lcom/byazt/ar/AdDownloadController;->mEnableAM:Z

    .line 163
    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    const/4 v2, 0x0

    .line 169
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    const-string v1, "enable_oppo_auto_download"

    .line 177
    .line 178
    iget-boolean v2, p0, Lcom/byazt/ar/AdDownloadController;->mEnableOppoAutoDownload:Z

    .line 179
    .line 180
    if-eqz v2, :cond_8

    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_8
    const/4 v3, 0x0

    .line 184
    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_9

    .line 192
    :catch_0
    move-exception v1

    .line 193
    invoke-static {}, Lcom/byazt/gq/t;->gt()Lcom/byazt/pd/c;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    const-string v3, "AdDownloadController toJson"

    .line 198
    .line 199
    invoke-interface {v2, v1, v3}, Lcom/byazt/pd/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_9
    return-object v0
.end method
