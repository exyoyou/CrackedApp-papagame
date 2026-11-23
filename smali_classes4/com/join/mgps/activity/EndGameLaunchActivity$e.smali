.class Lcom/join/mgps/activity/EndGameLaunchActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/EndGameLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/EndGameLaunchActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/EndGameLaunchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$600(Lcom/join/mgps/activity/EndGameLaunchActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$100(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x50

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$102(Lcom/join/mgps/activity/EndGameLaunchActivity;I)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$100(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->setLoadingProgress(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$100(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/16 v1, 0x64

    .line 40
    .line 41
    if-ge v0, v1, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$600(Lcom/join/mgps/activity/EndGameLaunchActivity;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 52
    .line 53
    const/4 v1, 0x5

    .line 54
    invoke-static {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$112(Lcom/join/mgps/activity/EndGameLaunchActivity;I)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$108(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$700(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 72
    .line 73
    new-instance v1, Landroid/os/Handler;

    .line 74
    .line 75
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$802(Lcom/join/mgps/activity/EndGameLaunchActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$900(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-wide/16 v1, 0x64

    .line 88
    .line 89
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_3
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$000(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/app/Activity;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->endGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-class v2, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 120
    .line 121
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->getEndgame_challenge_level()Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->getEndgame_challenge_level()Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_1

    .line 144
    :cond_4
    const-string v0, ""

    .line 145
    .line 146
    :goto_1
    move-object v10, v0

    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$000(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/app/Activity;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$000(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/app/Activity;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 168
    .line 169
    iget-object v3, v0, Lcom/join/mgps/activity/EndGameLaunchActivity;->gameId:Ljava/lang/String;

    .line 170
    .line 171
    const/16 v4, 0x10

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v5, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 179
    .line 180
    invoke-static {v5}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$1000(Lcom/join/mgps/activity/EndGameLaunchActivity;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v5, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 193
    .line 194
    invoke-static {v5}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$1100(Lcom/join/mgps/activity/EndGameLaunchActivity;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 206
    .line 207
    iget-object v0, v0, Lcom/join/mgps/activity/EndGameLaunchActivity;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getIndex()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/join/mgps/activity/EndGameLaunchActivity;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getDuration()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    div-int/lit16 v7, v0, 0x3e8

    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/join/mgps/activity/EndGameLaunchActivity;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getSubTitle()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 232
    .line 233
    iget-object v0, v0, Lcom/join/mgps/activity/EndGameLaunchActivity;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-static/range {v1 .. v10}, Lcom/join/mgps/Util/UtilsMy;->i4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_5

    .line 244
    .line 245
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 248
    .line 249
    .line 250
    :cond_5
    :goto_2
    return-void
.end method
