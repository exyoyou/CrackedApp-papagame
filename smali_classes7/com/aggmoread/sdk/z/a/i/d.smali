.class public Lcom/aggmoread/sdk/z/a/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/i/d$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/aggmoread/sdk/z/a/i/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;D)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x50

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide v5, 0x405b800000000000L    # 110.0

    invoke-static {p1, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    invoke-static {p1, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-static {p1, v2, v5, p2, p3}, Lcom/aggmoread/sdk/z/a/m/b;->b(Landroid/content/Context;IID)Lcom/aggmoread/sdk/z/a/u/t;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide v5, 0x4046800000000000L    # 45.0

    invoke-static {p1, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v2, "#30000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {p1, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    const-string v5, "#30cccccc"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    invoke-static {p1, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const-wide/high16 v5, 0x4039000000000000L    # 25.0

    invoke-static {p1, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    invoke-static {p1, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result p3

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    invoke-static {p1, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {p2, v1, p3, v1, p3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6447\u4e00\u6447 \u6216 \u70b9\u51fb\u6b64\u5904"

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, "\u8df3\u8f6c\u81f3\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "#FFFFF0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41300000    # 11.0f

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 9

    .line 2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-direct {v8, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/high16 v1, 0x4026000000000000L    # 11.0

    invoke-static {p1, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v8, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v3, 0x88

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x14

    const/16 v7, 0x5a

    move-object v1, v8

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/view/View;Landroid/content/Context;IIIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v8, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u70b9\u51fb\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v5, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAA1ElEQVRYR9XXwQ3CMAyF4ecJ6ChsACMwAkwGTMAIsJlRpBx6In7xsyJybZX/kw+ualh8bHEf/wFw9yuAk5nd1BMbTsDdLwBePfxQIyKAI4APgEMFYghoUXcvQ4QAlYgwoApBASoQNECNmAIoEdMAFSIFUCDSgCxCAsgg1IA3gK2v7KeZtY/YzyMB9FVNx5ssDcjE04BsPAVQxKcBqvgUQBmnAeo4BaiIhwFV8RCgMh4FtHV6Z9braP3un4c2Yf8xOUd2OxMPTYC9kH0/NAH2Uub95YAvfduAIVC/ymAAAAAASUVORK5CYII="

    invoke-static {v4, v5}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {p1, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v8

    invoke-static {p1, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {p1, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v1, 0x50

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static a()Lcom/aggmoread/sdk/z/a/i/d;
    .locals 2

    .line 4
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/d;->a:Lcom/aggmoread/sdk/z/a/i/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/aggmoread/sdk/z/a/i/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/z/a/i/d;->a:Lcom/aggmoread/sdk/z/a/i/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/a/i/d;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/a/i/d;-><init>()V

    sput-object v1, Lcom/aggmoread/sdk/z/a/i/d;->a:Lcom/aggmoread/sdk/z/a/i/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/d;->a:Lcom/aggmoread/sdk/z/a/i/d;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x50

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/aggmoread/sdk/z/a/u/e;

    invoke-direct {v1, p1}, Lcom/aggmoread/sdk/z/a/u/e;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v6, 0x4066800000000000L    # 180.0

    invoke-static {p1, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v6

    invoke-direct {v5, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    invoke-static {p1, v7, v8}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u70b9\u51fb\u6309\u94ae"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-static {p1, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, "\u8df3\u8f6c\u81f3\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "#FFFFF0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/aggmoread/sdk/z/a/i/d$a;

    invoke-direct {p1, p0, v1}, Lcom/aggmoread/sdk/z/a/i/d$a;-><init>(Lcom/aggmoread/sdk/z/a/i/d;Lcom/aggmoread/sdk/z/a/u/e;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/a/g/i;Lcom/aggmoread/sdk/z/a/i/e;)Lcom/aggmoread/sdk/z/a/i/d$b;
    .locals 16

    .line 3
    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    const/4 v10, 0x0

    if-eqz v8, :cond_b

    new-instance v11, Lcom/aggmoread/sdk/z/a/i/d$b;

    invoke-direct {v11}, Lcom/aggmoread/sdk/z/a/i/d$b;-><init>()V

    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "#99ffdd"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v13, -0x1

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "#Afd1df"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x8c

    const/16 v4, 0x8c

    const/16 v5, 0x8c

    const/16 v6, 0x8c

    const/4 v7, 0x6

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/view/View;Landroid/content/Context;IIIII)V

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "\u8df3\u8fc7"

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide/high16 v3, 0x4055000000000000L    # 84.0

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    invoke-static {v8, v4, v5}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    invoke-static {v8, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v2, 0x5

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v5, 0x800005

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v12, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v9, :cond_2

    iget v0, v9, Lcom/aggmoread/sdk/z/a/g/i;->a:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/h/a;->e()Lcom/aggmoread/sdk/z/a/g/i;

    move-result-object v0

    iget v0, v0, Lcom/aggmoread/sdk/z/a/g/i;->a:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v9, Lcom/aggmoread/sdk/z/a/g/i;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v5, 0x4045000000000000L    # 42.0

    invoke-static {v5, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/t;->a(D)I

    move-result v5

    invoke-static {v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/t;->a(D)I

    move-result v3

    invoke-direct {v0, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x55

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/t;->a(D)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/t;->a(D)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v12, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/aggmoread/sdk/z/a/i/b;->b:Lcom/aggmoread/sdk/z/a/i/b;

    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/aggmoread/sdk/z/a/i/e;->j()Lcom/aggmoread/sdk/z/a/i/b;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lcom/aggmoread/sdk/z/a/i/e;->o()D

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide v4, v3

    move-object v3, v0

    :try_start_0
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/b;->c:Lcom/aggmoread/sdk/z/a/i/b;

    if-ne v0, v3, :cond_5

    :cond_4
    move-object/from16 v6, p0

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/b;->d:Lcom/aggmoread/sdk/z/a/i/b;

    if-ne v0, v3, :cond_7

    :cond_6
    move-object/from16 v6, p0

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/b;->f:Lcom/aggmoread/sdk/z/a/i/b;

    if-ne v0, v3, :cond_8

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    add-int/2addr v0, v7

    if-eq v0, v7, :cond_4

    const/4 v7, 0x2

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_6

    goto :goto_4

    :goto_2
    :try_start_1
    invoke-direct {v6, v8, v4, v5}, Lcom/aggmoread/sdk/z/a/i/d;->a(Landroid/content/Context;D)Landroid/view/View;

    move-result-object v10

    goto :goto_6

    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/aggmoread/sdk/z/a/i/d;->b(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v6, p0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v6, p0

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ck err "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :goto_6
    if-nez v10, :cond_9

    sget-object v0, Lcom/aggmoread/sdk/z/a/i/b;->b:Lcom/aggmoread/sdk/z/a/i/b;

    if-eq v3, v0, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/aggmoread/sdk/z/a/i/d;->a(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v10

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    iput-object v12, v11, Lcom/aggmoread/sdk/z/a/i/d$b;->a:Landroid/widget/FrameLayout;

    iput-object v14, v11, Lcom/aggmoread/sdk/z/a/i/d$b;->b:Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/aggmoread/sdk/z/a/i/d$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object v15, v11, Lcom/aggmoread/sdk/z/a/i/d$b;->d:Landroid/widget/TextView;

    iput-object v10, v11, Lcom/aggmoread/sdk/z/a/i/d$b;->e:Landroid/view/View;

    return-object v11

    :cond_b
    move-object/from16 v6, p0

    return-object v10
.end method

.method public a(Lcom/aggmoread/sdk/z/a/i/b;)Z
    .locals 1

    .line 5
    sget-object v0, Lcom/aggmoread/sdk/z/a/i/b;->c:Lcom/aggmoread/sdk/z/a/i/b;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/aggmoread/sdk/z/a/i/b;->d:Lcom/aggmoread/sdk/z/a/i/b;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/aggmoread/sdk/z/a/i/b;->f:Lcom/aggmoread/sdk/z/a/i/b;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
