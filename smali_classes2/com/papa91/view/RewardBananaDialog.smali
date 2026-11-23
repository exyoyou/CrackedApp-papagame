.class public Lcom/papa91/view/RewardBananaDialog;
.super Lcom/papa91/view/BaseDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;
    }
.end annotation


# instance fields
.field private amount:I

.field close:Landroid/view/View;

.field count:Landroid/widget/TextView;

.field countGroup:Landroid/view/View;

.field countTime:I

.field private device_id:Ljava/lang/String;

.field doubleReward:Landroid/view/View;

.field doubleRewardText:Landroid/widget/TextView;

.field private gameId:Ljava/lang/String;

.field getTip:Landroid/view/View;

.field gift:Landroid/view/View;

.field private left_count:I

.field listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

.field mHandler:Landroid/os/Handler;

.field receive:Landroid/view/View;

.field remain:Landroid/widget/TextView;

.field textView2:Landroid/view/View;

.field textView31:Landroid/view/View;

.field private times:I

.field private token:Ljava/lang/String;

.field private total_reward_amount:I

.field private type:I

.field private uid:Ljava/lang/String;

.field private uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 3
    new-instance p1, Lcom/papa91/view/RewardBananaDialog$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/RewardBananaDialog$1;-><init>(Lcom/papa91/view/RewardBananaDialog;)V

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x5

    .line 5
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 6
    new-instance p1, Lcom/papa91/view/RewardBananaDialog$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/RewardBananaDialog$1;-><init>(Lcom/papa91/view/RewardBananaDialog;)V

    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/RewardBananaDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/papa91/view/RewardBananaDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/RewardBananaDialog;->left_count:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/papa91/view/RewardBananaDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->left_count:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/papa91/view/RewardBananaDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$302(Lcom/papa91/view/RewardBananaDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/papa91/view/RewardBananaDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/RewardBananaDialog;->total_reward_amount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/papa91/view/RewardBananaDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->total_reward_amount:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/papa91/view/RewardBananaDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/papa91/view/RewardBananaDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method error(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/view/RewardBananaDialog$5;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa91/view/RewardBananaDialog$5;-><init>(Lcom/papa91/view/RewardBananaDialog;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method getRewardInfo()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/papa91/view/RewardBananaDialog;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/view/RewardBananaDialog;->token:Ljava/lang/String;

    iget-object v3, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    iget-object v4, p0, Lcom/papa91/view/RewardBananaDialog;->device_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/papa91/view/RewardBananaDialog;->getRewardInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getRewardInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token"

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "game_id"

    .line 5
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device_id"

    .line 6
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "unique_id"

    .line 7
    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v0}, Lcom/papa91/view/RewardBananaDialog;->getRewardInfoPost(Ljava/util/Map;)V

    return-void
.end method

.method getRewardInfoPost(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/view/RewardBananaDialog$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa91/view/RewardBananaDialog$3;-><init>(Lcom/papa91/view/RewardBananaDialog;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public giveUpReceive(I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/papa91/mix/R$id;->close:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    .line 11
    .line 12
    instance-of v0, v0, Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 17
    .line 18
    if-gtz v0, :cond_9

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const-string v1, ""

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v3, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "\u5df2\u653e\u5f03\u9886\u53d6"

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "\u9999\u8549"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 81
    .line 82
    .line 83
    iget p1, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/papa91/view/RewardBananaDialog;->giveUpReceive(I)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_2
    sget v1, Lcom/papa91/mix/R$id;->gift:I

    .line 96
    .line 97
    if-ne v0, v1, :cond_3

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const-string v4, "4"

    .line 104
    .line 105
    const-string v5, ""

    .line 106
    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    sget-object v0, Lcom/papa91/utils/HttpUtils;->REWARD_CONFIG_URL:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, "/user/activity/banana_peel/exchange_center"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    const-string v7, ""

    .line 127
    .line 128
    const-string v8, ""

    .line 129
    .line 130
    invoke-static/range {v3 .. v8}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    sget v1, Lcom/papa91/mix/R$id;->receive:I

    .line 135
    .line 136
    const-string v3, "\u9999\u8549\u6b63\u5728\u91c7\u6458\u4e2d\uff0c\u8bf7\u7a0d\u540e~"

    .line 137
    .line 138
    if-ne v0, v1, :cond_6

    .line 139
    .line 140
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

    .line 161
    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    iget-object v1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 165
    .line 166
    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 167
    .line 168
    iget v3, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    .line 169
    .line 170
    iget v4, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    .line 171
    .line 172
    iget-object v5, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    .line 173
    .line 174
    invoke-interface/range {v0 .. v5}, Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;->onReceiveReward(Ljava/lang/String;IIILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_6
    sget v1, Lcom/papa91/mix/R$id;->doubleReward:I

    .line 182
    .line 183
    if-ne v0, v1, :cond_9

    .line 184
    .line 185
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_7

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

    .line 206
    .line 207
    if-eqz v0, :cond_8

    .line 208
    .line 209
    iget-object v1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 210
    .line 211
    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 212
    .line 213
    iget v3, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    .line 214
    .line 215
    iget v4, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    .line 216
    .line 217
    iget-object v5, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    .line 218
    .line 219
    invoke-interface/range {v0 .. v5}, Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;->onDoubleReward(Ljava/lang/String;IIILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 223
    .line 224
    .line 225
    :cond_9
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/view/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/papa91/mix/R$layout;->dialog_receive_banana:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/papa91/mix/R$id;->close:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    .line 20
    .line 21
    sget p1, Lcom/papa91/mix/R$id;->gift:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->gift:Landroid/view/View;

    .line 28
    .line 29
    sget p1, Lcom/papa91/mix/R$id;->receive:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->receive:Landroid/view/View;

    .line 36
    .line 37
    sget p1, Lcom/papa91/mix/R$id;->doubleReward:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->doubleReward:Landroid/view/View;

    .line 44
    .line 45
    sget p1, Lcom/papa91/mix/R$id;->count:I

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    .line 54
    .line 55
    sget v0, Lcom/papa91/mix/R$id;->textView31:I

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView31:Landroid/view/View;

    .line 62
    .line 63
    sget v0, Lcom/papa91/mix/R$id;->textView2:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView2:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    .line 78
    .line 79
    sget p1, Lcom/papa91/mix/R$id;->remain:I

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->remain:Landroid/widget/TextView;

    .line 88
    .line 89
    sget p1, Lcom/papa91/mix/R$id;->doubleRewardText:I

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->doubleRewardText:Landroid/widget/TextView;

    .line 98
    .line 99
    sget p1, Lcom/papa91/mix/R$id;->countGroup:I

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->countGroup:Landroid/view/View;

    .line 106
    .line 107
    sget p1, Lcom/papa91/mix/R$id;->getTip:I

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->getTip:Landroid/view/View;

    .line 114
    .line 115
    sget p1, Lcom/papa91/mix/R$id;->imageView2:I

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/widget/ImageView;

    .line 122
    .line 123
    if-eqz p1, :cond_0

    .line 124
    .line 125
    sget v0, Lcom/papa91/mix/R$drawable;->gif_cd_animation:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 137
    .line 138
    .line 139
    :cond_0
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->gift:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->receive:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->doubleReward:Landroid/view/View;

    .line 155
    .line 156
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Lcom/papa91/view/RewardBananaDialog$2;

    .line 160
    .line 161
    invoke-direct {p1, p0}, Lcom/papa91/view/RewardBananaDialog$2;-><init>(Lcom/papa91/view/RewardBananaDialog;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method onRewardInfo(Ljava/lang/String;IIIII)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    iget-object v9, v8, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    new-instance v10, Lcom/papa91/view/RewardBananaDialog$4;

    .line 5
    .line 6
    move-object v0, v10

    .line 7
    move-object v1, p0

    .line 8
    move/from16 v2, p5

    .line 9
    .line 10
    move v3, p4

    .line 11
    move v4, p2

    .line 12
    move v5, p3

    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    move-object v7, p1

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/papa91/view/RewardBananaDialog$4;-><init>(Lcom/papa91/view/RewardBananaDialog;IIIIILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method onRewardInfoChanged(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.reward.changed"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "uniqueId"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string p1, "newUniqueId"

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string p1, "gameId"

    .line 39
    .line 40
    iget-object p2, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string p1, "amount"

    .line 46
    .line 47
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string p1, "times"

    .line 51
    .line 52
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    const-string p1, "type"

    .line 56
    .line 57
    iget p2, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const-string p1, "total_reward_amount"

    .line 63
    .line 64
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    const-string p1, "uid"

    .line 68
    .line 69
    iget-object p2, p0, Lcom/papa91/view/RewardBananaDialog;->uid:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    const-string p1, "packageName"

    .line 75
    .line 76
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getHostPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    const/16 p1, 0x20

    .line 84
    .line 85
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->countGroup:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView2:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView31:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->remain:Landroid/widget/TextView;

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->getTip:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->doubleRewardText:Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const-string v1, "\u9999\u8549 XN\u500d"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->countGroup:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView2:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->textView31:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->getTip:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->remain:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->doubleRewardText:Landroid/widget/TextView;

    .line 84
    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v2, "\u9999\u8549 X"

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, "\u500d"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->count:Landroid/widget/TextView;

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, ""

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->remain:Landroid/widget/TextView;

    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    iget v1, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    .line 145
    .line 146
    const/4 v2, 0x1

    .line 147
    if-ne v1, v2, :cond_3

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v2, "\u4eca\u65e5\u5269\u4f59"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->left_count:I

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v2, "\u6b21\u5956\u52b1"

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v2, "\u7d2f\u8ba1\u83b7\u5f97\u9999\u8549"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->total_reward_amount:I

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v2, "\u4e2a"

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    :cond_4
    :goto_1
    return-void
.end method

.method public setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->uid:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/view/RewardBananaDialog;->token:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/view/RewardBananaDialog;->device_id:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public setData(ILjava/lang/String;IIILjava/lang/String;I)V
    .locals 0

    .line 10
    iput-object p2, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 11
    iput p1, p0, Lcom/papa91/view/RewardBananaDialog;->left_count:I

    .line 12
    iput p7, p0, Lcom/papa91/view/RewardBananaDialog;->total_reward_amount:I

    .line 13
    iput p3, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 14
    iput p4, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    .line 15
    iput p5, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    .line 16
    iput-object p6, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    const/4 p1, 0x1

    if-ne p5, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 17
    iput-object p2, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->refresh()V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->getRewardInfo()V

    :cond_2
    return-void
.end method

.method public setData(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/papa91/view/RewardBananaDialog;->amount:I

    .line 3
    iput p3, p0, Lcom/papa91/view/RewardBananaDialog;->times:I

    .line 4
    iput p4, p0, Lcom/papa91/view/RewardBananaDialog;->type:I

    .line 5
    iput-object p5, p0, Lcom/papa91/view/RewardBananaDialog;->gameId:Ljava/lang/String;

    const/4 p5, 0x1

    if-ne p4, p5, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->uniqueId:Ljava/lang/String;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->refresh()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->getRewardInfo()V

    :cond_2
    return-void
.end method

.method public setListener(Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog;->listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/papa91/view/BaseDialog;->show()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v1, 0x11

    .line 45
    .line 46
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    .line 51
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->close:Landroid/view/View;

    .line 73
    .line 74
    instance-of v1, v0, Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    const/4 v1, 0x5

    .line 81
    iput v1, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget v2, p0, Lcom/papa91/view/RewardBananaDialog;->countTime:I

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, ""

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    sget v1, Lcom/papa91/mix/R$drawable;->shape_close_bg_gray:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/papa91/view/RewardBananaDialog;->startCloseTimeCount()V

    .line 111
    .line 112
    .line 113
    :cond_1
    return-void
.end method

.method startCloseTimeCount()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x3e8

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
