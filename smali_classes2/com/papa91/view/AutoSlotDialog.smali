.class public Lcom/papa91/view/AutoSlotDialog;
.super Lcom/papa91/view/BaseDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;
    }
.end annotation


# instance fields
.field b1:Landroid/view/View;

.field b2:Landroid/view/View;

.field b3:Landroid/view/View;

.field buyVip:Landroid/widget/TextView;

.field buyVip1:Landroid/view/View;

.field close:Landroid/view/View;

.field flag:Landroid/view/View;

.field img1:Lcom/facebook/drawee/view/SimpleDraweeView;

.field img2:Lcom/facebook/drawee/view/SimpleDraweeView;

.field img3:Lcom/facebook/drawee/view/SimpleDraweeView;

.field load1:Landroid/view/View;

.field load2:Landroid/view/View;

.field load3:Landroid/view/View;

.field slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field time1:Landroid/widget/TextView;

.field time2:Landroid/widget/TextView;

.field time3:Landroid/widget/TextView;

.field vipLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/papa91/mix/R$style;->Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget p2, Lcom/papa91/mix/R$style;->Dialog:I

    invoke-direct {p0, p1, p2}, Lcom/papa91/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method evictImageCache(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/h;->h(Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/h;->f(Landroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/h;->e(Landroid/net/Uri;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getTimeFormat(J)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    const-wide/16 p1, 0x3e8

    .line 7
    .line 8
    div-long/2addr v0, p1

    .line 9
    const-wide/16 p1, 0x3c

    .line 10
    .line 11
    cmp-long v2, v0, p1

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, "\u79d2\u524d"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-wide/16 v2, 0xe10

    .line 34
    .line 35
    cmp-long v4, v0, v2

    .line 36
    .line 37
    if-gez v4, :cond_1

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    div-long/2addr v0, p1

    .line 45
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, "\u5206\u949f\u524d"

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-wide/32 v2, 0x15180

    .line 59
    .line 60
    .line 61
    cmp-long v4, v0, v2

    .line 62
    .line 63
    if-gez v4, :cond_2

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    div-long/2addr v0, p1

    .line 71
    div-long/2addr v0, p1

    .line 72
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "\u5c0f\u65f6\u524d"

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const-wide/32 v2, 0x278d00

    .line 86
    .line 87
    .line 88
    const-wide/16 v4, 0x18

    .line 89
    .line 90
    cmp-long v6, v0, v2

    .line 91
    .line 92
    if-gez v6, :cond_3

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    div-long/2addr v0, p1

    .line 100
    div-long/2addr v0, p1

    .line 101
    div-long/2addr v0, v4

    .line 102
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, "\u5929\u524d"

    .line 106
    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    div-long/2addr v0, p1

    .line 121
    div-long/2addr v0, p1

    .line 122
    div-long/2addr v0, v4

    .line 123
    const-wide/16 p1, 0x1e

    .line 124
    .line 125
    div-long/2addr v0, p1

    .line 126
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p1, "\u4e2a\u6708\u524d"

    .line 130
    .line 131
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :goto_0
    return-object p1
.end method

.method goBuyVip(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v1, "4"

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-string v3, "https://anv3cjapi.5fun.com/member/vip_view/fc_archive"

    .line 6
    .line 7
    const-string v4, ""

    .line 8
    .line 9
    const-string v5, ""

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v0, "vipAutosave"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuStat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/papa91/mix/R$id;->buyVip1:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/papa91/view/AutoSlotDialog;->goBuyVip(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget p1, Lcom/papa91/mix/R$id;->close:I

    .line 18
    .line 19
    if-ne v0, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/papa91/view/AutoSlotDialog;->dismiss()V

    .line 22
    .line 23
    .line 24
    :cond_1
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
    sget p1, Lcom/papa91/mix/R$layout;->dialog_auto_saved_slot:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/papa91/view/AutoSlotDialog$1;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/papa91/view/AutoSlotDialog$1;-><init>(Lcom/papa91/view/AutoSlotDialog;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 19
    .line 20
    .line 21
    sget p1, Lcom/papa91/mix/R$id;->close:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->close:Landroid/view/View;

    .line 28
    .line 29
    sget p1, Lcom/papa91/mix/R$id;->buyVip:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip:Landroid/widget/TextView;

    .line 38
    .line 39
    sget p1, Lcom/papa91/mix/R$id;->buyVip1:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip1:Landroid/view/View;

    .line 46
    .line 47
    sget p1, Lcom/papa91/mix/R$id;->flag:I

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    .line 54
    .line 55
    sget p1, Lcom/papa91/mix/R$id;->b1:I

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->b1:Landroid/view/View;

    .line 62
    .line 63
    sget p1, Lcom/papa91/mix/R$id;->b2:I

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->b2:Landroid/view/View;

    .line 70
    .line 71
    sget p1, Lcom/papa91/mix/R$id;->b3:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->b3:Landroid/view/View;

    .line 78
    .line 79
    sget p1, Lcom/papa91/mix/R$id;->load1:I

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->load1:Landroid/view/View;

    .line 86
    .line 87
    sget p1, Lcom/papa91/mix/R$id;->load2:I

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->load2:Landroid/view/View;

    .line 94
    .line 95
    sget p1, Lcom/papa91/mix/R$id;->load3:I

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->load3:Landroid/view/View;

    .line 102
    .line 103
    sget p1, Lcom/papa91/mix/R$id;->time1:I

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->time1:Landroid/widget/TextView;

    .line 112
    .line 113
    sget p1, Lcom/papa91/mix/R$id;->time2:I

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/widget/TextView;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->time2:Landroid/widget/TextView;

    .line 122
    .line 123
    sget p1, Lcom/papa91/mix/R$id;->time3:I

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->time3:Landroid/widget/TextView;

    .line 132
    .line 133
    sget p1, Lcom/papa91/mix/R$id;->img1:I

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 140
    .line 141
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->img1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 142
    .line 143
    sget p1, Lcom/papa91/mix/R$id;->img2:I

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 150
    .line 151
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->img2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 152
    .line 153
    sget p1, Lcom/papa91/mix/R$id;->img3:I

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 160
    .line 161
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->img3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 162
    .line 163
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->close:Landroid/view/View;

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public setVipLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa91/view/AutoSlotDialog;->update()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa91/view/BaseDialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public show(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 11
    iput p1, p0, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    .line 12
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 13
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/papa91/view/AutoSlotDialog;->show()V

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/view/AutoSlotDialog;->update()V

    return-void
.end method

.method showConfirmDialog(Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lcom/papa91/mix/R$style;->Dialog:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    sget v1, Lcom/papa91/mix/R$layout;->dialog_load_slot:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    sget v1, Lcom/papa91/mix/R$id;->cancel:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/papa91/view/AutoSlotDialog$3;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/papa91/view/AutoSlotDialog$3;-><init>(Lcom/papa91/view/AutoSlotDialog;Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    sget v1, Lcom/papa91/mix/R$id;->ok:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lcom/papa91/view/AutoSlotDialog$4;

    .line 38
    .line 39
    invoke-direct {v2, p0, p2, v0, p1}, Lcom/papa91/view/AutoSlotDialog$4;-><init>(Lcom/papa91/view/AutoSlotDialog;ILcom/papa91/view/AutoSlotDialog$ConfirmDialog;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/papa91/view/BaseDialog;->show()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method update()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip1:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip1:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/view/AutoSlotDialog;->buyVip1:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x3

    .line 40
    new-array v3, v0, [Landroid/view/View;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/papa91/view/AutoSlotDialog;->b1:Landroid/view/View;

    .line 43
    .line 44
    aput-object v4, v3, v2

    .line 45
    .line 46
    iget-object v4, p0, Lcom/papa91/view/AutoSlotDialog;->b2:Landroid/view/View;

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    aput-object v4, v3, v5

    .line 50
    .line 51
    iget-object v4, p0, Lcom/papa91/view/AutoSlotDialog;->b3:Landroid/view/View;

    .line 52
    .line 53
    const/4 v6, 0x2

    .line 54
    aput-object v4, v3, v6

    .line 55
    .line 56
    new-array v4, v0, [Landroid/view/View;

    .line 57
    .line 58
    iget-object v7, p0, Lcom/papa91/view/AutoSlotDialog;->load1:Landroid/view/View;

    .line 59
    .line 60
    aput-object v7, v4, v2

    .line 61
    .line 62
    iget-object v7, p0, Lcom/papa91/view/AutoSlotDialog;->load2:Landroid/view/View;

    .line 63
    .line 64
    aput-object v7, v4, v5

    .line 65
    .line 66
    iget-object v7, p0, Lcom/papa91/view/AutoSlotDialog;->load3:Landroid/view/View;

    .line 67
    .line 68
    aput-object v7, v4, v6

    .line 69
    .line 70
    new-array v7, v0, [Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object v8, p0, Lcom/papa91/view/AutoSlotDialog;->time1:Landroid/widget/TextView;

    .line 73
    .line 74
    aput-object v8, v7, v2

    .line 75
    .line 76
    iget-object v8, p0, Lcom/papa91/view/AutoSlotDialog;->time2:Landroid/widget/TextView;

    .line 77
    .line 78
    aput-object v8, v7, v5

    .line 79
    .line 80
    iget-object v8, p0, Lcom/papa91/view/AutoSlotDialog;->time3:Landroid/widget/TextView;

    .line 81
    .line 82
    aput-object v8, v7, v6

    .line 83
    .line 84
    new-array v8, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 85
    .line 86
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->img1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 87
    .line 88
    aput-object v9, v8, v2

    .line 89
    .line 90
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->img2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    aput-object v9, v8, v5

    .line 93
    .line 94
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->img3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    aput-object v9, v8, v6

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    :goto_1
    if-ge v6, v0, :cond_5

    .line 100
    .line 101
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-lt v6, v9, :cond_1

    .line 108
    .line 109
    aget-object v9, v3, v6

    .line 110
    .line 111
    const/4 v10, 0x4

    .line 112
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_1
    aget-object v9, v3, v6

    .line 117
    .line 118
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v10, "file://"

    .line 127
    .line 128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v10, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    check-cast v10, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v10, ".png"

    .line 143
    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-virtual {p0, v9}, Lcom/papa91/view/AutoSlotDialog;->evictImageCache(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    aget-object v10, v8, v6

    .line 155
    .line 156
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v10, v9}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 161
    .line 162
    .line 163
    new-instance v9, Lcom/papa91/view/AutoSlotDialog$2;

    .line 164
    .line 165
    invoke-direct {v9, p0, v6}, Lcom/papa91/view/AutoSlotDialog$2;-><init>(Lcom/papa91/view/AutoSlotDialog;I)V

    .line 166
    .line 167
    .line 168
    aget-object v10, v4, v6

    .line 169
    .line 170
    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    aget-object v10, v8, v6

    .line 174
    .line 175
    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    new-instance v9, Ljava/io/File;

    .line 179
    .line 180
    iget-object v10, p0, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    check-cast v10, Ljava/lang/String;

    .line 187
    .line 188
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-eqz v10, :cond_2

    .line 196
    .line 197
    aget-object v10, v7, v6

    .line 198
    .line 199
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    .line 200
    .line 201
    .line 202
    move-result-wide v11

    .line 203
    invoke-virtual {p0, v11, v12}, Lcom/papa91/view/AutoSlotDialog;->getTimeFormat(J)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    :cond_2
    if-nez v6, :cond_4

    .line 211
    .line 212
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->freeLoadSlot()Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-eqz v9, :cond_3

    .line 217
    .line 218
    iget v9, p0, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    .line 219
    .line 220
    if-ge v9, v5, :cond_3

    .line 221
    .line 222
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    .line 223
    .line 224
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_3
    iget-object v9, p0, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    .line 229
    .line 230
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_5
    return-void
.end method
