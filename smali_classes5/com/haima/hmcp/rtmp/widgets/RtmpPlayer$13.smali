.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->onFrameDelay(IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

.field final synthetic val$isLessMinimum:Z

.field final synthetic val$mCurrentSpeed:I


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->val$isLessMinimum:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->val$mCurrentSpeed:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMinResolutionLevel:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "0"

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    const-string v4, "1"

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_minimum:I

    .line 34
    .line 35
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_delay_less_minimum:I

    .line 47
    .line 48
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-boolean v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->val$isLessMinimum:Z

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v2, v4

    .line 58
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_1
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_minimum:I

    .line 68
    .line 69
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_delay_less_minimum:I

    .line 82
    .line 83
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-boolean v6, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->val$isLessMinimum:Z

    .line 88
    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v2, v4

    .line 93
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 99
    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    const-string v2, "flagAutoSwitchBitRate"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getResolutionList()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    iget-object v6, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 133
    .line 134
    iget-object v6, v6, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMinResolutionLevel:Ljava/lang/String;

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    invoke-virtual {v2, v4, v6, v7}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getResolution(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setResolutionInfo(Lcom/haima/hmcp/beans/ResolutionInfo;)V

    .line 142
    .line 143
    .line 144
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 145
    .line 146
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v2, "mCurrentSpeed"

    .line 150
    .line 151
    iget v4, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->val$mCurrentSpeed:I

    .line 152
    .line 153
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    const-string v2, "mMinResolutionLevel"

    .line 157
    .line 158
    iget-object v4, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 159
    .line 160
    iget-object v4, v4, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMinResolutionLevel:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 166
    .line 167
    invoke-static {v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    if-eqz v2, :cond_3

    .line 172
    .line 173
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 174
    .line 175
    invoke-static {v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const/16 v6, 0x19

    .line 184
    .line 185
    invoke-virtual {v4, v6, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v2, v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->UiMessageSend(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catch_0
    move-exception v1

    .line 194
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 198
    .line 199
    invoke-static {v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getResolutionInfo()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v3, v2, v5}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;I)Z

    .line 208
    .line 209
    .line 210
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 211
    .line 212
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_crtp:I

    .line 213
    .line 214
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v1, v2, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-void
.end method
