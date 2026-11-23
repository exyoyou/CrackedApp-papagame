.class public Lcom/aggmoread/sdk/z/a/v/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/v/a$h;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/aggmoread/sdk/z/a/u/o;

.field private d:Lcom/aggmoread/sdk/z/a/v/a$h;

.field private e:Landroid/widget/PopupWindow;

.field private f:Lcom/aggmoread/sdk/z/a/g/a;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/a/v/a$h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->d:Lcom/aggmoread/sdk/z/a/v/a$h;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v1, "#33333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {p1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/v/a;)Lcom/aggmoread/sdk/z/a/v/a$h;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/v/a;->d:Lcom/aggmoread/sdk/z/a/v/a$h;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->d:Lcom/aggmoread/sdk/z/a/v/a$h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/v/a$h;->onDismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/v/a;->b()V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .line 6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p2, v0, v1}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x800005

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v5, p3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p6, :cond_3

    invoke-direct {p0, p2}, Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 p4, 0x8

    const/4 p6, -0x1

    if-nez p3, :cond_4

    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    new-instance p5, Lcom/aggmoread/sdk/z/a/v/a$f;

    invoke-direct {p5, p0, p3}, Lcom/aggmoread/sdk/z/a/v/a$f;-><init>(Lcom/aggmoread/sdk/z/a/v/a;Landroid/widget/TextView;)V

    invoke-virtual {v5, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    new-instance p3, Lcom/aggmoread/sdk/z/a/u/o;

    invoke-direct {p3, p2}, Lcom/aggmoread/sdk/z/a/u/o;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/aggmoread/sdk/z/a/v/a$g;

    invoke-direct {p1, p0, p3}, Lcom/aggmoread/sdk/z/a/v/a$g;-><init>(Lcom/aggmoread/sdk/z/a/v/a;Lcom/aggmoread/sdk/z/a/u/o;)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/v/a;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 16

    .line 3
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v9, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v11}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v3, "\u5e94\u7528\u4fe1\u606f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v3, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xd

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAABaklEQVRYR+2VP0vEQBDF31tsBfHTWO5saWOjoOefQq5RK0v9AtpZqYVi4X9QCyutJqn8OqK1OLKSwBHPu9wtEoSkTObN/PJ2ZpZo+GHD9dECtA60Dgx1QFUfAMw457re+6c6Y6uqswBOSL6IyMIgzVCALMveAUwC+DCz+RDC46CEqjpH8h7AhJm9hRCmkgBUtUPyEgDN7JPkmohc9UuaZdmymZ2TdADMzFZCCNdJAFEcEwO4iBBF4m4I4aw3saqukzwtYwCs/gbaqxt6BGVwBQIkN733x/F7nucbZnZUxFrd4jG+NkAfJ+Kr7aLowTjFRwaIgorVvW6O9OelcCQHSlEfiNhwP/qizsj+P4BGj6A6CQB2Cpv3/rwJGx3DRhdRnudLZhZX7/cqds4teu/v6qxiAB0RuU1axSmXEYBXEZlOBdg3swWSWyLyXGe243VM8tDMbkIIu0kAdQqmxIy1iFIKVrUtQOtA68AX4HzJIQMvlE8AAAAASUVORK5CYII="

    invoke-static {v14, v2}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v2, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/aggmoread/sdk/z/a/u/o;

    invoke-direct {v2, v8}, Lcom/aggmoread/sdk/z/a/u/o;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v3, 0x4072c00000000000L    # 300.0

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v2, v10, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/RelativeLayout;

    invoke-direct {v15, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xff

    const/16 v4, 0xb

    const/16 v5, 0x5d

    const/16 v6, 0xe6

    const/16 v7, 0x5a

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/view/View;Landroid/content/Context;IIIII)V

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v15, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u7acb\u5373\u4e0b\u8f7d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v11}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v15, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v10, v12}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v14, v0, Lcom/aggmoread/sdk/z/a/v/a;->a:Landroid/view/View;

    iput-object v15, v0, Lcom/aggmoread/sdk/z/a/v/a;->b:Landroid/view/View;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v9, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v11}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v3, "\u5e94\u7528\u4fe1\u606f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v3, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xd

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAABaklEQVRYR+2VP0vEQBDF31tsBfHTWO5saWOjoOefQq5RK0v9AtpZqYVi4X9QCyutJqn8OqK1OLKSwBHPu9wtEoSkTObN/PJ2ZpZo+GHD9dECtA60Dgx1QFUfAMw457re+6c6Y6uqswBOSL6IyMIgzVCALMveAUwC+DCz+RDC46CEqjpH8h7AhJm9hRCmkgBUtUPyEgDN7JPkmohc9UuaZdmymZ2TdADMzFZCCNdJAFEcEwO4iBBF4m4I4aw3saqukzwtYwCs/gbaqxt6BGVwBQIkN733x/F7nucbZnZUxFrd4jG+NkAfJ+Kr7aLowTjFRwaIgorVvW6O9OelcCQHSlEfiNhwP/qizsj+P4BGj6A6CQB2Cpv3/rwJGx3DRhdRnudLZhZX7/cqds4teu/v6qxiAB0RuU1axSmXEYBXEZlOBdg3swWSWyLyXGe243VM8tDMbkIIu0kAdQqmxIy1iFIKVrUtQOtA68AX4HzJIQMvlE8AAAAASUVORK5CYII="

    invoke-static {v14, v2}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v2, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p1}, Lcom/aggmoread/sdk/z/a/v/a;->d(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v3, 0x4072c00000000000L    # 300.0

    invoke-static {v8, v3, v4}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v2, v10, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/RelativeLayout;

    invoke-direct {v15, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xff

    const/16 v4, 0xb

    const/16 v5, 0x5d

    const/16 v6, 0xe6

    const/16 v7, 0x5a

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/view/View;Landroid/content/Context;IIIII)V

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v15, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u7acb\u5373\u4e0b\u8f7d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v11}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v15, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v10, v12}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-static {v8, v1, v2}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v14, v0, Lcom/aggmoread/sdk/z/a/v/a;->a:Landroid/view/View;

    iput-object v15, v0, Lcom/aggmoread/sdk/z/a/v/a;->b:Landroid/view/View;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/v/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/v/a;->a()V

    return-void
.end method

.method private d(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 10

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/g/a;->a:Ljava/lang/String;

    const-string v3, "\u5e94\u7528\u540d\u79f0"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget v0, v0, Lcom/aggmoread/sdk/z/a/g/a;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v0, "%.2f MB"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "\u5927\u5c0f"

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/g/a;->c:Ljava/lang/String;

    const-string v3, "\u7248\u672c"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget-object v4, v0, Lcom/aggmoread/sdk/z/a/g/a;->e:Ljava/lang/String;

    const-string v3, "\u5f00\u53d1\u8005"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget-object v7, v0, Lcom/aggmoread/sdk/z/a/g/a;->g:Ljava/lang/String;

    const-string v3, "\u5e94\u7528\u6743\u9650"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/a;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/g/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aggmoread/sdk/z/a/g/a$a;

    iget-object v3, v2, Lcom/aggmoread/sdk/z/a/g/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/a/g/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "\u5e94\u7528\u6743\u9650"

    const-string v4, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget-object v7, v0, Lcom/aggmoread/sdk/z/a/g/a;->h:Ljava/lang/String;

    const-string v3, "\u9690\u79c1\u653f\u7b56"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s p w webView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/v/a;->c:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",pw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIWTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "spw s "

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    const/16 v2, 0x50

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/aggmoread/sdk/z/a/v/a$e;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/v/a$e;-><init>(Lcom/aggmoread/sdk/z/a/v/a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "S E %s"

    invoke-static {v1, p1, p2}, Lcom/aggmoread/sdk/z/a/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/v/a;->a()V

    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/aggmoread/sdk/z/a/g/a;)V
    .locals 4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIWTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "SPW R"

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/v/a;->f:Lcom/aggmoread/sdk/z/a/g/a;

    iget-object p3, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    if-nez p3, :cond_1

    new-instance p3, Landroid/widget/PopupWindow;

    invoke-direct {p3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->e()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "SAD R"

    invoke-static {v1, p3}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->e()Ljava/lang/String;

    move-result-object p3

    const-string v3, "/api/getSdkAds"

    invoke-virtual {p3, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/v/a;->b(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->c:Lcom/aggmoread/sdk/z/a/u/o;

    new-instance p3, Lcom/aggmoread/sdk/z/a/v/a$a;

    invoke-direct {p3, p0}, Lcom/aggmoread/sdk/z/a/v/a$a;-><init>(Lcom/aggmoread/sdk/z/a/v/a;)V

    invoke-virtual {p1, p3}, Lcom/aggmoread/sdk/z/a/u/o;->a(Lcom/aggmoread/sdk/z/a/u/o$d;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->c:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/v/a;->c(Landroid/content/Context;)V

    :goto_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->a:Landroid/view/View;

    new-instance p2, Lcom/aggmoread/sdk/z/a/v/a$b;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/v/a$b;-><init>(Lcom/aggmoread/sdk/z/a/v/a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->b:Landroid/view/View;

    new-instance p2, Lcom/aggmoread/sdk/z/a/v/a$c;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/v/a$c;-><init>(Lcom/aggmoread/sdk/z/a/v/a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    new-instance p2, Lcom/aggmoread/sdk/z/a/v/a$d;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/v/a$d;-><init>(Lcom/aggmoread/sdk/z/a/v/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "R E %s"

    invoke-static {v1, p1, p2}, Lcom/aggmoread/sdk/z/a/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a;->d:Lcom/aggmoread/sdk/z/a/v/a$h;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/v/a$h;->a()V

    :cond_4
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/v/a;->b()V

    :goto_2
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    const-string v0, "AIWTAG"

    const-string v1, "RLY"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->c:Lcom/aggmoread/sdk/z/a/u/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a;->c:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/v/a;->c:Lcom/aggmoread/sdk/z/a/u/o;

    :cond_0
    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/v/a;->e:Landroid/widget/PopupWindow;

    return-void
.end method
