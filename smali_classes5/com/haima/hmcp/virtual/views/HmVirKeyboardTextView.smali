.class Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field defHeight:I

.field defInterval:I

.field defWidth:I

.field private mListener:Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;)Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public init(Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;)V
    .locals 6

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->dp2px(ILandroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defWidth:I

    .line 12
    .line 13
    const/16 v0, 0x1c

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->dp2px(ILandroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defHeight:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-static {v1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->dp2px(ILandroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defInterval:I

    .line 35
    .line 36
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    .line 38
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defWidth:I

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->getColumnNum()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    mul-int v2, v2, v3

    .line 45
    .line 46
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defInterval:I

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->getColumnNum()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/lit8 v4, v4, -0x1

    .line 53
    .line 54
    mul-int v3, v3, v4

    .line 55
    .line 56
    add-int/2addr v2, v3

    .line 57
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defHeight:I

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->getRowNum()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    mul-int v3, v3, v4

    .line 64
    .line 65
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defInterval:I

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->getRowNum()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    add-int/lit8 v5, v5, -0x1

    .line 72
    .line 73
    mul-int v4, v4, v5

    .line 74
    .line 75
    add-int/2addr v3, v4

    .line 76
    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->getColumn()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    add-int/lit8 v2, v2, -0x1

    .line 84
    .line 85
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defWidth:I

    .line 86
    .line 87
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defInterval:I

    .line 88
    .line 89
    add-int/2addr v3, v4

    .line 90
    mul-int v2, v2, v3

    .line 91
    .line 92
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->getRow()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 99
    .line 100
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defHeight:I

    .line 101
    .line 102
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->defInterval:I

    .line 103
    .line 104
    add-int/2addr v3, v4

    .line 105
    mul-int v2, v2, v3

    .line 106
    .line 107
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->getKey()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    const/high16 v0, 0x41400000    # 12.0f

    .line 120
    .line 121
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 122
    .line 123
    .line 124
    const/4 v0, -0x1

    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    const/16 v0, 0x11

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    .line 132
    .line 133
    sget v0, Lcom/haima/hmcp/R$drawable;->hm_vir_keyboard_view_bg:I

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView$1;

    .line 139
    .line 140
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView$1;-><init>(Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirKeyboardTextView;->mListener:Lcom/haima/hmcp/virtual/views/HmVirKeyboardLayout$SelectListener;

    .line 2
    .line 3
    return-void
.end method
