.class Lcom/join/mgps/fragment/b1$c;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/EndGameBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/fragment/b1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/b1;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/fragment/b1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/b1$c;->e:Lcom/join/mgps/fragment/b1;

    .line 2
    .line 3
    const p1, 0x7f0d0404

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic r(Lcom/join/mgps/fragment/b1$c;Lcom/join/mgps/dto/EndGameBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/b1$c;->t(Lcom/join/mgps/dto/EndGameBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic t(Lcom/join/mgps/dto/EndGameBean;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/b1$c;->e:Lcom/join/mgps/fragment/b1;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/join/mgps/fragment/b1$c;->e:Lcom/join/mgps/fragment/b1;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/fragment/b1$c;->e:Lcom/join/mgps/fragment/b1;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Lcom/join/mgps/activity/EndGameLaunchActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/EndGameLaunchActivity_$f;->a(Lcom/join/mgps/dto/EndGameBean;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/EndGameLaunchActivity_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/16 v0, 0x10

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/EndGameLaunchActivity_$f;->d(I)Lcom/join/mgps/activity/EndGameLaunchActivity_$f;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 60
    .line 61
    .line 62
    :try_start_0
    new-instance p2, Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    invoke-direct {p2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v0, "1"

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p2, v0}, Lcom/papa/sim/statistic/Ext;->setEndId(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/fragment/b1$c;->e:Lcom/join/mgps/fragment/b1;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameStartVS:Lcom/papa/sim/statistic/Event;

    .line 102
    .line 103
    invoke-virtual {p1, v1, p2, v0}, Lcom/papa/sim/statistic/t;->i0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/EndGameBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/b1$c;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/EndGameBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/EndGameBean;)V
    .locals 9
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getChallengeSucRateStr()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0a18aa

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getChallenge()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-gtz v1, :cond_0

    .line 29
    .line 30
    const-string v1, "0"

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getChallenge()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ""

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    const v2, 0x7f0a1897

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const v1, 0x7f0a18b8

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getChallengeSucRate()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const v1, 0x7f0a1889

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getGameName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "convert: "

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getGameName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getVideo()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    const v0, 0x7f0a015d

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 117
    .line 118
    const v2, 0x7f08018d

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getCover()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getVideo()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    new-instance v0, Lcom/join/android/app/component/video/c$l;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getCover()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getGameId()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    const-string v8, ""

    .line 166
    .line 167
    move-object v2, v0

    .line 168
    invoke-direct/range {v2 .. v8}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/join/mgps/fragment/b1$c;->e:Lcom/join/mgps/fragment/b1;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/join/mgps/fragment/b1;->N(Lcom/join/mgps/fragment/b1;)Lcom/join/android/app/component/video/c;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    const/4 v3, 0x0

    .line 182
    new-array v3, v3, [Z

    .line 183
    .line 184
    invoke-virtual {v1, v2, v0, v3}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V

    .line 185
    .line 186
    .line 187
    const v0, 0x7f0a1b63

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    new-instance v1, Lcom/join/mgps/fragment/b1$c$a;

    .line 195
    .line 196
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/fragment/b1$c$a;-><init>(Lcom/join/mgps/fragment/b1$c;Lcom/join/mgps/base/b;Lcom/join/mgps/dto/EndGameBean;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    :cond_1
    const v0, 0x7f0a0261

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    new-instance v0, Lcom/join/mgps/fragment/c1;

    .line 210
    .line 211
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/fragment/c1;-><init>(Lcom/join/mgps/fragment/b1$c;Lcom/join/mgps/dto/EndGameBean;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method
