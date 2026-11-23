.class public Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;
.super Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentAddDialog:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

.field private firstViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private initialX:F

.field private initialY:F

.field private isCollapse:Z

.field private lastX:F

.field private lastY:F

.field private leftPointerImageView:Landroid/widget/ImageView;

.field private llBtnOperate:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mIsEdit:Z

.field private mIsShowGuide:Z

.field private mOperateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

.field private mStep:I

.field private nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rightPointerImageView:Landroid/widget/ImageView;

.field private rlOperate:Landroid/widget/RelativeLayout;

.field rlOperateHeight:I

.field private rlOperateLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private rlOperateX:F

.field private rlOperateY:F

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

.field private tvExit:Landroid/widget/TextView;

.field private tvGuide:Landroid/widget/TextView;

.field private tvReset:Landroid/widget/TextView;

.field private tvSave:Landroid/widget/TextView;

.field private tvSeekBar:Landroid/widget/TextView;

.field private tvSeekBarPercent:Landroid/widget/TextView;

.field private tvTip:Landroid/widget/TextView;

.field private virtualBtnType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateHeight:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mIsShowGuide:Z

    .line 5
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mStep:I

    .line 6
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;

    invoke-direct {v0, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->onClickListener:Landroid/view/View$OnClickListener;

    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateHeight:I

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mIsShowGuide:Z

    .line 13
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mStep:I

    .line 14
    new-instance p2, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;

    invoke-direct {p2, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->onClickListener:Landroid/view/View$OnClickListener;

    .line 15
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateHeight:I

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mIsShowGuide:Z

    .line 21
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mStep:I

    .line 22
    new-instance p2, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;

    invoke-direct {p2, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$2;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->onClickListener:Landroid/view/View$OnClickListener;

    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->lambda$initViews$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvSeekBarPercent:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->performExit()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->performSave()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->performReset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)Lcom/haima/hmcp/virtual/listeners/OperateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mOperateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private addTvGuide()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 9
    .line 10
    const/16 v1, 0x11

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget v1, Lcom/haima/hmcp/R$dimen;->haima_hmcp_guide_text_width:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    float-to-int v0, v0

    .line 30
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget v2, Lcom/haima/hmcp/R$dimen;->haima_hmcp_guide_text_padding_vertical:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    float-to-int v1, v1

    .line 45
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget v3, Lcom/haima/hmcp/R$dimen;->haima_hmcp_guide_text_size:I

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 72
    .line 73
    div-float/2addr v2, v3

    .line 74
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 88
    .line 89
    .line 90
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_guide_step_one:I

    .line 91
    .line 92
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 100
    .line 101
    const-string v1, "#6DDCFC"

    .line 102
    .line 103
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 111
    .line 112
    const/4 v1, 0x2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_vir_operate_cloud_computer_guide_bg:I

    .line 121
    .line 122
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 132
    .line 133
    const/16 v1, 0x8

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    .line 140
    const/4 v1, -0x2

    .line 141
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    sget v2, Lcom/haima/hmcp/R$dimen;->haima_hmcp_guide_margin_top:I

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    float-to-int v1, v1

    .line 159
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 160
    .line 161
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method private changeUiByData(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V
    .locals 1

    .line 1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    mul-float p1, p1, v0

    .line 8
    .line 9
    float-to-int p1, p1

    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    .line 14
    .line 15
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
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

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
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

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
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

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
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

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
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

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

.method private guide(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_8

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mStep:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mStep:I

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mStep:I

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_7

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_6

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    if-eq v0, v1, :cond_4

    .line 32
    .line 33
    const/4 p1, 0x5

    .line 34
    if-eq v0, p1, :cond_2

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "step 5"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->leftPointerImageView:Landroid/widget/ImageView;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->leftPointerImageView:Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 66
    .line 67
    .line 68
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_guide_step_five:I

    .line 69
    .line 70
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, "step 4"

    .line 82
    .line 83
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 89
    .line 90
    .line 91
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_guide_step_four:I

    .line 92
    .line 93
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rightPointerImageView:Landroid/widget/ImageView;

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rightPointerImageView:Landroid/widget/ImageView;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->leftPointerImageView:Landroid/widget/ImageView;

    .line 119
    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->leftPointerImageView:Landroid/widget/ImageView;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    .line 138
    .line 139
    const-string v1, "step 3"

    .line 140
    .line 141
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 147
    .line 148
    .line 149
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_guide_step_three:I

    .line 150
    .line 151
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rightPointerImageView:Landroid/widget/ImageView;

    .line 159
    .line 160
    if-eqz v0, :cond_8

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rightPointerImageView:Landroid/widget/ImageView;

    .line 172
    .line 173
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_7
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    .line 178
    .line 179
    const-string v0, "step 2"

    .line 180
    .line 181
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 187
    .line 188
    .line 189
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_guide_step_two:I

    .line 190
    .line 191
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    :goto_0
    return-void
.end method

.method private initGuideView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->addTvGuide()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private initListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvExit:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->onClickListener:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvReset:Landroid/widget/TextView;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->onClickListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvSave:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->onClickListener:Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 23
    .line 24
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$1;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private initViews()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

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
    sget v1, Lcom/haima/hmcp/R$layout;->hm_virtual_operate_cloud_computer:I

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
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    sget v1, Lcom/haima/hmcp/R$id;->tvExit:I

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
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvExit:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    sget v1, Lcom/haima/hmcp/R$id;->tvSave:I

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
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvSave:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    sget v1, Lcom/haima/hmcp/R$id;->tvTip:I

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
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvTip:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    sget v1, Lcom/haima/hmcp/R$id;->tvReset:I

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
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvReset:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    sget v1, Lcom/haima/hmcp/R$id;->tvSeekBar:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvSeekBar:Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 82
    .line 83
    sget v1, Lcom/haima/hmcp/R$id;->scaleSeekBar:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/SeekBar;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    sget v1, Lcom/haima/hmcp/R$id;->llBtnOperate:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    sget v1, Lcom/haima/hmcp/R$id;->tvSeekBarPercent:I

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvSeekBarPercent:Landroid/widget/TextView;

    .line 116
    .line 117
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    .line 119
    const/4 v1, -0x2

    .line 120
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const/4 v2, 0x1

    .line 136
    const/high16 v3, 0x42480000    # 50.0f

    .line 137
    .line 138
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    float-to-int v1, v1

    .line 143
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const/high16 v4, 0x41300000    # 11.0f

    .line 156
    .line 157
    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    float-to-int v2, v2

    .line 162
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 163
    .line 164
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 165
    .line 166
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 167
    .line 168
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 169
    .line 170
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 174
    .line 175
    sget v1, Lcom/haima/hmcp/R$id;->rightPointerImageView:I

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Landroid/widget/ImageView;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rightPointerImageView:Landroid/widget/ImageView;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 186
    .line 187
    sget v1, Lcom/haima/hmcp/R$id;->leftPointerImageView:I

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/widget/ImageView;

    .line 194
    .line 195
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->leftPointerImageView:Landroid/widget/ImageView;

    .line 196
    .line 197
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->initGuideView()V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 201
    .line 202
    new-instance v1, Lcom/haima/hmcp/virtual/views/h;

    .line 203
    .line 204
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/h;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 217
    .line 218
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    .line 220
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateX:F

    .line 227
    .line 228
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateY:F

    .line 235
    .line 236
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->firstViewList:Ljava/util/List;

    .line 237
    .line 238
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvSave:Landroid/widget/TextView;

    .line 239
    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->firstViewList:Ljava/util/List;

    .line 244
    .line 245
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvExit:Landroid/widget/TextView;

    .line 246
    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->firstViewList:Ljava/util/List;

    .line 251
    .line 252
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvReset:Landroid/widget/TextView;

    .line 253
    .line 254
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->secondViewList:Ljava/util/List;

    .line 258
    .line 259
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 260
    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    return-void
.end method

.method private synthetic lambda$initViews$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "rlOperate==== ACTION_MOVE"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->initialX:F

    .line 26
    .line 27
    sub-float/2addr v0, v2

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->initialY:F

    .line 33
    .line 34
    sub-float/2addr p2, v2

    .line 35
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->lastX:F

    .line 36
    .line 37
    add-float/2addr v2, v0

    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->lastY:F

    .line 42
    .line 43
    add-float/2addr v0, p2

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x5

    .line 48
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->performGuide(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p2, "rlOperate==== ACTION_UP"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, "rlOperate==== ACTION_DOWN"

    .line 63
    .line 64
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->initialX:F

    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->initialY:F

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iput p2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->lastX:F

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->lastY:F

    .line 90
    .line 91
    :goto_0
    return v1
.end method

.method private performExit()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mIsEdit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/haima/hmcp/utils/DialogUtils;->isContextValid(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 23
    .line 24
    .line 25
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_edit_keyboard_confirm_tips:I

    .line 26
    .line 27
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 32
    .line 33
    .line 34
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_edit_keyboard_save:I

    .line 35
    .line 36
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 41
    .line 42
    .line 43
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_edit_keyboard_exit_direct:I

    .line 44
    .line 45
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    new-instance v6, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$3;

    .line 50
    .line 51
    invoke-direct {v6, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$3;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    .line 52
    .line 53
    .line 54
    new-instance v7, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$4;

    .line 55
    .line 56
    invoke-direct {v7, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$4;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    .line 57
    .line 58
    .line 59
    move-object v1, v0

    .line 60
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;->show()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->setDialogWidthAndHeight(Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->exit()V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method private performReset()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

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
    new-instance v0, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 19
    .line 20
    .line 21
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_edit_keyboard_reset_tips:I

    .line 22
    .line 23
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$5;

    .line 28
    .line 29
    invoke-direct {v3, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer$5;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;->show()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->setDialogWidthAndHeight(Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private performSave()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mOperateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mIsEdit:Z

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/haima/hmcp/virtual/listeners/OperateListener;->onSave(Z)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->reSet()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 21
    .line 22
    .line 23
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_edit_keyboard_save_success:I

    .line 24
    .line 25
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private setDialogWidthAndHeight(Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    const/high16 v3, 0x43960000    # 300.0f

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    float-to-int v1, v1

    .line 31
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/high16 v4, 0x43280000    # 168.0f

    .line 44
    .line 45
    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    float-to-int v2, v2

    .line 50
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    .line 52
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public consumeThisEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    new-instance v3, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_5

    .line 33
    .line 34
    float-to-int p1, v1

    .line 35
    float-to-int v4, v2

    .line 36
    invoke-virtual {v3, p1, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->isCollapse:Z

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-nez p1, :cond_4

    .line 46
    .line 47
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->firstViewList:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/view/View;

    .line 64
    .line 65
    invoke-direct {p0, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v1, v2, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    return v3

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->secondViewList:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_4

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Landroid/view/View;

    .line 101
    .line 102
    invoke-direct {p0, v4}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v1, v2, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    return v3

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 114
    .line 115
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v1, v2, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    return v3

    .line 126
    :cond_5
    :goto_0
    return v0
.end method

.method public exit()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->reSet()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mOperateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/haima/hmcp/virtual/listeners/OperateListener;->onExit()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
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
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->firstViewList:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->secondViewList:Ljava/util/List;

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
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->dp2px(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateHeight:I

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->initViews()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 34
    .line 35
    const/16 v1, 0xc8

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->scaleSeekBar:Landroid/widget/SeekBar;

    .line 41
    .line 42
    const/16 v1, 0x64

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->initListeners()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public performGuide(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mIsShowGuide:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->guide(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reSet()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->isCollapse:Z

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->setResetEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvTip:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->exitEditMode()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->currentAddDialog:Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 58
    .line 59
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateX:F

    .line 60
    .line 61
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 62
    .line 63
    int-to-float v0, v0

    .line 64
    add-float/2addr v3, v0

    .line 65
    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperate:Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateY:F

    .line 71
    .line 72
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rlOperateLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .line 74
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 75
    .line 76
    int-to-float v3, v3

    .line 77
    add-float/2addr v2, v3

    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 86
    .line 87
    .line 88
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_guide_step_one:I

    .line 89
    .line 90
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mStep:I

    .line 99
    .line 100
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->rightPointerImageView:Landroid/widget/ImageView;

    .line 106
    .line 107
    const/4 v1, 0x4

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->leftPointerImageView:Landroid/widget/ImageView;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    return-void
.end method

.method public selectVirtualView(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

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
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->nowVirtualView:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getViewBean()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->changeUiByData(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvTip:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvTip:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->llBtnOperate:Landroid/widget/LinearLayout;

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
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mOperateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 2
    .line 3
    return-void
.end method

.method public setResetEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mIsEdit:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvReset:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setShowGuide(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->mIsShowGuide:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->tvGuide:Landroid/widget/TextView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setVirType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;->virtualBtnType:I

    .line 2
    .line 3
    return-void
.end method
