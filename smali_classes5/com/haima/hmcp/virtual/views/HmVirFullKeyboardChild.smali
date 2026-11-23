.class Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field protected static defHeight:I

.field protected static defInterval:I

.field protected static defWidth:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

.field infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private initTextAndColor(Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "initTextAndColor hmVirFullKeyBoardInfoBean is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    sget-boolean v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->IS_UPPER:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->isNeedChangeTxtColor()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->isNeedChangeTxtColor()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_6

    .line 52
    .line 53
    const-string p1, "\u5199"

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_full_keyboard_caps:I

    .line 66
    .line 67
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    :cond_3
    sget-boolean p1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->IS_UPPER:Z

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_full_keyboard_caps_unlock:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_full_keyboard_caps_lock:I

    .line 89
    .line 90
    :goto_1
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    const-string p1, "#EB6800"

    .line 98
    .line 99
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    :cond_6
    return-void
.end method

.method private restoreOriginalStyle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->initTextAndColor(Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_vir_fullkeyboard_view_bg:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public init(Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->clickListener:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 4
    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    .line 7
    sget v1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defWidth:I

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getColumnNum()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    mul-int v1, v1, v2

    .line 14
    .line 15
    sget v2, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defInterval:I

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getColumnNum()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    sub-int/2addr v3, v4

    .line 23
    mul-int v2, v2, v3

    .line 24
    .line 25
    add-int/2addr v1, v2

    .line 26
    sget v2, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defHeight:I

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getRowNum()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    mul-int v2, v2, v3

    .line 33
    .line 34
    sget v3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defInterval:I

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getRowNum()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    sub-int/2addr v5, v4

    .line 41
    mul-int v3, v3, v5

    .line 42
    .line 43
    add-int/2addr v2, v3

    .line 44
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getColumn()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sub-int/2addr v1, v4

    .line 52
    sget v2, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defWidth:I

    .line 53
    .line 54
    sget v3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defInterval:I

    .line 55
    .line 56
    add-int/2addr v2, v3

    .line 57
    mul-int v1, v1, v2

    .line 58
    .line 59
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getRow()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    sub-int/2addr v1, v4

    .line 69
    sget v2, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defHeight:I

    .line 70
    .line 71
    sget v3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->defInterval:I

    .line 72
    .line 73
    add-int/2addr v2, v3

    .line 74
    mul-int v1, v1, v2

    .line 75
    .line 76
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->initTextAndColor(Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;)V

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x2

    .line 85
    const/high16 v0, 0x41200000    # 10.0f

    .line 86
    .line 87
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    .line 89
    .line 90
    const/16 p1, 0x11

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget v0, Lcom/haima/hmcp/R$drawable;->hm_vir_fullkeyboard_view_bg:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_0

    .line 117
    .line 118
    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 119
    .line 120
    .line 121
    :cond_0
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild$1;

    .line 122
    .line 123
    invoke-direct {p1, p0, p2}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild$1;-><init>(Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const-string p1, "#FFFFFF"

    .line 7
    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    .line 14
    .line 15
    const-string p1, "#EB6800"

    .line 16
    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string p3, "Key focused: "

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object p3, p0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->infoBean:Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;

    .line 37
    .line 38
    if-eqz p3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string p3, "unknown"

    .line 46
    .line 47
    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyboardChild;->restoreOriginalStyle()V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->vibrator(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return p1
.end method
