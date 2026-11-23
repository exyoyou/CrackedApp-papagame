.class public Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

.field private root:Landroid/widget/FrameLayout;

.field private secondRoot:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->root:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->secondRoot:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    .line 29
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 42
    .line 43
    const/high16 v4, 0x43620000    # 226.0f

    .line 44
    .line 45
    mul-float v3, v3, v4

    .line 46
    .line 47
    float-to-int v3, v3

    .line 48
    const/16 v4, 0x50

    .line 49
    .line 50
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->secondRoot:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    const/high16 v1, 0x77000000

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->root:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->secondRoot:Landroid/widget/FrameLayout;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 76
    .line 77
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    .line 79
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 92
    .line 93
    const/high16 v2, 0x441d0000    # 628.0f

    .line 94
    .line 95
    mul-float v1, v1, v2

    .line 96
    .line 97
    float-to-int v1, v1

    .line 98
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 111
    .line 112
    const/high16 v3, 0x43320000    # 178.0f

    .line 113
    .line 114
    mul-float v2, v2, v3

    .line 115
    .line 116
    float-to-int v2, v2

    .line 117
    const/16 v3, 0x11

    .line 118
    .line 119
    invoke-direct {p1, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->secondRoot:Landroid/widget/FrameLayout;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public getFullKeyboardLayout()Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->root:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecondRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBLayout;->secondRoot:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method
