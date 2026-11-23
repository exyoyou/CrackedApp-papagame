.class public Lcom/aggmoread/sdk/z/a/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/u/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/o/a$j;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/aggmoread/sdk/z/a/u/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aggmoread/sdk/z/a/u/g<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/aggmoread/sdk/z/a/g/h;

.field private d:Lcom/aggmoread/sdk/z/a/o/a$j;

.field private e:Lcom/aggmoread/sdk/z/a/s/a;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/g/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/o/a;->c:Lcom/aggmoread/sdk/z/a/g/h;

    return-object p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/o/a;Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f;
    .locals 1

    .line 3
    new-instance v0, Lcom/aggmoread/sdk/z/a/o/a$f;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/o/a$f;-><init>(Lcom/aggmoread/sdk/z/a/o/a;)V

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/f$j;)V

    new-instance v0, Lcom/aggmoread/sdk/z/a/o/a$g;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/o/a$g;-><init>(Lcom/aggmoread/sdk/z/a/o/a;)V

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v0, Lcom/aggmoread/sdk/z/a/o/a$h;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/o/a$h;-><init>(Lcom/aggmoread/sdk/z/a/o/a;)V

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v0, Lcom/aggmoread/sdk/z/a/o/a$i;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/o/a$i;-><init>(Lcom/aggmoread/sdk/z/a/o/a;)V

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/o/a;Lcom/aggmoread/sdk/z/a/t/f;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/t/f;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/aggmoread/sdk/z/a/t/f;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/o/a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/o/a;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/o/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private d()Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "#50000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lcom/aggmoread/sdk/z/a/o/a$a;

    iget-object v3, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v2, v0, v3}, Lcom/aggmoread/sdk/z/a/o/a$a;-><init>(Lcom/aggmoread/sdk/z/a/o/a;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    const-wide v4, 0x4072c00000000000L    # 300.0

    invoke-static {v3, v4, v5}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    const-wide v5, 0x407f400000000000L    # 500.0

    invoke-static {v4, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    invoke-static {v4, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    const/high16 v7, -0x1000000

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {v7, v8, v4, v9, v9}, Lcom/aggmoread/sdk/z/a/m/b;->a(IFIII)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, v0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Lcom/aggmoread/sdk/z/a/u/g;

    iget-object v13, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v11, v13}, Lcom/aggmoread/sdk/z/a/u/g;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    iget-object v11, v0, Lcom/aggmoread/sdk/z/a/o/a;->c:Lcom/aggmoread/sdk/z/a/g/h;

    const/4 v13, -0x2

    if-eqz v11, :cond_1

    iget-object v11, v11, Lcom/aggmoread/sdk/z/a/g/h;->b:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    new-instance v4, Lcom/aggmoread/sdk/z/a/t/f;

    iget-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v4, v10}, Lcom/aggmoread/sdk/z/a/t/f;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v11, v0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v11, v4, v10}, Lcom/aggmoread/sdk/z/a/u/g;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->h:Landroid/widget/ImageView;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->h:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->c:Lcom/aggmoread/sdk/z/a/g/h;

    if-eqz v10, :cond_0

    iget-object v10, v10, Lcom/aggmoread/sdk/z/a/g/h;->g:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_0

    iget-object v14, v0, Lcom/aggmoread/sdk/z/a/o/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    iget-object v14, v0, Lcom/aggmoread/sdk/z/a/o/a;->h:Landroid/widget/ImageView;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v15, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    iget-object v14, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v10, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->i:Landroid/widget/TextView;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->i:Landroid/widget/TextView;

    const-string v14, "\u70b9\u51fb\u53ef\u64ad\u653e\u89c6\u9891"

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x51

    iput v14, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v14, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    invoke-static {v14, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    iput v5, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, v0, Lcom/aggmoread/sdk/z/a/o/a;->i:Landroid/widget/TextView;

    new-instance v6, Lcom/aggmoread/sdk/z/a/o/a$b;

    invoke-direct {v6, v0, v4}, Lcom/aggmoread/sdk/z/a/o/a$b;-><init>(Lcom/aggmoread/sdk/z/a/o/a;Lcom/aggmoread/sdk/z/a/t/f;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    iget-object v5, v0, Lcom/aggmoread/sdk/z/a/o/a;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/aggmoread/sdk/z/c/a/a/e/n;

    iget-object v6, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/n;-><init>(Landroid/content/Context;)V

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/n;->a(F)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v4, v5}, Lcom/aggmoread/sdk/z/a/u/g;->a(Landroid/view/View;)V

    :goto_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, v0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    iget-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    invoke-static {v10, v11, v12}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v10, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    const-string v10, "\u67e5\u770b\u8be6\u60c5"

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    const-string v10, "#ffffff"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    const/high16 v10, 0x41700000    # 15.0f

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    const-string v3, "#0a81fc"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    invoke-static {v4, v10, v11}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    invoke-static {v3, v8, v4, v9, v9}, Lcom/aggmoread/sdk/z/a/m/b;->a(IFIII)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    invoke-static {v4, v8, v9}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iget-object v5, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-static {v5, v8, v9}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x35

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-static {v4, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-static {v4, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAmZJREFUWEfVlzloFmEQhp+30FIQQVAUBK9ORLQQDyKS1IKaWkjpFQUbU6igQbTQJJYGe2PAq9LCI9opqJ0HaCEKKe3ldT+ZHzabvRIDiwvbfNc8O/POzLei40cd2+f/ArC9ExgA+oG1wJrw4E/gB3APmJH0oa1nW3nA9j7gNHC4cPA34DewsTA+DYxJmmkCaQSwfQU4Hwe9A14Bb4HnkhIAttcBu+M9CGyL9ROSTtVB1ALYTsb2xAHXgcuSftUdaHs1cAs4Guu+SNpctacSwPZnYFNsHJD0tMmd+XnbKWQ3Y+y1pL1l+0sBbI8DJ9MGSY1havCIY35U0khx7bzDQ3AvY+GwpLGFfHlxre2UMU9ifH9RmGUAKZWS2qckDfYOtN2XCa8vc8jFhi8eBu73BBoivQacA6YlHcnvnwNgO6n3PZDyuF/SbA4gGb5QBCvE/W6I71Ie1PYK4EUGth3YJelNb18R4Hgo+Eam9rMl7uwZmOOd+MrKuZifAE4AI5JGqwCeJTcDg5Kmylxte56hsrES+GPAnagfB6oAPgJbgPWSvlfFOm8w1qScn+eVQng2AF+BT5K2VgGkIjMrqZf/lXrLQaQ1tcZzOkoAqyQlTfx9ihroHGAxIVgGHGrygu1WIViwCG0vBx5Fm64Mhe1WIlxUGtpeCTwEUr0vhbDdKg3rCtEQcLvGQGrJDzKQHcAZSb1GlNp1u0IUBaO0FMfckKTJmvRM6XU1S+NJSY9z6m9XisNIuv1014wCort2nHNbdxeSHER3V7IcRHeX0hxEd9fyQkfr5seksiUuwcQ/3XiXwH73P6d/AMNtZjBWZp4QAAAAAElFTkSuQmCC"

    invoke-static {v2, v3}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v3, Lcom/aggmoread/sdk/z/a/o/a$c;

    invoke-direct {v3, v0}, Lcom/aggmoread/sdk/z/a/o/a$c;-><init>(Lcom/aggmoread/sdk/z/a/o/a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :try_start_0
    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/a/h/a;->e()Lcom/aggmoread/sdk/z/a/g/i;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v4, v2, Lcom/aggmoread/sdk/z/a/g/i;->a:I

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/a/h/a;->e()Lcom/aggmoread/sdk/z/a/g/i;

    move-result-object v2

    iget v2, v2, Lcom/aggmoread/sdk/z/a/g/i;->a:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/g/i;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x33

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    iget-object v2, v0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    new-instance v4, Lcom/aggmoread/sdk/z/a/o/a$d;

    invoke-direct {v4, v0}, Lcom/aggmoread/sdk/z/a/o/a$d;-><init>(Lcom/aggmoread/sdk/z/a/o/a;)V

    invoke-static {v2, v3, v4}, Lcom/aggmoread/sdk/z/a/s/a;->a(Landroid/view/View;Landroid/view/View;Lcom/aggmoread/sdk/z/a/s/a$a;)Lcom/aggmoread/sdk/z/a/s/a;

    move-result-object v2

    iput-object v2, v0, Lcom/aggmoread/sdk/z/a/o/a;->e:Lcom/aggmoread/sdk/z/a/s/a;

    iget-object v2, v0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/o/a$j;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/o/a;->d:Lcom/aggmoread/sdk/z/a/o/a$j;

    return-object p0
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/u/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->d:Lcom/aggmoread/sdk/z/a/o/a$j;

    if-eqz v0, :cond_0

    const v1, 0xc356

    const-string v2, "\u7d20\u6750\u52a0\u8f7d\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/o/a$j;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/s/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/o/a;->e:Lcom/aggmoread/sdk/z/a/s/a;

    return-object p0
.end method

.method private f()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->c:Lcom/aggmoread/sdk/z/a/g/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/g;->a()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->c:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/h;->a:Ljava/lang/String;

    new-instance v1, Lcom/aggmoread/sdk/z/a/o/a$e;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/o/a$e;-><init>(Lcom/aggmoread/sdk/z/a/o/a;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/aggmoread/sdk/z/a/p/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/a/p/a$g;)V

    goto :goto_2

    :cond_0
    instance-of v1, v0, Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/h/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/p/e;->c(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/aggmoread/sdk/z/a/t/f;

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a;->c:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/g/h;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/t/f;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->d:Lcom/aggmoread/sdk/z/a/o/a$j;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a;->e:Lcom/aggmoread/sdk/z/a/s/a;

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/a/o/a$j;->a(Lcom/aggmoread/sdk/z/a/s/a;)V

    :cond_4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/o/a;->c:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v4, v2, Lcom/aggmoread/sdk/z/a/g/h;->f:Lcom/aggmoread/sdk/z/a/i/b;

    iget-wide v5, v2, Lcom/aggmoread/sdk/z/a/g/h;->h:D

    invoke-static {v0, v1, v4, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/a/i/b;D)Lcom/aggmoread/sdk/z/a/u/q;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a;->e:Lcom/aggmoread/sdk/z/a/s/a;

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/a/s/a;->a(Lcom/aggmoread/sdk/z/a/u/q;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/a;->e()V

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/a/o/a;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/a/o/a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/o/a;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/aggmoread/sdk/z/a/o/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/a;->e()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .line 5
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 6
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/a;->f()V

    :cond_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/g/h;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a;->c:Lcom/aggmoread/sdk/z/a/g/h;

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/o/a$j;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a;->d:Lcom/aggmoread/sdk/z/a/o/a$j;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 12
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/a/o/a;->a(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->a:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/g;->a()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/g;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->q()V

    :cond_1
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/g;->a()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a;->b:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/g;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    :cond_0
    return-void
.end method
