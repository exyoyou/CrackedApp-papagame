.class public Lcom/haima/hmcp/utils/ToastUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DURATION:I = 0x0

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DEFAULT_TEXT_SIZE_SP:I = 0x10

.field private static final LAYOUT_HEIGHT_DP:I = 0x30

.field private static final LAYOUT_WIDTH_DP:I = 0x88

.field private static final PADDING_HORIZONTAL_DP:I = 0x24

.field private static final PADDING_VERTICAL_DP:I = 0xc

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cancelCurrentToast()V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/haima/hmcp/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static createToastLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_custom_toast_bg:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 18
    .line 19
    .line 20
    const/high16 v1, 0x43080000    # 136.0f

    .line 21
    .line 22
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/ToastUtil;->dp2px(Landroid/content/Context;F)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/high16 v2, 0x42400000    # 48.0f

    .line 27
    .line 28
    invoke-static {p0, v2}, Lcom/haima/hmcp/utils/ToastUtil;->dp2px(Landroid/content/Context;F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    .line 34
    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    const/high16 v1, 0x42100000    # 36.0f

    .line 41
    .line 42
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/ToastUtil;->dp2px(Landroid/content/Context;F)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/high16 v2, 0x41400000    # 12.0f

    .line 47
    .line 48
    invoke-static {p0, v2}, Lcom/haima/hmcp/utils/ToastUtil;->dp2px(Landroid/content/Context;F)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-virtual {v0, v1, p0, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method private static createToastTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    .line 12
    .line 13
    const/high16 p0, 0x41800000    # 16.0f

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16
    .line 17
    .line 18
    const/16 p0, 0x11

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private static dp2px(Landroid/content/Context;F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    float-to-int p0, p0

    .line 19
    return p0
.end method

.method private static showCustomToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/ToastUtil;->createToastLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/ToastUtil;->createToastTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/widget/Toast;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object p1, Lcom/haima/hmcp/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/haima/hmcp/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lcom/haima/hmcp/utils/ToastUtil;->sToast:Landroid/widget/Toast;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/haima/hmcp/utils/ToastUtil;->cancelCurrentToast()V

    .line 3
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/ToastUtil;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
