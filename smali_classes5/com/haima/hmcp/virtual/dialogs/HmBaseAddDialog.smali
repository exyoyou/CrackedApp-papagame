.class public abstract Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final delClickListener:Landroid/view/View$OnClickListener;

.field protected fls:[Landroid/widget/FrameLayout;

.field protected isMoreKeyMode:Z

.field protected ivs:[Landroid/widget/ImageView;

.field protected keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

.field protected tvClear:Landroid/widget/TextView;

.field protected tvSure:Landroid/widget/TextView;

.field protected tvs:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p2, 0x3

    .line 15
    new-array v0, p2, [Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->fls:[Landroid/widget/FrameLayout;

    .line 18
    .line 19
    new-array v0, p2, [Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvs:[Landroid/widget/TextView;

    .line 22
    .line 23
    new-array p2, p2, [Landroid/widget/ImageView;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->ivs:[Landroid/widget/ImageView;

    .line 26
    .line 27
    new-instance p2, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$1;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$1;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->delClickListener:Landroid/view/View$OnClickListener;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    const/16 v1, 0x1c

    .line 55
    .line 56
    if-lt v0, v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/haima/hmcp/virtual/dialogs/a;->a(Landroid/view/WindowManager$LayoutParams;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->lambda$initMoreViews$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->lambda$initMoreViews$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initMoreViews$0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->refreshMoreKeyUI()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$initMoreViews$1(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    const/16 v0, 0x6c

    .line 7
    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->createNoKeyBean(III)Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->mListener:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;->onAdd(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method protected createNoKeyBean(III)Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setScale(F)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setW(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setH(I)V

    .line 20
    .line 21
    .line 22
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setX(D)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->setY(D)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPosition(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setKeys(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setKeyType(I)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method protected hideKeyUI(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->fls:[Landroid/widget/FrameLayout;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_vir_multiply_bg_off:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvs:[Landroid/widget/TextView;

    .line 11
    .line 12
    aget-object v0, v0, p1

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->ivs:[Landroid/widget/ImageView;

    .line 20
    .line 21
    aget-object v0, v0, p1

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->fls:[Landroid/widget/FrameLayout;

    .line 31
    .line 32
    aget-object p1, v0, p1

    .line 33
    .line 34
    sget v0, Lcom/haima/hmcp/R$drawable;->hm_vir_multiply_bg_on:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method protected initMoreViews(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Lcom/haima/hmcp/R$id;->tvSure:I

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
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvSure:Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lcom/haima/hmcp/R$id;->tvClear:I

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
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvClear:Landroid/widget/TextView;

    .line 20
    .line 21
    sget v0, Lcom/haima/hmcp/R$id;->flMoreKey1:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->fls:[Landroid/widget/FrameLayout;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    aput-object v0, v1, v2

    .line 33
    .line 34
    sget v0, Lcom/haima/hmcp/R$id;->flMoreKey2:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/FrameLayout;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->fls:[Landroid/widget/FrameLayout;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    aput-object v0, v1, v3

    .line 46
    .line 47
    sget v0, Lcom/haima/hmcp/R$id;->flMoreKey3:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/FrameLayout;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->fls:[Landroid/widget/FrameLayout;

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    aput-object v0, v1, v4

    .line 59
    .line 60
    sget v0, Lcom/haima/hmcp/R$id;->tvMoreKey1:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvs:[Landroid/widget/TextView;

    .line 69
    .line 70
    aput-object v0, v1, v2

    .line 71
    .line 72
    sget v0, Lcom/haima/hmcp/R$id;->tvMoreKey2:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvs:[Landroid/widget/TextView;

    .line 81
    .line 82
    aput-object v0, v1, v3

    .line 83
    .line 84
    sget v0, Lcom/haima/hmcp/R$id;->tvMoreKey3:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/TextView;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvs:[Landroid/widget/TextView;

    .line 93
    .line 94
    aput-object v0, v1, v4

    .line 95
    .line 96
    sget v0, Lcom/haima/hmcp/R$id;->imgMoreDel1:I

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/ImageView;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->delClickListener:Landroid/view/View$OnClickListener;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->ivs:[Landroid/widget/ImageView;

    .line 110
    .line 111
    aput-object v0, v1, v2

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    sget v0, Lcom/haima/hmcp/R$id;->imgMoreDel2:I

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/ImageView;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->delClickListener:Landroid/view/View$OnClickListener;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->ivs:[Landroid/widget/ImageView;

    .line 141
    .line 142
    aput-object v0, v1, v3

    .line 143
    .line 144
    sget v0, Lcom/haima/hmcp/R$id;->imgMoreDel3:I

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Landroid/widget/ImageView;

    .line 151
    .line 152
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->delClickListener:Landroid/view/View$OnClickListener;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->ivs:[Landroid/widget/ImageView;

    .line 165
    .line 166
    aput-object p1, v0, v4

    .line 167
    .line 168
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvClear:Landroid/widget/TextView;

    .line 169
    .line 170
    new-instance v0, Lcom/haima/hmcp/virtual/dialogs/b;

    .line 171
    .line 172
    invoke-direct {v0, p0}, Lcom/haima/hmcp/virtual/dialogs/b;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvSure:Landroid/widget/TextView;

    .line 179
    .line 180
    new-instance v0, Lcom/haima/hmcp/virtual/dialogs/c;

    .line 181
    .line 182
    invoke-direct {v0, p0}, Lcom/haima/hmcp/virtual/dialogs/c;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method protected refreshMoreKeyUI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvSure:Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvClear:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvSure:Landroid/widget/TextView;

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvClear:Landroid/widget/TextView;

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 v0, 0x2

    .line 36
    :goto_1
    if-ltz v0, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ge v0, v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->showKeyUI(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->hideKeyUI(I)V

    .line 51
    .line 52
    .line 53
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/haima/hmcp/utils/DialogUtils;->isContextValid(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "screen  = "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->rawRootPoint:Landroid/graphics/Point;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->rawRootPoint:Landroid/graphics/Point;

    .line 52
    .line 53
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 54
    .line 55
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    .line 57
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 58
    .line 59
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "BadTokenException when showing dialog: "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method protected showKeyUI(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->fls:[Landroid/widget/FrameLayout;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_vir_multiply_bg_off:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->tvs:[Landroid/widget/TextView;

    .line 11
    .line 12
    aget-object v0, v0, p1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;->getKey()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->ivs:[Landroid/widget/ImageView;

    .line 30
    .line 31
    aget-object v0, v0, p1

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, p1, 0x1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->keyList:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->fls:[Landroid/widget/FrameLayout;

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    add-int/lit8 v2, v2, -0x1

    .line 51
    .line 52
    if-eq p1, v2, :cond_0

    .line 53
    .line 54
    aget-object p1, v1, v0

    .line 55
    .line 56
    sget v0, Lcom/haima/hmcp/R$drawable;->hm_vir_multiply_bg_on:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
