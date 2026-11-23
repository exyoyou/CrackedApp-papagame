.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field final synthetic c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;


# direct methods
.method public constructor <init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroid/content/Context;Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "parent",
            "width",
            "height"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p3, p4, p5, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b:Landroid/view/View;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a1470

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b:Landroid/view/View;

    .line 11
    .line 12
    const v2, 0x7f0a02f5

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$b;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$b;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private b()V
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
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$c;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$c;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;)V

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
.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
