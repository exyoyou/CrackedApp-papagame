.class public Lcom/papa91/view/AchievementDoneFloatDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field changeRunable:Ljava/lang/Runnable;

.field private context:Landroid/content/Context;

.field dimissRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isLogin:Z

.field private ivAchievement:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private root:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private tvDesc:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->infos:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/papa91/view/AchievementDoneFloatDialog$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/papa91/view/AchievementDoneFloatDialog$1;-><init>(Lcom/papa91/view/AchievementDoneFloatDialog;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->changeRunable:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/papa91/view/AchievementDoneFloatDialog$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/papa91/view/AchievementDoneFloatDialog$2;-><init>(Lcom/papa91/view/AchievementDoneFloatDialog;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->dimissRunnable:Ljava/lang/Runnable;

    .line 24
    .line 25
    iput-boolean p3, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->isLogin:Z

    .line 26
    .line 27
    iput-object p1, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->context:Landroid/content/Context;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->infos:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic a(Lcom/papa91/view/AchievementDoneFloatDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/view/AchievementDoneFloatDialog;->lambda$initViews$0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/AchievementDoneFloatDialog;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->infos:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/view/AchievementDoneFloatDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/view/AchievementDoneFloatDialog;->showData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/papa91/view/AchievementDoneFloatDialog;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/papa91/view/AchievementDoneFloatDialog;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
.end method

.method private initViews()V
    .locals 3

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_achievement_done_float:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x800033

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 26
    .line 27
    const/16 v2, 0x64

    .line 28
    .line 29
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 30
    .line 31
    const/16 v2, 0x20

    .line 32
    .line 33
    :try_start_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ivAchievement:I

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->ivAchievement:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    .line 53
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tvTitle:I

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->tvTitle:Landroid/widget/TextView;

    .line 62
    .line 63
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tvDesc:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->tvDesc:Landroid/widget/TextView;

    .line 72
    .line 73
    sget v0, Lorg/ppsspp/ppsspp/R$id;->root:I

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    .line 83
    new-instance v1, Lcom/papa91/view/a;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/papa91/view/a;-><init>(Lcom/papa91/view/AchievementDoneFloatDialog;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/papa91/view/AchievementDoneFloatDialog;->showData()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private synthetic lambda$initViews$0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->context:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v0, p1, Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->isLogin:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    :goto_0
    invoke-virtual {p1, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showAchievementDialog(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method private showData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->infos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa91/view/AchievementDoneFloatDialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->infos:Ljava/util/List;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->ivAchievement:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 29
    .line 30
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->shape_placeholder:I

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->J(I)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->ivAchievement:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 42
    .line 43
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->wifi:I

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->C(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->ivAchievement:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getIcon()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->tvTitle:Landroid/widget/TextView;

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "\u606d\u559c\u4f60\u89e3\u9501\u6210\u5c31\u3010"

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, "\u3011"

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->tvDesc:Landroid/widget/TextView;

    .line 93
    .line 94
    iget-boolean v3, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->isLogin:Z

    .line 95
    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;->getUnlock_rate()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "%\u73a9\u5bb6\u89e3\u9501\u6b64\u6210\u5c31"

    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "\u767b\u5f55\u8d26\u53f7\u5373\u53ef\u4fdd\u5b58\u6210\u5c31"

    .line 121
    .line 122
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->infos:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->handler:Landroid/os/Handler;

    .line 131
    .line 132
    if-nez v0, :cond_2

    .line 133
    .line 134
    new-instance v0, Landroid/os/Handler;

    .line 135
    .line 136
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->handler:Landroid/os/Handler;

    .line 140
    .line 141
    :cond_2
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->handler:Landroid/os/Handler;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->changeRunable:Ljava/lang/Runnable;

    .line 144
    .line 145
    const-wide/16 v2, 0x3e8

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    .line 149
    .line 150
    return-void
.end method


# virtual methods
.method public addInfo(Lcom/papa91/arc/bean/AchievementBean$AchievementInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->infos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog;->infos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/papa91/view/AchievementDoneFloatDialog;->initViews()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
