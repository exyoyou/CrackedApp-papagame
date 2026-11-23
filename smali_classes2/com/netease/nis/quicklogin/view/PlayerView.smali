.class public Lcom/netease/nis/quicklogin/view/PlayerView;
.super Landroid/widget/VideoView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->a:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/PlayerView;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private a()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/PlayerView;->d()V

    .line 3
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/PlayerView;->b()V

    .line 4
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/PlayerView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/view/PlayerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->a:Z

    return p0
.end method

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/view/PlayerView$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/PlayerView$b;-><init>(Lcom/netease/nis/quicklogin/view/PlayerView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/view/PlayerView$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/PlayerView$c;-><init>(Lcom/netease/nis/quicklogin/view/PlayerView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/view/PlayerView$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/PlayerView$a;-><init>(Lcom/netease/nis/quicklogin/view/PlayerView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->b:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setLoadingImageResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->c:I

    return-void
.end method

.method public setLoadingImageResId(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLoopPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->a:Z

    .line 2
    .line 3
    return-void
.end method
