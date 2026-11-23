.class public Lcom/haima/hmcp/widgets/InputEditLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEditLayout"


# instance fields
.field private confirmBtn:Landroid/widget/Button;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

.field private relativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, -0x2

    .line 15
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/InputEditLayout;->generateLinearLayout(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/InputEditLayout;->generateScrollView(Landroid/content/Context;)Landroid/widget/ScrollView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/InputEditLayout;->generateEditTextPreIme(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/InputEditLayout;->generateButton(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->confirmBtn:Landroid/widget/Button;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    .line 53
    invoke-direct {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    const/16 v0, 0xc

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private generateButton(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/Button;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->confirmBtn:Landroid/widget/Button;

    .line 7
    .line 8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    const/16 v1, 0x64

    .line 11
    .line 12
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x2d

    .line 17
    .line 18
    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 32
    .line 33
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 38
    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->confirmBtn:Landroid/widget/Button;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->confirmBtn:Landroid/widget/Button;

    .line 45
    .line 46
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_input_send_btn_bg:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->confirmBtn:Landroid/widget/Button;

    .line 64
    .line 65
    const/16 v1, 0x11

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->confirmBtn:Landroid/widget/Button;

    .line 71
    .line 72
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_send:I

    .line 73
    .line 74
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->confirmBtn:Landroid/widget/Button;

    .line 82
    .line 83
    const/high16 v1, -0x1000000

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->confirmBtn:Landroid/widget/Button;

    .line 89
    .line 90
    const/4 v1, 0x6

    .line 91
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->sp2px(Landroid/content/Context;I)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    int-to-float p1, p1

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private generateEditTextPreIme(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 7
    .line 8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 22
    .line 23
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget v3, Lcom/haima/hmcp/R$drawable;->hm_input_et_bg:I

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 47
    .line 48
    const/16 v3, 0x10

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 54
    .line 55
    const v3, 0x10000004

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 62
    .line 63
    const v3, 0x10001

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 75
    .line 76
    const/4 v3, 0x5

    .line 77
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 102
    .line 103
    const/high16 v3, -0x1000000

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 111
    .line 112
    .line 113
    const/16 v1, 0x1d

    .line 114
    .line 115
    if-lt v0, v1, :cond_0

    .line 116
    .line 117
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 118
    .line 119
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_input_et_cursor:I

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/g0;->a(Lcom/haima/hmcp/widgets/view/EditTextPreIme;Landroid/graphics/drawable/Drawable;)V

    .line 134
    .line 135
    .line 136
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 137
    .line 138
    const/16 v1, 0xa

    .line 139
    .line 140
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->sp2px(Landroid/content/Context;I)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    int-to-float p1, p1

    .line 145
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method private generateLinearLayout(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    const/16 v1, 0x10

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    const/16 v1, 0x3c

    .line 31
    .line 32
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, -0x1

    .line 37
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    const v1, -0x77000001

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    const/4 v1, 0x5

    .line 56
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private generateScrollView(Landroid/content/Context;)Landroid/widget/ScrollView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ScrollView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    .line 8
    const/16 v2, 0x32

    .line 9
    .line 10
    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/DisplayUtil;->dp2px(Landroid/content/Context;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v3, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method


# virtual methods
.method public getConfirmBtn()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->confirmBtn:Landroid/widget/Button;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLinearLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessageTextView()Lcom/haima/hmcp/widgets/view/EditTextPreIme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRelativeLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditLayout;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object v0
.end method
