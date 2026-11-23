.class public Lm/framework/ui/widget/slidingmenu/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

.field private config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

.field private curBody:Landroid/view/View;

.field private flMenu:Landroid/widget/FrameLayout;

.field private itemToView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private llBody:Landroid/widget/LinearLayout;

.field private llMenu:Landroid/widget/LinearLayout;

.field private menuShown:Z

.field private menuWidth:I

.field private ocListener:Landroid/view/View$OnClickListener;

.field private otListener:Landroid/view/View$OnTouchListener;

.field private screenWidth:I

.field private showMenuWidth:I

.field private svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

.field private vCover:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/BodyContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 2
    .line 3
    return p0
.end method

.method private disableOverScrollMode(Landroid/view/View;)V
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 2
    .line 3
    const-string v1, "setOverScrollMode"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    .line 8
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 12
    .line 13
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 18
    .line 19
    .line 20
    new-array v1, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    aput-object v2, v1, v5

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private getSepView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 7
    .line 8
    iget p1, p1, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuSep:I

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lm/framework/ui/widget/slidingmenu/MenuConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->itemToView:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->ocListener:Landroid/view/View$OnClickListener;

    .line 21
    .line 22
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->otListener:Landroid/view/View$OnTouchListener;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 38
    .line 39
    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 40
    .line 41
    int-to-float v1, v0

    .line 42
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 43
    .line 44
    iget v3, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    .line 45
    .line 46
    mul-float v1, v1, v3

    .line 47
    .line 48
    float-to-int v1, v1

    .line 49
    iput v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 50
    .line 51
    sub-int/2addr v0, v1

    .line 52
    div-int/lit8 v0, v0, 0x2

    .line 53
    .line 54
    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenuWidth:I

    .line 55
    .line 56
    iget v0, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuBackground:I

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->initMenu(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->initBody(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private initBody(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v0, Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/BodyContainer;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->disableOverScrollMode(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 23
    .line 24
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    .line 47
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 48
    .line 49
    iget v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 50
    .line 51
    add-int/2addr v2, v4

    .line 52
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Landroid/widget/FrameLayout;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .line 74
    iget v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 75
    .line 76
    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Landroid/widget/ImageView;

    .line 86
    .line 87
    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 91
    .line 92
    iget v4, v4, Lm/framework/ui/widget/slidingmenu/MenuConfig;->rightShadow:I

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    .line 101
    .line 102
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .line 104
    const/4 v5, -0x2

    .line 105
    invoke-direct {v4, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 106
    .line 107
    .line 108
    const/4 v5, 0x5

    .line 109
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Lm/framework/ui/widget/slidingmenu/SlidingMenu$5;

    .line 118
    .line 119
    invoke-direct {v1, p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$5;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 123
    .line 124
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 125
    .line 126
    iget p1, p1, Lm/framework/ui/widget/slidingmenu/MenuConfig;->bodyBackground:I

    .line 127
    .line 128
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    .line 130
    .line 131
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .line 133
    iget v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 134
    .line 135
    invoke-direct {p1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method private initMenu(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$4;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$4;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    .line 10
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Landroid/widget/ScrollView;

    .line 47
    .line 48
    invoke-direct {v2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {v2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->disableOverScrollMode(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    const/high16 v6, 0x3f800000    # 1.0f

    .line 67
    .line 68
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 69
    .line 70
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Landroid/widget/LinearLayout;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    .line 90
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Landroid/view/View;

    .line 102
    .line 103
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    .line 112
    .line 113
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .line 115
    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    .line 122
    .line 123
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method private invalidateMenu()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 11
    .line 12
    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getGroupCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-lt v3, v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 22
    .line 23
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual {v4, v3, v5}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getGroupView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getGroup(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->getCount()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_1
    if-lt v5, v4, :cond_2

    .line 46
    .line 47
    iget-object v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-lez v4, :cond_1

    .line 54
    .line 55
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    add-int/lit8 v4, v4, -0x1

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 66
    .line 67
    invoke-virtual {v6, v3, v5}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iget-object v7, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 72
    .line 73
    iget-object v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-virtual {v7, v6, v8}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getItemView(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iget-object v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 85
    .line 86
    invoke-direct {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getSepView(Landroid/content/Context;)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    iget-object v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->itemToView:Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->ocListener:Landroid/view/View$OnClickListener;

    .line 102
    .line 103
    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->otListener:Landroid/view/View$OnTouchListener;

    .line 107
    .line 108
    invoke-virtual {v7, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 112
    .line 113
    goto :goto_1
.end method

.method private reInit(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 12
    .line 13
    int-to-float v1, v0

    .line 14
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 15
    .line 16
    iget v3, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    .line 17
    .line 18
    mul-float v1, v1, v3

    .line 19
    .line 20
    float-to-int v1, v1

    .line 21
    iput v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    div-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenuWidth:I

    .line 27
    .line 28
    iget v0, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuBackground:I

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInitMenu(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInitBody(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private reInitBody(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 8
    .line 9
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    .line 11
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 30
    .line 31
    iget v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 32
    .line 33
    add-int/2addr v2, v3

    .line 34
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 50
    .line 51
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 63
    .line 64
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    .line 66
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 74
    .line 75
    iget v2, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->bodyBackground:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/ImageView;

    .line 85
    .line 86
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 87
    .line 88
    iget v0, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->rightShadow:I

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    .line 92
    .line 93
    iget-boolean p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 94
    .line 95
    if-nez p1, :cond_0

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    return-void
.end method

.method private reInitMenu(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 8
    .line 9
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    .line 11
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 19
    .line 20
    iget v1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingLeft:I

    .line 21
    .line 22
    iget v2, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingTop:I

    .line 23
    .line 24
    iget v3, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingRight:I

    .line 25
    .line 26
    iget v0, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingBottom:I

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getMenuTitle()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, -0x2

    .line 51
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .line 53
    const/4 v2, -0x1

    .line 54
    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public getBodyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method getMenuConfig()Lm/framework/ui/widget/slidingmenu/MenuConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method getMenuCover()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method getMenuWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 2
    .line 3
    return v0
.end method

.method getShowMenuWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenuWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public hideMenu()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 3
    .line 4
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 5
    .line 6
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 7
    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onMenuSwitch(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public isMenuShown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 2
    .line 3
    return v0
.end method

.method itemToView(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->itemToView:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    return-object p1
.end method

.method public refresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInit(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->invalidateMenu()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setAdapter(Lm/framework/ui/widget/slidingmenu/MenuAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->refresh()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBodyBackground(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->bodyBackground:I

    .line 4
    .line 5
    return-void
.end method

.method public setBodyView(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    .line 2
    .line 3
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setMenuBackground(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuBackground:I

    .line 4
    .line 5
    return-void
.end method

.method public setMenuDivider(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuSep:I

    .line 4
    .line 5
    return-void
.end method

.method public setMenuItemBackground(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->itemDownBack:I

    .line 4
    .line 5
    iput p2, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->itemDownRelease:I

    .line 6
    .line 7
    return-void
.end method

.method public setMenuPadding(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingLeft:I

    .line 4
    .line 5
    iput p2, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingTop:I

    .line 6
    .line 7
    iput p3, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingRight:I

    .line 8
    .line 9
    iput p4, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingBottom:I

    .line 10
    .line 11
    return-void
.end method

.method public setMenuWeight(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    .line 4
    .line 5
    return-void
.end method

.method public setShadowRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->rightShadow:I

    .line 4
    .line 5
    return-void
.end method

.method public setTtleHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    .line 3
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->titleHeight:I

    .line 4
    .line 5
    return-void
.end method

.method public showMenu()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 3
    .line 4
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onMenuSwitch(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public switchMenu()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenu()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public triggerItem(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getMenuItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {p2, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z

    :cond_1
    return-void
.end method

.method public triggerItem(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z

    :cond_1
    return-void
.end method
