.class public Lcom/join/mgps/customview/a0;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/a0$d;,
        Lcom/join/mgps/customview/a0$e;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field public c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/widget/ListView;

.field f:Landroid/widget/BaseAdapter;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;

.field i:Lcom/join/mgps/customview/a0$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/a0;->g:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/a0;->a:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/a0;->l()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/a0;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "width",
            "height"
        }
    .end annotation

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/customview/a0;->g:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/customview/a0;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/join/mgps/customview/a0;->b:Landroid/view/View;

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/a0;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/customview/a0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/customview/a0;->j(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/customview/a0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/a0;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/a0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/a0;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/a0;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic j(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/a0;->dismiss()V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/customview/a0;->i:Lcom/join/mgps/customview/a0$d;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lcom/join/mgps/customview/a0$d;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    const v0, 0x7f130543

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/customview/a0$a;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/a0$a;-><init>(Lcom/join/mgps/customview/a0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->a:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f010093

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 11
    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const v3, 0x3dcccccd    # 0.1f

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x64

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/customview/a0;->e:Landroid/widget/ListView;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->d:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/customview/a0$c;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/a0$c;-><init>(Lcom/join/mgps/customview/a0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->a:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f010091

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 11
    .line 12
    const v2, 0x3dcccccd    # 0.1f

    .line 13
    .line 14
    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x96

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/customview/a0;->e:Landroid/widget/ListView;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->d:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->a:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f010093

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 11
    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const v3, 0x3dcccccd    # 0.1f

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x96

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/customview/a0;->e:Landroid/widget/ListView;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->d:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public g()Lcom/join/mgps/customview/a0$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->i:Lcom/join/mgps/customview/a0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07ed

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/customview/a0;->b:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, -0x2

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->b:Landroid/view/View;

    .line 32
    .line 33
    const v1, 0x7f0a0e84

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/ListView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/join/mgps/customview/a0;->e:Landroid/widget/ListView;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->b:Landroid/view/View;

    .line 45
    .line 46
    const v1, 0x7f0a0200

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/join/mgps/customview/a0;->d:Landroid/view/View;

    .line 54
    .line 55
    new-instance v1, Lcom/join/mgps/customview/y;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/y;-><init>(Lcom/join/mgps/customview/a0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/join/mgps/customview/a0$b;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/a0$b;-><init>(Lcom/join/mgps/customview/a0;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/join/mgps/customview/a0;->f:Landroid/widget/BaseAdapter;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/customview/a0;->e:Landroid/widget/ListView;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->e:Landroid/widget/ListView;

    .line 76
    .line 77
    new-instance v1, Lcom/join/mgps/customview/z;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/z;-><init>(Lcom/join/mgps/customview/a0;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public k(Lcom/join/mgps/customview/a0$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFilterItemClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/a0;->i:Lcom/join/mgps/customview/a0$d;

    .line 2
    .line 3
    return-void
.end method

.method public m(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "items",
            "current"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/a0;->showAsDropDown(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->g:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->g:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->f:Landroid/widget/BaseAdapter;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Lcom/join/mgps/customview/a0;->h:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/a0;->c:Landroid/view/View;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/a0;->c:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/customview/a0;->c:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30
    .line 31
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    sub-int/2addr v1, v0

    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/customview/a0;->e()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "gravity",
            "x",
            "y"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/a0;->c:Landroid/view/View;

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
