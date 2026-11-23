.class public Lcom/join/android/app/component/album/a;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/album/a$e;
    }
.end annotation


# static fields
.field public static f:Lcom/join/android/app/component/album/a$e;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/join/android/app/component/album/lib/b;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IILcom/join/android/app/component/album/lib/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "width",
            "height",
            "mScaner"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/join/android/app/component/album/a;->b:Landroid/view/View;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/android/app/component/album/a;->d:Lcom/join/android/app/component/album/lib/b;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/android/app/component/album/a;->e()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/android/app/component/album/a;->g()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/join/android/app/component/album/a;->d()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/album/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/component/album/a;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    .line 2
    .line 3
    return-object p0
.end method

.method private d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->b:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a0e84

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ListView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->b:Landroid/view/View;

    .line 15
    .line 16
    const v1, 0x7f0a0fee

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/join/android/app/component/album/a$a;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/a$a;-><init>(Lcom/join/android/app/component/album/a;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .line 39
    iget v1, p0, Lcom/join/android/app/component/album/a;->e:I

    .line 40
    .line 41
    int-to-double v1, v1

    .line 42
    const-wide v3, 0x3fe3333333333333L    # 0.6

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    mul-double v1, v1, v3

    .line 48
    .line 49
    double-to-int v1, v1

    .line 50
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->d:Lcom/join/android/app/component/album/lib/b;

    .line 53
    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    new-instance v0, Lcom/join/android/app/component/album/lib/b;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    .line 59
    .line 60
    invoke-direct {v0, v1}, Lcom/join/android/app/component/album/lib/b;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/android/app/component/album/a;->d:Lcom/join/android/app/component/album/lib/b;

    .line 64
    .line 65
    new-instance v1, Lcom/join/android/app/component/album/a$b;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/a$b;-><init>(Lcom/join/android/app/component/album/a;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/b;->l(Lcom/join/android/app/component/album/lib/b$g;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/join/android/app/component/album/lib/b;->f()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lcom/join/android/app/component/album/adapter/a;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    .line 81
    .line 82
    invoke-direct {v1, v2, v0}, Lcom/join/android/app/component/album/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    .line 94
    .line 95
    new-instance v2, Lcom/join/android/app/component/album/a$c;

    .line 96
    .line 97
    invoke-direct {v2, p0, v0}, Lcom/join/android/app/component/album/a$c;-><init>(Lcom/join/android/app/component/album/a;Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/join/android/app/component/album/a;->c()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/android/app/component/album/a;->a:Landroid/content/Context;

    .line 7
    .line 8
    check-cast v1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    .line 20
    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 22
    .line 23
    iput v0, p0, Lcom/join/android/app/component/album/a;->e:I

    .line 24
    .line 25
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/join/android/app/component/album/a$d;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/a$d;-><init>(Lcom/join/android/app/component/album/a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public f(Lcom/join/android/app/component/album/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    sput-object p1, Lcom/join/android/app/component/album/a;->f:Lcom/join/android/app/component/album/a$e;

    .line 2
    .line 3
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/a;->d:Lcom/join/android/app/component/album/lib/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/album/lib/b;->f()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/album/a;->c:Landroid/widget/ListView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/android/app/component/album/adapter/a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/album/adapter/a;->c(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
