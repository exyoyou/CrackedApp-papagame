.class Lcom/papa91/activity/EmuBaseActivity$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/utils/HttpFinishInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->initSign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRequestError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/papa91/activity/EmuBaseActivity;->messData:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/common/MyJson;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "messages"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "data"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lorg/json/JSONObject;

    .line 36
    .line 37
    const-string v0, "pic_remote"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 44
    .line 45
    const-string v2, "link_type"

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1302(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 55
    .line 56
    const-string v2, "jump_type"

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, v1, Lcom/papa91/activity/EmuBaseActivity;->jump_type:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 65
    .line 66
    const-string v2, "link_type_val"

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1402(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 76
    .line 77
    const-string v2, "crc_link_type_val"

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1502(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 87
    .line 88
    const-string v2, "tpl_type"

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1602(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    const-string v1, "ad_switch"

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const-string v2, "quit_switch"

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    sput-boolean v1, Lcom/papa91/activity/EmuBaseActivity;->hasAd:Z

    .line 113
    .line 114
    if-eqz p1, :cond_0

    .line 115
    .line 116
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$19;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 117
    .line 118
    iput-boolean v1, p1, Lcom/papa91/activity/EmuBaseActivity;->onAdShwoIsCloseMine:Z

    .line 119
    .line 120
    :cond_0
    new-instance p1, Lcom/papa91/utils/DownLoadFile;

    .line 121
    .line 122
    invoke-direct {p1}, Lcom/papa91/utils/DownLoadFile;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, "/papa91/images/"

    .line 142
    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p1, v1, v0}, Lcom/papa91/utils/DownLoadFile;->downLoad(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->ExitAdImageFilePath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_1
    :goto_0
    return-void
.end method
