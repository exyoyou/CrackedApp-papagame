.class Lcom/join/mgps/activity/label/MainLabelActivity$h;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/label/MainLabelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Landroid/widget/RadioGroup;

.field d:Landroid/widget/RadioButton;

.field e:Landroid/widget/RadioButton;

.field f:Landroid/widget/RadioButton;

.field final synthetic g:Lcom/join/mgps/activity/label/MainLabelActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/label/MainLabelActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/label/MainLabelActivity;Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "mContext",
            "width",
            "height"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 6
    invoke-direct {p0, p3, p4}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 7
    iput-object p2, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/label/MainLabelActivity$h;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->d(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/activity/label/MainLabelActivity$h;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic d(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    const p1, 0x7f0a12fd

    .line 2
    .line 3
    .line 4
    if-ne p2, p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity;->sortLabelListByOrder(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const p1, 0x7f0a12fe

    .line 15
    .line 16
    .line 17
    if-ne p2, p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 20
    .line 21
    const-string p2, "new"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity;->sortLabelListByOrder(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const p1, 0x7f0a12fc

    .line 28
    .line 29
    .line 30
    if-ne p2, p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->g:Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 33
    .line 34
    const-string p2, "hot"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/label/MainLabelActivity;->sortLabelListByOrder(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderBy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "new"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c:Landroid/widget/RadioGroup;

    .line 12
    .line 13
    const v0, 0x7f0a12fe

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->b:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "hot"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c:Landroid/widget/RadioGroup;

    .line 31
    .line 32
    const v0, 0x7f0a12fc

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c:Landroid/widget/RadioGroup;

    .line 40
    .line 41
    const v0, 0x7f0a12fd

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method private f()V
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
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity$h$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity$h$a;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity$h;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07e6

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
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->f()V

    .line 26
    .line 27
    .line 28
    const v1, 0x7f0a1395

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/RadioGroup;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity$h;->c:Landroid/widget/RadioGroup;

    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/activity/label/b;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/label/b;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity$h;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
