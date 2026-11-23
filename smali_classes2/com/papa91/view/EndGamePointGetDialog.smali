.class public Lcom/papa91/view/EndGamePointGetDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private bean:Lcom/papa91/arc/bean/EndGameAllowBean;

.field private context:Landroid/app/Activity;

.field private gameId:Ljava/lang/String;

.field private sdkType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/papa91/arc/bean/EndGameAllowBean;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/papa91/mix/R$style;->Dialog:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/papa91/view/EndGamePointGetDialog;->bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/papa91/view/EndGamePointGetDialog;->context:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/papa91/view/EndGamePointGetDialog;->gameId:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/papa91/view/EndGamePointGetDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/view/EndGamePointGetDialog;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/papa91/view/EndGamePointGetDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/view/EndGamePointGetDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa91/view/EndGamePointGetDialog;->context:Landroid/app/Activity;

    .line 5
    .line 6
    instance-of v0, p1, Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, v0}, Lcom/papa91/activity/EmuBaseActivity;->endGameAllow(ZI)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 2
    .line 3
    iget v0, p0, Lcom/papa91/view/EndGamePointGetDialog;->sdkType:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/papa91/view/EndGamePointGetDialog;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/papa91/arc/CContext$IVideoAdListener;->showEndAd(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa91/view/EndGamePointGetDialog;->context:Landroid/app/Activity;

    .line 11
    .line 12
    instance-of v0, p1, Lcom/papa91/activity/EmuBaseActivity;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/papa91/activity/EmuBaseActivity;

    .line 17
    .line 18
    const-string v0, "clickGameVSAdVideo"

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/papa91/mix/R$layout;->dialog_end_game_get_point:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/papa91/mix/R$id;->ivClose:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/ImageView;

    .line 16
    .line 17
    sget v0, Lcom/papa91/mix/R$id;->textEndless:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    sget v1, Lcom/papa91/mix/R$id;->tvPointCount:I

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 32
    .line 33
    sget v2, Lcom/papa91/mix/R$id;->llBtn:I

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    sget v3, Lcom/papa91/mix/R$id;->icMulti:I

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/widget/ImageView;

    .line 48
    .line 49
    sget v4, Lcom/papa91/mix/R$id;->icVideoAd:I

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroid/widget/ImageView;

    .line 56
    .line 57
    sget v4, Lcom/papa91/mix/R$id;->textReceive:I

    .line 58
    .line 59
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/widget/ImageView;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v5, p0, Lcom/papa91/view/EndGamePointGetDialog;->bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/papa91/arc/bean/EndGameAllowBean;->isAwardUnlimited()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/16 v6, 0x8

    .line 76
    .line 77
    if-eqz v5, :cond_0

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/papa91/view/EndGamePointGetDialog;->bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/papa91/arc/bean/EndGameAllowBean;->getAwardCards()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v3, ""

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    new-instance v0, Lcom/papa91/view/b;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lcom/papa91/view/b;-><init>(Lcom/papa91/view/EndGamePointGetDialog;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Lcom/papa91/view/c;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Lcom/papa91/view/c;-><init>(Lcom/papa91/view/EndGamePointGetDialog;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/papa91/view/EndGamePointGetDialog;->bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getAdVideoConfigList()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz p1, :cond_2

    .line 147
    .line 148
    iget-object p1, p0, Lcom/papa91/view/EndGamePointGetDialog;->bean:Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/papa91/arc/bean/EndGameAllowBean;->getAdVideoConfigList()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_2

    .line 163
    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lcom/papa91/arc/bean/EndGameAdBean;

    .line 169
    .line 170
    if-eqz v0, :cond_1

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/papa91/arc/bean/EndGameAdBean;->getSdkType()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput p1, p0, Lcom/papa91/view/EndGamePointGetDialog;->sdkType:I

    .line 177
    .line 178
    sget-object p1, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/papa91/arc/bean/EndGameAdBean;->getSdkType()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-virtual {v0}, Lcom/papa91/arc/bean/EndGameAdBean;->getAdId()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0}, Lcom/papa91/arc/bean/EndGameAdBean;->getSdkKey()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-interface {p1, v1, v2, v0}, Lcom/papa91/arc/CContext$IVideoAdListener;->loadEndAd(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_2
    return-void
.end method
