.class public Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;
.super Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/haima/hmcp/R$style;->haima_hmcp_virtual_dialog:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$2;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$2;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

    .line 24
    .line 25
    new-instance p3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 31
    .line 32
    iput-boolean p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    sget p3, Lcom/haima/hmcp/R$layout;->hm_dialog_add_xbox:I

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    sget p3, Lcom/haima/hmcp/R$id;->tvBack:I

    .line 54
    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Landroid/widget/TextView;

    .line 60
    .line 61
    const-string v0, " < \u8fd4\u56de"

    .line 62
    .line 63
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$1;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$1;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    iget-boolean p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 75
    .line 76
    if-eqz p3, :cond_0

    .line 77
    .line 78
    sget p3, Lcom/haima/hmcp/R$id;->llMoreBtn:I

    .line 79
    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->initMoreViews(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    sget p2, Lcom/haima/hmcp/R$id;->imgDirection:I

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    sget p2, Lcom/haima/hmcp/R$id;->imgRRocker:I

    .line 100
    .line 101
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    sget p2, Lcom/haima/hmcp/R$id;->imgLRocker:I

    .line 109
    .line 110
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    sget p2, Lcom/haima/hmcp/R$id;->imgA:I

    .line 118
    .line 119
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    sget p2, Lcom/haima/hmcp/R$id;->imgB:I

    .line 127
    .line 128
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    sget p2, Lcom/haima/hmcp/R$id;->imgX:I

    .line 136
    .line 137
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    sget p2, Lcom/haima/hmcp/R$id;->imgY:I

    .line 145
    .line 146
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    sget p2, Lcom/haima/hmcp/R$id;->imgLT:I

    .line 154
    .line 155
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    sget p2, Lcom/haima/hmcp/R$id;->imgRT:I

    .line 163
    .line 164
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    sget p2, Lcom/haima/hmcp/R$id;->imgLS:I

    .line 172
    .line 173
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    sget p2, Lcom/haima/hmcp/R$id;->imgLB:I

    .line 181
    .line 182
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    sget p2, Lcom/haima/hmcp/R$id;->imgRB:I

    .line 190
    .line 191
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    sget p2, Lcom/haima/hmcp/R$id;->imgRS:I

    .line 199
    .line 200
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    sget p2, Lcom/haima/hmcp/R$id;->imgSelect:I

    .line 208
    .line 209
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    sget p2, Lcom/haima/hmcp/R$id;->imgStart:I

    .line 217
    .line 218
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;->createViewBean(Ljava/lang/String;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createViewBean(Ljava/lang/String;IIII)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x3

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-lt p3, v2, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p3, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 21
    .line 22
    new-instance p4, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 23
    .line 24
    invoke-direct {p4, p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->refreshMoreKeyUI()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    new-instance v0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;-><init>()V

    .line 41
    .line 42
    .line 43
    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setScale(F)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 49
    .line 50
    invoke-direct {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p4}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setW(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setH(I)V

    .line 57
    .line 58
    .line 59
    const-wide/high16 p4, 0x3fe0000000000000L    # 0.5

    .line 60
    .line 61
    invoke-virtual {v3, p4, p5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setX(D)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p4, p5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setY(D)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPosition(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;)V

    .line 68
    .line 69
    .line 70
    new-instance p4, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance p5, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 76
    .line 77
    invoke-direct {p5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>()V

    .line 78
    .line 79
    .line 80
    if-ne p3, v2, :cond_2

    .line 81
    .line 82
    const-string p1, "UP"

    .line 83
    .line 84
    invoke-virtual {p5, p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setKey(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    invoke-virtual {p5, p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setCode(I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 95
    .line 96
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string p2, "DOWN"

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setKey(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setCode(I)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    new-instance p1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 111
    .line 112
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string p2, "LEFT"

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setKey(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 p2, 0x4

    .line 121
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setCode(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance p5, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 128
    .line 129
    invoke-direct {p5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p1, "RIGHT"

    .line 133
    .line 134
    invoke-virtual {p5, p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setKey(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const/16 p1, 0x8

    .line 138
    .line 139
    invoke-virtual {p5, p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setCode(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p5, p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setKey(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p5, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->setCode(I)V

    .line 147
    .line 148
    .line 149
    :goto_0
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p4}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setKeys(Ljava/util/List;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setKeyType(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

    .line 159
    .line 160
    invoke-interface {p1, v0}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;->onAdd(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 164
    .line 165
    .line 166
    :cond_3
    return-void
.end method
