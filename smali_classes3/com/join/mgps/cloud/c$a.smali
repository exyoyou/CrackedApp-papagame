.class public final Lcom/join/mgps/cloud/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/cloud/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$Companion\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,177:1\n10#2:178\n10#2:179\n10#2:180\n10#2:181\n10#2:182\n10#2:183\n10#2:184\n*S KotlinDebug\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$Companion\n*L\n36#1:178\n40#1:179\n44#1:180\n48#1:181\n52#1:182\n56#1:183\n60#1:184\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$Companion\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,177:1\n10#2:178\n10#2:179\n10#2:180\n10#2:181\n10#2:182\n10#2:183\n10#2:184\n*S KotlinDebug\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$Companion\n*L\n36#1:178\n40#1:179\n44#1:180\n48#1:181\n52#1:182\n56#1:183\n60#1:184\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/cloud/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/join/mgps/cloud/bean/HMMessage;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_3

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_3
    const-string v3, ""

    .line 32
    .line 33
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_b

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sparse-switch v1, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :sswitch_0
    const-string v1, "uploadCloudArchive"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-class v1, Lcom/join/mgps/cloud/bean/HMMessage$UploadCloudArchive;

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage;

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :sswitch_1
    const-string v1, "connect"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-class v1, Lcom/join/mgps/cloud/bean/HMMessage$Connect;

    .line 87
    .line 88
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage;

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :sswitch_2
    const-string v1, "configTest"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-class v1, Lcom/join/mgps/cloud/bean/HMMessage$ConfigTest;

    .line 110
    .line 111
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage;

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :sswitch_3
    const-string v1, "start"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_7

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-class v1, Lcom/join/mgps/cloud/bean/HMMessage$Start;

    .line 132
    .line 133
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :sswitch_4
    const-string v1, "userInfo"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_8

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-class v1, Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;

    .line 154
    .line 155
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage;

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :sswitch_5
    const-string v1, "downloadCloudArchive"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_9

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-class v1, Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;

    .line 176
    .line 177
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage;

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :sswitch_6
    const-string v1, "config"

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_a

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_a
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-class v1, Lcom/join/mgps/cloud/bean/HMMessage$Config;

    .line 198
    .line 199
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .line 205
    :goto_2
    move-object v2, p1

    .line 206
    :cond_b
    :goto_3
    return-object v2

    .line 207
    :catchall_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    .line 210
    .line 211
    return-object v2

    .line 212
    nop

    .line 213
    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_6
        -0x21864a8b -> :sswitch_5
        -0xfe718e7 -> :sswitch_4
        0x68ac462 -> :sswitch_3
        0x318fcaf4 -> :sswitch_2
        0x38b478ea -> :sswitch_1
        0x4e918d6e -> :sswitch_0
    .end sparse-switch
.end method
