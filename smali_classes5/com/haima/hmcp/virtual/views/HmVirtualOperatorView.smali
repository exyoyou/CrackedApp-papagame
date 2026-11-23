.class public Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;
.super Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private animRunning:Z

.field private currentAddDialog:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

.field private editName:Landroid/widget/EditText;

.field private firstViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private imgChange:Landroid/widget/ImageView;

.field private isCollapse:Z

.field private llBtnOperate:Landroid/widget/LinearLayout;

.field private mOperateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

.field private nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rlOperate:Landroid/widget/RelativeLayout;

.field rlOperateHeight:I

.field private rlOperateLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private scaleSeekBar:Landroid/widget/SeekBar;

.field private secondViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tvAddBtn:Landroid/widget/TextView;

.field private tvAddMoreBtn:Landroid/widget/TextView;

.field private tvDelete:Landroid/widget/TextView;

.field private tvExit:Landroid/widget/TextView;

.field private tvReset:Landroid/widget/TextView;

.field private tvSave:Landroid/widget/TextView;

.field private tvSeekBar:Landroid/widget/TextView;

.field private tvSeekBarPercent:Landroid/widget/TextView;

.field private tvTip:Landroid/widget/TextView;

.field private viewEdit:Landroid/view/View;

.field private virtualBtnType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateHeight:I

    .line 4
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateHeight:I

    .line 9
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 10
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateHeight:I

    .line 14
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvSeekBarPercent:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->virtualBtnType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->currentAddDialog:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->currentAddDialog:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->animRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->animRunning:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->isCollapse:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->isCollapse:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->startAnim(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->mOperateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private changeUiByData(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x42c80000    # 100.0f

    .line 6
    .line 7
    mul-float v0, v0, v1

    .line 8
    .line 9
    const/high16 v1, 0x42480000    # 50.0f

    .line 10
    .line 11
    sub-float/2addr v0, v1

    .line 12
    float-to-int v0, v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x3

    .line 28
    if-ge v0, v2, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->viewEdit:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 56
    .line 57
    const-string v0, ""

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 74
    .line 75
    const/16 v0, 0x8

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->viewEdit:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method private dp2px(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    float-to-int p1, p1

    .line 20
    return p1
.end method

.method private getViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    add-int/2addr v3, v4

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    add-int/2addr v3, v4

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    add-int/2addr v4, p1

    .line 47
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v1, v2

    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/2addr v1, v2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    add-int/2addr v2, v3

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    add-int/2addr v3, v4

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    add-int/2addr v3, v4

    .line 94
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    add-int/2addr v3, v4

    .line 101
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    add-int/2addr v4, v5

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    add-int/2addr v4, p1

    .line 117
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method private initListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvExit:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvAddBtn:Landroid/widget/TextView;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvReset:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvDelete:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvAddMoreBtn:Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvSave:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 44
    .line 45
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$2;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$2;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 54
    .line 55
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$3;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 64
    .line 65
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$4;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$4;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private initViews()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/haima/hmcp/R$layout;->hm_virtual_operate:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    sget v1, Lcom/haima/hmcp/R$id;->tvAddBtn:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvAddBtn:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    sget v1, Lcom/haima/hmcp/R$id;->tvAddMoreBtn:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvAddMoreBtn:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    sget v1, Lcom/haima/hmcp/R$id;->tvExit:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvExit:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    sget v1, Lcom/haima/hmcp/R$id;->tvSave:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvSave:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    sget v1, Lcom/haima/hmcp/R$id;->tvTip:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvTip:Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    sget v1, Lcom/haima/hmcp/R$id;->editName:I

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/EditText;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    sget v1, Lcom/haima/hmcp/R$id;->viewEdit:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->viewEdit:Landroid/view/View;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 101
    .line 102
    sget v1, Lcom/haima/hmcp/R$id;->tvDelete:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvDelete:Landroid/widget/TextView;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 113
    .line 114
    sget v1, Lcom/haima/hmcp/R$id;->tvReset:I

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/widget/TextView;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvReset:Landroid/widget/TextView;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 125
    .line 126
    sget v1, Lcom/haima/hmcp/R$id;->tvSeekBar:I

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvSeekBar:Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    sget v1, Lcom/haima/hmcp/R$id;->scaleSeekBar:I

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/widget/SeekBar;

    .line 145
    .line 146
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 149
    .line 150
    sget v1, Lcom/haima/hmcp/R$id;->llBtnOperate:I

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/LinearLayout;

    .line 157
    .line 158
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 161
    .line 162
    sget v1, Lcom/haima/hmcp/R$id;->tvSeekBarPercent:I

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Landroid/widget/TextView;

    .line 169
    .line 170
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvSeekBarPercent:Landroid/widget/TextView;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .line 185
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 186
    .line 187
    new-instance v0, Landroid/widget/ImageView;

    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 197
    .line 198
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 204
    .line 205
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    .line 207
    const/16 v3, 0x30

    .line 208
    .line 209
    invoke-direct {p0, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->dp2px(I)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    const/16 v4, 0xc

    .line 214
    .line 215
    invoke-direct {p0, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->dp2px(I)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 226
    .line 227
    const-string v1, "#88000000"

    .line 228
    .line 229
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 237
    .line 238
    const/16 v1, 0x11

    .line 239
    .line 240
    invoke-direct {p0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->dp2px(I)I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    const/4 v4, 0x3

    .line 245
    invoke-direct {p0, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->dp2px(I)I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    invoke-direct {p0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->dp2px(I)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-direct {p0, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->dp2px(I)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 261
    .line 262
    sget v1, Lcom/haima/hmcp/R$mipmap;->hm_vir_operate_up:I

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 268
    .line 269
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 283
    .line 284
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$1;

    .line 285
    .line 286
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$1;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->firstViewList:Ljava/util/List;

    .line 293
    .line 294
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvAddBtn:Landroid/widget/TextView;

    .line 295
    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->firstViewList:Ljava/util/List;

    .line 300
    .line 301
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvAddMoreBtn:Landroid/widget/TextView;

    .line 302
    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->firstViewList:Ljava/util/List;

    .line 307
    .line 308
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvSave:Landroid/widget/TextView;

    .line 309
    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->firstViewList:Ljava/util/List;

    .line 314
    .line 315
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvExit:Landroid/widget/TextView;

    .line 316
    .line 317
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->firstViewList:Ljava/util/List;

    .line 321
    .line 322
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvReset:Landroid/widget/TextView;

    .line 323
    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->secondViewList:Ljava/util/List;

    .line 328
    .line 329
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 330
    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->secondViewList:Ljava/util/List;

    .line 335
    .line 336
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->editName:Landroid/widget/EditText;

    .line 337
    .line 338
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->secondViewList:Ljava/util/List;

    .line 342
    .line 343
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvDelete:Landroid/widget/TextView;

    .line 344
    .line 345
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    return-void
.end method

.method private declared-synchronized startAnim(II)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->animRunning:Z

    .line 4
    .line 5
    filled-new-array {p1, p2}, [I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-wide/16 v0, 0xc8

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$5;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$5;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$6;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$6;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0

    .line 41
    throw p1
.end method


# virtual methods
.method public consumeThisEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateHeight:I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    int-to-float v1, v1

    .line 21
    cmpg-float v0, v0, v1

    .line 22
    .line 23
    if-gez v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->imgChange:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, p1, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    return v2

    .line 47
    :cond_0
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->isCollapse:Z

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->firstViewList:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/view/View;

    .line 68
    .line 69
    invoke-direct {p0, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v0, p1, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    return v2

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->secondViewList:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Landroid/view/View;

    .line 105
    .line 106
    invoke-direct {p0, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v0, p1, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    return v2

    .line 117
    :cond_4
    const/4 p1, 0x0

    .line 118
    return p1
.end method

.method protected init()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->firstViewList:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->secondViewList:Ljava/util/List;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0x53

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->dp2px(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateHeight:I

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->initViews()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 34
    .line 35
    const/16 v1, 0x96

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 41
    .line 42
    const/16 v1, 0x32

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->initListeners()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public reSet()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperateLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->rlOperate:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->isCollapse:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvTip:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->exitEditMode()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->currentAddDialog:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public selectVirtualView(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "selectVirtualView = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 31
    .line 32
    if-ne v0, p1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->exitEditMode()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 41
    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->enterEditMode()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getViewBean()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->changeUiByData(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvTip:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->tvTip:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public setOperateListener(Lcom/haima/hmcp/virtual/listeners/OperateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->mOperateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVirType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->virtualBtnType:I

    .line 2
    .line 3
    return-void
.end method
