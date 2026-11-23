.class public Lcom/papa91/arc/dialog/SimulatorUploadDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;,
        Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;,
        Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;
    }
.end annotation


# instance fields
.field private btn_ok:Landroid/widget/Button;

.field private iv_close:Landroid/widget/ImageView;

.field private listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

.field ll_roles:Landroid/widget/LinearLayout;

.field private mLife:I

.field private mMaxLife:I

.field private roleBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation
.end field

.field private roleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private tv_add:Landroid/widget/TextView;

.field private tv_content:Landroid/widget/TextView;

.field private tv_del:Landroid/widget/TextView;

.field private tv_life:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    const/16 p1, 0x63

    .line 4
    iput p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mMaxLife:I

    .line 5
    sget p1, Lorg/ppsspp/ppsspp/R$layout;->dialog_simulator_upload:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimEnabled(Z)V

    .line 7
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->initView()V

    .line 8
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->setListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SimulatorUploadDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->clearSelection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearSelection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->onUnselected()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_title:Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_content:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_content:Landroid/widget/TextView;

    .line 20
    .line 21
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->iv_close:Landroid/widget/ImageView;

    .line 30
    .line 31
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_ok:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/Button;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->btn_ok:Landroid/widget/Button;

    .line 40
    .line 41
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_roles:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->ll_roles:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_del:I

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_del:Landroid/widget/TextView;

    .line 60
    .line 61
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_life:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_life:Landroid/widget/TextView;

    .line 70
    .line 71
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_add:I

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_add:Landroid/widget/TextView;

    .line 80
    .line 81
    return-void
.end method

.method private setListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_del:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_add:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lorg/ppsspp/ppsspp/R$id;->btn_ok:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_5

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->isChecked()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

    .line 44
    .line 45
    iget v1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole_id()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-interface {p1, v1, v0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;->onConfirm(II)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "\u8bf7\u9009\u62e9\u4f7f\u7528\u89d2\u8272"

    .line 68
    .line 69
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const/4 v0, 0x0

    .line 74
    invoke-interface {p1, v0, v0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;->onConfirm(II)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sget v1, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 87
    .line 88
    if-ne v0, v1, :cond_7

    .line 89
    .line 90
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    invoke-interface {p1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;->onClose()V

    .line 95
    .line 96
    .line 97
    :cond_6
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_add:I

    .line 106
    .line 107
    const-string v2, ""

    .line 108
    .line 109
    const/4 v3, 0x1

    .line 110
    if-ne v0, v1, :cond_9

    .line 111
    .line 112
    iget p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 113
    .line 114
    add-int/2addr p1, v3

    .line 115
    iput p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 116
    .line 117
    iget v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mMaxLife:I

    .line 118
    .line 119
    if-le p1, v0, :cond_8

    .line 120
    .line 121
    iput v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v0, "\u4e0d\u80fd\u518d\u52a0\u4e86"

    .line 128
    .line 129
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_8
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_life:Landroid/widget/TextView;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget v1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_del:I

    .line 160
    .line 161
    if-ne p1, v0, :cond_b

    .line 162
    .line 163
    iget p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 164
    .line 165
    sub-int/2addr p1, v3

    .line 166
    iput p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 167
    .line 168
    if-ge p1, v3, :cond_a

    .line 169
    .line 170
    iput v3, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const-string v0, "\u4e0d\u80fd\u518d\u51cf\u4e86"

    .line 177
    .line 178
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_a
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_life:Landroid/widget/TextView;

    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    iget v1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    :cond_b
    :goto_2
    return-void
.end method

.method public setConfirmText(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorUploadDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->btn_ok:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleList:Ljava/util/List;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleList:Ljava/util/List;

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget v2, Lorg/ppsspp/ppsspp/R$layout;->item_simulator_role:I

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;

    .line 69
    .line 70
    invoke-direct {v2, p0, v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;-><init>(Lcom/papa91/arc/dialog/SimulatorUploadDialog;Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->init(Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleList:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->ll_roles:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    const/4 v3, -0x2

    .line 86
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    return-void
.end method

.method public setListener(Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

    return-void
.end method

.method public setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorUploadDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_content:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTipTitle(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorUploadDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_title:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
