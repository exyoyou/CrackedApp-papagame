.class Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/b0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onMore(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

.field final synthetic val$gameId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->val$gameId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAddShortCut(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onDeleteArchieve(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onDeleteGame(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->val$gameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->val$gameId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onMoreDeleteGame(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onGameDetail(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->val$gameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->val$gameId:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "cld_"

    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/papa/sim/statistic/EventP$FirstModel;->meTab:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v3, Lcom/papa/sim/statistic/EventP$SecondModel;->myCloudGame:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->val$gameId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 69
    .line 70
    invoke-static {v3}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->access$100(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->val$gameId:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v3, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-class v2, Lcom/join/mgps/dto/ModInfoBean;

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/join/mgps/dto/ModInfoBean;

    .line 109
    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    const/4 v1, 0x0

    .line 126
    :goto_0
    if-nez v1, :cond_2

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    move-object p1, v1

    .line 137
    :cond_3
    :goto_1
    const/16 v0, 0x7f

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getOut_game()Lcom/join/mgps/dto/TipBean;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    const/4 v0, 0x1

    .line 159
    goto :goto_2

    .line 160
    :cond_4
    const/4 v0, 0x0

    .line 161
    :goto_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_5

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_7

    .line 186
    .line 187
    :cond_5
    if-eqz v0, :cond_6

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 195
    .line 196
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 201
    .line 202
    .line 203
    :cond_7
    :goto_3
    return-void
.end method

.method public onStandMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/s;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/s;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->root:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/customview/s;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
