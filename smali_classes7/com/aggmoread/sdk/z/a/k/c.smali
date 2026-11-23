.class public Lcom/aggmoread/sdk/z/a/k/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/k/c$k;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected e:Lcom/aggmoread/sdk/z/a/s/a;

.field private f:Landroid/content/Context;

.field private g:Lcom/aggmoread/sdk/z/a/u/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aggmoread/sdk/z/a/u/g<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Landroid/view/ViewGroup;

.field private i:Lcom/aggmoread/sdk/z/a/g/h;

.field private j:Lcom/aggmoread/sdk/z/a/k/c$k;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->m:Z

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 8

    .line 2
    new-instance v0, Lcom/aggmoread/sdk/z/a/k/c$a;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/a/k/c$a;-><init>(Lcom/aggmoread/sdk/z/a/k/c;Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v5, 0x4056800000000000L    # 90.0

    invoke-static {p1, v5, v6}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-direct {v4, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/aggmoread/sdk/z/a/u/g;

    invoke-direct {v4, p1}, Lcom/aggmoread/sdk/z/a/u/g;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/aggmoread/sdk/z/a/k/c;->g:Lcom/aggmoread/sdk/z/a/u/g;

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/k/c;->g:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v5, v4}, Lcom/aggmoread/sdk/z/a/u/g;->a(Landroid/view/View;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v7, p0, Lcom/aggmoread/sdk/z/a/k/c;->g:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/k/c;->g:Lcom/aggmoread/sdk/z/a/u/g;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aggmoread/sdk/z/a/k/c;->b:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {p1, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/aggmoread/sdk/z/a/k/c;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/k/c;->b:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/k/c;->b:Landroid/widget/TextView;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/k/c;->b:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/k/c;->b:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/k/c;->b:Landroid/widget/TextView;

    const-string v6, "\u5e7f\u544a\u8be6\u7ec6\u4fe1\u606f\u5e7f\u544a\u8be6\u7ec6\u4fe1\u606f\u5e7f\u544a\u8be6\u7ec6\u4fe1\u606f\u5e7f\u544a\u8be6\u7ec6\u4fe1\u606f\u5e7f\u544a\u8be6\u7ec6\u4fe1\u606f"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/k/c;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aggmoread/sdk/z/a/k/c;->a:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {p1, v6, v7}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->a:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->a:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->a:Landroid/widget/TextView;

    const-string v2, "#8a8a8a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->a:Landroid/widget/TextView;

    const-string v2, "\u5e7f\u544a\u6807\u9898\u4fe1\u606f\u5e7f\u544a\u6807\u9898\u4fe1\u606f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result p1

    invoke-direct {v1, v4, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x55

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c;->c:Landroid/widget/ImageView;

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAe9JREFUOE+lk79rVEEQx2du94GdhYlgdxCbiNjGJipJIYIIASuxiNhoYSnHO3Yfw5vlHsHKykpiYZeQgAiSIuKPJoJYKGIViFUK9Q+Q9+ZG97g9ngeK6LYz82H3O59F+M+D0/NE1BWR2wAwDwCXxvVnAPDJGPOAiA7aM78AvPerAPAQEa/Wdf2qqqpvsTnP82NZlp1T1U0AuMnMjxJkAvDeL6rqcgiB/vQq5xwh4i4zv459IwARzYjIITNnzrklAPgcQthvg/I8P2WMOR5CeOG9r40xJ4jo6wjgvb+nqi9DCE/7/f5pY8wHVT2ZIM65OQDYQsRrzPzROXcZEc8z890E2Gma5npVVV8isA2x1n4XkS0RuTUYDN6NM5m11j5m5osJ0DCzbV+5BXlrrb1DRHvtuvd+NJMAdXx/u6HX6x3NsmwHERfaz0k9MYc4kwBPmqa5kdZGREdEZBMR7zdNczidSVyrtXadma8kwBoi7pVluU1EHRHZUNX1GOp0JjHYoihWVPUsM/fSGrvD4XC/LEvjnLsAADMhhCjN5MRMrLXzZVluFEUhnU5nLlrZFmlVVbt/KdJBsnFa5UUAeK6qKyLyJq01z/NZY8wCIm4DwFKycGJi+6pjK3s/xTkDAMvj2i4AvDfGrEX7fvuZ/uVn/wBrwwgg6o7CmAAAAABJRU5ErkJggg=="

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :try_start_0
    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/h/a;->e()Lcom/aggmoread/sdk/z/a/g/i;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/k/c;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v2, p1, Lcom/aggmoread/sdk/z/a/g/i;->a:I

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/h/a;->e()Lcom/aggmoread/sdk/z/a/g/i;

    move-result-object p1

    iget p1, p1, Lcom/aggmoread/sdk/z/a/g/i;->a:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/aggmoread/sdk/z/a/g/i;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x35

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->d:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->g:Lcom/aggmoread/sdk/z/a/u/g;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->i:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v2, v1, Lcom/aggmoread/sdk/z/a/g/h;->f:Lcom/aggmoread/sdk/z/a/i/b;

    iget-wide v3, v1, Lcom/aggmoread/sdk/z/a/g/h;->h:D

    invoke-static {p1, v0, v2, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/a/i/b;D)Lcom/aggmoread/sdk/z/a/u/q;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->e:Lcom/aggmoread/sdk/z/a/s/a;

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/s/a;->a(Lcom/aggmoread/sdk/z/a/u/q;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/a/m/p;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/aggmoread/sdk/z/a/k/c$h;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/k/c$h;-><init>(Lcom/aggmoread/sdk/z/a/k/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/k/c;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/k/c;->f()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/k/c;Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/k/c;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/k/c;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/k/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/aggmoread/sdk/z/a/m/p;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/a/k/c$f;

    invoke-direct {v1, p0, p1}, Lcom/aggmoread/sdk/z/a/k/c$f;-><init>(Lcom/aggmoread/sdk/z/a/k/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/k/c;)Lcom/aggmoread/sdk/z/a/u/g;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/k/c;->g:Lcom/aggmoread/sdk/z/a/u/g;

    return-object p0
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/k/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/k/c;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->m:Z

    invoke-static {}, Lcom/aggmoread/sdk/z/a/m/p;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/a/k/c$g;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/k/c$g;-><init>(Lcom/aggmoread/sdk/z/a/k/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/k/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/k/c;->e()V

    return-void
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/k/c;)Lcom/aggmoread/sdk/z/a/k/c$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/k/c;->j:Lcom/aggmoread/sdk/z/a/k/c$k;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/aggmoread/sdk/z/a/m/p;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/a/k/c$i;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/k/c$i;-><init>(Lcom/aggmoread/sdk/z/a/k/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/k/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/k/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/aggmoread/sdk/z/a/m/p;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/a/k/c$j;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/k/c$j;-><init>(Lcom/aggmoread/sdk/z/a/k/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/k/c;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    new-instance v1, Lcom/aggmoread/sdk/z/a/k/c$e;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/k/c$e;-><init>(Lcom/aggmoread/sdk/z/a/k/c;)V

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/s/a;->a(Landroid/view/View;Lcom/aggmoread/sdk/z/a/s/a$a;)Lcom/aggmoread/sdk/z/a/s/a;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->e:Lcom/aggmoread/sdk/z/a/s/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(Lcom/aggmoread/sdk/z/a/g/h;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c;->i:Lcom/aggmoread/sdk/z/a/g/h;

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/k/c$k;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c;->j:Lcom/aggmoread/sdk/z/a/k/c$k;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->d:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->d:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->d:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->i:Lcom/aggmoread/sdk/z/a/g/h;

    if-nez v0, :cond_1

    const-string v0, "\u5e7f\u544a\u7d20\u6750\u4e3a\u7a7a!"

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/k/c;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/k/c;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    :cond_2
    new-instance v0, Lcom/aggmoread/sdk/z/a/k/c$b;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/k/c$b;-><init>(Lcom/aggmoread/sdk/z/a/k/c;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->d:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->d:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->i:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/h;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->i:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/g/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->i:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/h;->e:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->i:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/g/h;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->i:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/h;->d:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/aggmoread/sdk/z/a/k/c$c;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/k/c$c;-><init>(Lcom/aggmoread/sdk/z/a/k/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->i:Lcom/aggmoread/sdk/z/a/g/h;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/h;->a:Ljava/lang/String;

    new-instance v1, Lcom/aggmoread/sdk/z/a/k/c$d;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/k/c$d;-><init>(Lcom/aggmoread/sdk/z/a/k/c;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/aggmoread/sdk/z/a/p/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/a/p/a$g;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c;->h:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/k/c;->a(Landroid/view/View;)V

    return-void
.end method
