.class Lcom/join/mgps/Util/UtilsMy$e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/papa91/common/RealNameCheckInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

.field final synthetic e:I

.field final synthetic f:Lcom/wufan/user/service/protobuf/UserInfo;

.field final synthetic g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$gameId",
            "val$realNameCall",
            "val$from",
            "val$accountBean",
            "val$luckHistoryrequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$e0;->b:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$e0;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/Util/UtilsMy$e0;->e:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/UtilsMy$e0;->f:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/Util/UtilsMy$e0;->g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/Util/UtilsMy$e0;ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;Lcom/join/mgps/activity/arena/GameRoomActivity$x;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/join/mgps/Util/UtilsMy$e0;->d(ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;Lcom/join/mgps/activity/arena/GameRoomActivity$x;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/Util/UtilsMy$e0;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/common/RealNameCheckInfo;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/join/mgps/Util/UtilsMy$e0;->e(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/common/RealNameCheckInfo;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method

.method private synthetic d(ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;Lcom/join/mgps/activity/arena/GameRoomActivity$x;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    const/4 p5, 0x6

    .line 5
    if-ne p1, p5, :cond_1

    .line 6
    .line 7
    invoke-virtual {p7}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p5

    .line 11
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    const/4 p6, 0x4

    .line 16
    if-ne p5, p6, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/join/mgps/Util/UtilsMy$e0;->c(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p7}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 p5, 0x1

    .line 31
    if-ne p2, p5, :cond_1

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/app/Dialog;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/papa91/view/RealNameLoginDialog;->show()V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-interface {p4, p1, p2, p7}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method private synthetic e(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/common/RealNameCheckInfo;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 11

    .line 1
    move-object v6, p1

    .line 2
    move-object v7, p2

    .line 3
    move-object v5, p3

    .line 4
    move v3, p4

    .line 5
    move-object/from16 v0, p10

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    move/from16 v2, p9

    .line 9
    .line 10
    if-ne v2, v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v4, Lcom/papa/sim/statistic/Event;->closedRealNameWindow:Lcom/papa/sim/statistic/Event;

    .line 17
    .line 18
    new-instance v8, Lcom/papa/sim/statistic/Ext;

    .line 19
    .line 20
    invoke-direct {v8}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v8, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v2, v4, v8}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual/range {p10 .. p10}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v4, 0x2

    .line 39
    const/4 v8, 0x0

    .line 40
    if-ne v2, v4, :cond_5

    .line 41
    .line 42
    invoke-virtual/range {p10 .. p10}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    if-eqz v9, :cond_3

    .line 47
    .line 48
    invoke-virtual {v9}, Lcom/papa91/arc/bean/PopwindowBean;->isPopup()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v9}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ne v0, v1, :cond_2

    .line 60
    .line 61
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/papa/sim/statistic/Event;->realNameDisplayWindow:Lcom/papa/sim/statistic/Event;

    .line 66
    .line 67
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 68
    .line 69
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p5 .. p5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ""

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual/range {p6 .. p6}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->getType()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    invoke-virtual/range {p6 .. p6}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->getAction()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    move-object v0, p1

    .line 109
    move-object v1, v9

    .line 110
    move-object v2, p3

    .line 111
    move v3, p4

    .line 112
    move v5, v8

    .line 113
    move v6, v10

    .line 114
    move-object v7, p2

    .line 115
    invoke-static/range {v0 .. v7}, Lcom/join/mgps/Util/UtilsMy;->r(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;IILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_2
    invoke-virtual/range {p8 .. p8}, Landroid/app/Dialog;->dismiss()V

    .line 121
    .line 122
    .line 123
    new-instance v7, Lcom/join/mgps/Util/h3;

    .line 124
    .line 125
    move-object v0, v7

    .line 126
    move-object v1, p0

    .line 127
    move v2, p4

    .line 128
    move-object v3, p1

    .line 129
    move-object/from16 v4, p8

    .line 130
    .line 131
    move-object v5, p3

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/Util/h3;-><init>(Lcom/join/mgps/Util/UtilsMy$e0;ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v9, v7}, Lcom/join/mgps/Util/UtilsMy;->s(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    :goto_0
    invoke-virtual/range {p8 .. p8}, Landroid/app/Dialog;->dismiss()V

    .line 140
    .line 141
    .line 142
    if-eqz v5, :cond_4

    .line 143
    .line 144
    invoke-interface {p3, p4, v8, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    return-void

    .line 148
    :cond_5
    invoke-virtual/range {p10 .. p10}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-ne v2, v1, :cond_7

    .line 157
    .line 158
    if-eqz v5, :cond_6

    .line 159
    .line 160
    invoke-interface {p3, p4, v8, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V

    .line 161
    .line 162
    .line 163
    :cond_6
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickKnowGoRealPage:Lcom/papa/sim/statistic/Event;

    .line 168
    .line 169
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 170
    .line 171
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual/range {p10 .. p10}, Lcom/papa91/arc/bean/ButtonBean;->getJumpLink()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_7
    invoke-virtual/range {p10 .. p10}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_8

    .line 202
    .line 203
    invoke-virtual/range {p7 .. p7}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    invoke-virtual/range {p7 .. p7}, Lcom/papa91/arc/bean/PopwindowBean;->getStatus()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_8

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/UtilsMy$e0;->c(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    :cond_8
    if-eqz v5, :cond_9

    .line 219
    .line 220
    invoke-interface {p3, p4, v8, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V

    .line 221
    .line 222
    .line 223
    :cond_9
    :goto_1
    invoke-virtual/range {p8 .. p8}, Landroid/app/Dialog;->isShowing()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_a

    .line 228
    .line 229
    invoke-virtual/range {p8 .. p8}, Landroid/app/Dialog;->dismiss()V

    .line 230
    .line 231
    .line 232
    :cond_a
    return-void
.end method


# virtual methods
.method c(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/papa91/common/RealNameCheckInfo;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->q(Z)Z

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$e0;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->e:I

    .line 10
    .line 11
    invoke-interface {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onFail(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/papa91/common/RealNameCheckInfo;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/papa91/common/RealNameCheckInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->q(Z)Z

    .line 3
    .line 4
    .line 5
    if-eqz p2, :cond_6

    .line 6
    .line 7
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/16 v0, 0xc8

    .line 24
    .line 25
    if-ne p1, v0, :cond_6

    .line 26
    .line 27
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/papa91/common/RealNameCheckInfo;

    .line 38
    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v0, "RealNameCheckInfo "

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Ln6/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isPopup()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_0

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getStatus()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_0

    .line 75
    .line 76
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->b:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    sget-object v0, Lcom/papa/sim/statistic/Event;->antiAddtionWindowUp:Lcom/papa/sim/statistic/Event;

    .line 83
    .line 84
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 85
    .line 86
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->c:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    const/4 v0, 0x1

    .line 103
    if-ne p2, v0, :cond_1

    .line 104
    .line 105
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->b:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    sget-object v0, Lcom/papa/sim/statistic/Event;->realNameDisplayWindow:Lcom/papa/sim/statistic/Event;

    .line 112
    .line 113
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 114
    .line 115
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->c:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$e0;->b:Landroid/content/Context;

    .line 128
    .line 129
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    .line 130
    .line 131
    iget v3, p0, Lcom/join/mgps/Util/UtilsMy$e0;->e:I

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$e0;->f:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ""

    .line 148
    .line 149
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->getType()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->getAction()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    iget-object v7, p0, Lcom/join/mgps/Util/UtilsMy$e0;->c:Ljava/lang/String;

    .line 169
    .line 170
    move-object v1, p1

    .line 171
    invoke-static/range {v0 .. v7}, Lcom/join/mgps/Util/UtilsMy;->r(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;IILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_2

    .line 181
    .line 182
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->b:Landroid/content/Context;

    .line 183
    .line 184
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    sget-object v1, Lcom/papa/sim/statistic/Event;->nonageAstrictHint:Lcom/papa/sim/statistic/Event;

    .line 189
    .line 190
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 191
    .line 192
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v3, p0, Lcom/join/mgps/Util/UtilsMy$e0;->c:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {p2, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 202
    .line 203
    .line 204
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isPopup()Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-eqz p2, :cond_3

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p2}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-ne p2, v0, :cond_3

    .line 223
    .line 224
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->b:Landroid/content/Context;

    .line 225
    .line 226
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    sget-object v0, Lcom/papa/sim/statistic/Event;->realNameUpWindows:Lcom/papa/sim/statistic/Event;

    .line 231
    .line 232
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 233
    .line 234
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 235
    .line 236
    .line 237
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->c:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 244
    .line 245
    .line 246
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->b:Landroid/content/Context;

    .line 247
    .line 248
    iget-object v3, p0, Lcom/join/mgps/Util/UtilsMy$e0;->c:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v4, p0, Lcom/join/mgps/Util/UtilsMy$e0;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    .line 251
    .line 252
    iget v5, p0, Lcom/join/mgps/Util/UtilsMy$e0;->e:I

    .line 253
    .line 254
    iget-object v6, p0, Lcom/join/mgps/Util/UtilsMy$e0;->f:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 255
    .line 256
    iget-object v7, p0, Lcom/join/mgps/Util/UtilsMy$e0;->g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 257
    .line 258
    new-instance v9, Lcom/join/mgps/Util/g3;

    .line 259
    .line 260
    move-object v0, v9

    .line 261
    move-object v1, p0

    .line 262
    move-object v2, p2

    .line 263
    move-object v8, p1

    .line 264
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/Util/g3;-><init>(Lcom/join/mgps/Util/UtilsMy$e0;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/common/RealNameCheckInfo;)V

    .line 265
    .line 266
    .line 267
    invoke-static {p2, p1, v9}, Lcom/join/mgps/Util/UtilsMy;->s(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    .line 274
    .line 275
    goto :goto_0

    .line 276
    :cond_4
    if-eqz p1, :cond_5

    .line 277
    .line 278
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    .line 279
    .line 280
    if-eqz p2, :cond_5

    .line 281
    .line 282
    iget v0, p0, Lcom/join/mgps/Util/UtilsMy$e0;->e:I

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    invoke-interface {p2, v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(II)V

    .line 293
    .line 294
    .line 295
    goto :goto_0

    .line 296
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$e0;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    .line 297
    .line 298
    if-eqz p1, :cond_6

    .line 299
    .line 300
    iget p2, p0, Lcom/join/mgps/Util/UtilsMy$e0;->e:I

    .line 301
    .line 302
    invoke-interface {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onFail(I)V

    .line 303
    .line 304
    .line 305
    :cond_6
    :goto_0
    return-void
.end method
