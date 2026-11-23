.class public Lcom/aggmoread/sdk/z/a/t/f;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/t/a$f;
.implements Lcom/aggmoread/sdk/z/a/t/h$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/t/f$j;,
        Lcom/aggmoread/sdk/z/a/t/f$i;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:Lcom/aggmoread/sdk/z/a/t/f$i;

.field private F:Lcom/aggmoread/sdk/z/a/t/h;

.field private G:Lcom/aggmoread/sdk/z/a/t/f$j;

.field private H:F

.field I:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field J:Landroid/media/MediaPlayer$OnPreparedListener;

.field private K:Landroid/media/MediaPlayer$OnCompletionListener;

.field private L:Landroid/media/MediaPlayer$OnInfoListener;

.field private M:Landroid/media/MediaPlayer$OnErrorListener;

.field private N:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field O:Landroid/view/SurfaceHolder$Callback;

.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:I

.field private d:I

.field private e:Landroid/view/SurfaceHolder;

.field private f:Landroid/media/MediaPlayer;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/aggmoread/sdk/z/a/t/a;

.field private m:Landroid/media/MediaPlayer$OnCompletionListener;

.field private n:Landroid/media/MediaPlayer$OnPreparedListener;

.field private o:I

.field private p:Landroid/media/MediaPlayer$OnErrorListener;

.field private q:Landroid/media/MediaPlayer$OnInfoListener;

.field private r:I

.field private s:I

.field private t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aggmoread/sdk/z/a/t/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "ApiVideoViewTAG"

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->a:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    iput p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/t/f;->e:Landroid/view/SurfaceHolder;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->A:Z

    iput-boolean p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->B:Z

    iput p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->C:I

    iput p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->D:I

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/t/f;->E:Lcom/aggmoread/sdk/z/a/t/f$i;

    const/4 p2, 0x0

    iput p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->H:F

    new-instance p2, Lcom/aggmoread/sdk/z/a/t/f$a;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/t/f$a;-><init>(Lcom/aggmoread/sdk/z/a/t/f;)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->I:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance p2, Lcom/aggmoread/sdk/z/a/t/f$b;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/t/f$b;-><init>(Lcom/aggmoread/sdk/z/a/t/f;)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->J:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance p2, Lcom/aggmoread/sdk/z/a/t/f$c;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/t/f$c;-><init>(Lcom/aggmoread/sdk/z/a/t/f;)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->K:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance p2, Lcom/aggmoread/sdk/z/a/t/f$d;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/t/f$d;-><init>(Lcom/aggmoread/sdk/z/a/t/f;)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->L:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance p2, Lcom/aggmoread/sdk/z/a/t/f$e;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/t/f$e;-><init>(Lcom/aggmoread/sdk/z/a/t/f;)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->M:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance p2, Lcom/aggmoread/sdk/z/a/t/f$f;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/t/f$f;-><init>(Lcom/aggmoread/sdk/z/a/t/f;)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->N:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance p2, Lcom/aggmoread/sdk/z/a/t/f$g;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/a/t/f$g;-><init>(Lcom/aggmoread/sdk/z/a/t/f;)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->O:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->z:Landroid/content/Context;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->m()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/t/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    return p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/t/f;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    return p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/t/f;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->e:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private a(II)V
    .locals 5

    .line 6
    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    if-lez v2, :cond_8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    div-int v0, v1, v2

    :goto_0
    move v1, p2

    goto :goto_4

    :cond_0
    if-le v1, v3, :cond_4

    div-int v1, v3, v0

    goto :goto_1

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_1
    move v0, p1

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_2
    move v0, p1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    iget v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v1, p2, v2

    div-int/2addr v1, v4

    goto :goto_3

    :cond_7
    move v1, v2

    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    mul-int v4, v4, p1

    div-int v1, v4, v2

    goto :goto_1

    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method private a(IILcom/aggmoread/sdk/z/a/t/f$i;)V
    .locals 6

    .line 7
    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    iget v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasureFitXY before width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    sget-object v4, Lcom/aggmoread/sdk/z/a/t/f$h;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v4, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    mul-int p1, v0, v3

    mul-int p2, v1, v2

    if-le p1, p2, :cond_0

    goto :goto_2

    :cond_0
    if-ge p1, p2, :cond_4

    goto :goto_0

    :pswitch_1
    mul-int v0, v0, v3

    div-int/2addr v0, v1

    goto :goto_4

    :pswitch_2
    mul-int/lit8 p1, v2, 0x3

    mul-int/lit8 p2, v3, 0x4

    if-ge p1, p2, :cond_1

    div-int/lit8 v1, p1, 0x4

    goto :goto_1

    :cond_1
    if-le p1, p2, :cond_4

    div-int/lit8 v0, p2, 0x3

    goto :goto_4

    :pswitch_3
    mul-int/lit8 p1, v2, 0x9

    mul-int/lit8 p2, v3, 0x10

    if-ge p1, p2, :cond_2

    div-int/lit8 v1, p1, 0x10

    goto :goto_1

    :cond_2
    if-le p1, p2, :cond_4

    div-int/lit8 v0, p2, 0x9

    goto :goto_4

    :pswitch_4
    mul-int p1, v0, v3

    mul-int p2, v1, v2

    if-le p1, p2, :cond_3

    :goto_0
    div-int v1, p2, v0

    :goto_1
    move v0, v2

    goto :goto_5

    :cond_3
    if-ge p1, p2, :cond_4

    :goto_2
    div-int v0, p1, v1

    goto :goto_4

    :pswitch_5
    mul-int p2, p2, v0

    mul-int p1, p1, v1

    if-le p2, p1, :cond_4

    mul-int p1, v0, v3

    mul-int v1, v1, v2

    if-le p1, v1, :cond_4

    div-int/2addr v1, v0

    goto :goto_1

    :cond_4
    :goto_3
    move v0, v2

    :goto_4
    move v1, v3

    :goto_5
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMeasureFitXY final  width "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/t/f;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/t/f;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/t/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    return p0
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/t/f;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    return p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/t/f;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->v:Z

    return p1
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/t/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    return p1
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/t/f;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->w:Z

    return p1
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/t/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->o:I

    return p1
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/t/f;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->x:Z

    return p1
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/t/f;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->j:I

    return p1
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/t/f;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->y:Z

    return p1
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/t/f;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->r:I

    return p0
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/t/f;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->k:I

    return p1
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/a/t/f;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->s:I

    return p1
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/a/t/f;)Z
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->l()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/a/t/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    return p0
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/a/t/f;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    return p1
.end method

.method private h()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/a/t/a;->a(Lcom/aggmoread/sdk/z/a/t/a$f;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/t/a;->setEnabled(Z)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->f()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method private i()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->E:Lcom/aggmoread/sdk/z/a/t/f$i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    iget v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", videoHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method static synthetic j(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->G:Lcom/aggmoread/sdk/z/a/t/f$j;

    return-object p0
.end method

.method private j()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->F:Lcom/aggmoread/sdk/z/a/t/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/h;->b()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->q:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->F:Lcom/aggmoread/sdk/z/a/t/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/a/t/h;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->z:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/a/t/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->F:Lcom/aggmoread/sdk/z/a/t/h;

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/a/t/h;->a(Lcom/aggmoread/sdk/z/a/t/h$c;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->F:Lcom/aggmoread/sdk/z/a/t/h;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/h;->c()V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->p:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method private l()Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->j:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic m(Lcom/aggmoread/sdk/z/a/t/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->h:I

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->i:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->O:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    return-void
.end method

.method static synthetic n(Lcom/aggmoread/sdk/z/a/t/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->s:I

    return p0
.end method

.method private n()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic o(Lcom/aggmoread/sdk/z/a/t/f;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->e:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method private o()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->b:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->e:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->z:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/t/f;->c(Z)V

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->g:I

    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->g:I

    :goto_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->J:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->I:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->K:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->M:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->L:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->N:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->o:I

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->H:F

    invoke-virtual {v1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->z:Landroid/content/Context;

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/t/f;->b:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/t/f;->e:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->G:Lcom/aggmoread/sdk/z/a/t/f$j;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Lcom/aggmoread/sdk/z/a/t/f$j;->d(Landroid/media/MediaPlayer;)V

    :cond_2
    iput v3, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    iput v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    iput v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->M:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v3, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic p(Lcom/aggmoread/sdk/z/a/t/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->o()V

    return-void
.end method

.method static synthetic q(Lcom/aggmoread/sdk/z/a/t/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->k()V

    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->c()Lcom/aggmoread/sdk/z/a/t/a$i;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/a/t/a$i;->d:Lcom/aggmoread/sdk/z/a/t/a$i;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->o()V

    :goto_0
    return-void
.end method

.method static synthetic r(Lcom/aggmoread/sdk/z/a/t/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->j()V

    return-void
.end method

.method static synthetic s(Lcom/aggmoread/sdk/z/a/t/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->i()V

    return-void
.end method

.method static synthetic t(Lcom/aggmoread/sdk/z/a/t/f;)I
    .locals 0

    iget p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    return p0
.end method

.method static synthetic u(Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/a;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    return-object p0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->H:F

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    int-to-long v1, p1

    const/4 p1, 0x3

    invoke-static {v0, v1, v2, p1}, Lcom/aggmoread/sdk/z/a/t/k;->a(Landroid/media/MediaPlayer;JI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_0
    const/4 p1, 0x0

    :cond_1
    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->r:I

    return-void
.end method

.method public a(ILcom/aggmoread/sdk/z/a/t/h$b;)V
    .locals 2

    .line 8
    iget-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->B:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/aggmoread/sdk/z/a/t/h$b;->b:Lcom/aggmoread/sdk/z/a/t/h$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(ZI)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/aggmoread/sdk/z/a/t/h$b;->c:Lcom/aggmoread/sdk/z/a/t/h$b;

    if-ne p2, p1, :cond_2

    const/4 p1, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/aggmoread/sdk/z/a/t/f;->a(ZI)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/aggmoread/sdk/z/a/t/h$b;->d:Lcom/aggmoread/sdk/z/a/t/h$b;

    if-ne p2, p1, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/a/t/f;->a(ZI)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/aggmoread/sdk/z/a/t/h$b;->e:Lcom/aggmoread/sdk/z/a/t/h$b;

    if-ne p2, p1, :cond_4

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/aggmoread/sdk/z/a/t/f;->a(ZI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->p:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->q:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->a:Ljava/lang/String;

    const-string v0, "setVideoURI "

    invoke-static {p2, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->b:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->r:I

    iput p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->s:I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->o()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/a;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->f()V

    :cond_0
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->h()V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/f$i;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->E:Lcom/aggmoread/sdk/z/a/t/f$i;

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/f$j;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->G:Lcom/aggmoread/sdk/z/a/t/f$j;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 20
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(ZI)V

    return-void
.end method

.method public a(ZI)V
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->z:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x400

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->C:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->D:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p0, Lcom/aggmoread/sdk/z/a/t/f;->C:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->D:I

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/aggmoread/sdk/z/a/t/f;->C:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/aggmoread/sdk/z/a/t/f;->D:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {p2, p1}, Lcom/aggmoread/sdk/z/a/t/a;->a(Z)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/t/f;->G:Lcom/aggmoread/sdk/z/a/t/f$j;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/aggmoread/sdk/z/a/t/f$j;->a(Z)V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->a:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->p()V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->G:Lcom/aggmoread/sdk/z/a/t/f$j;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2}, Lcom/aggmoread/sdk/z/a/t/f$j;->f(Landroid/media/MediaPlayer;)V

    :cond_1
    iput v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->v:Z

    return v0
.end method

.method public d()V
    .locals 4

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->b:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->g()V

    :cond_1
    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->y:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->s()V

    :cond_2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->c()Lcom/aggmoread/sdk/z/a/t/a$i;

    move-result-object v0

    sget-object v2, Lcom/aggmoread/sdk/z/a/t/a$i;->c:Lcom/aggmoread/sdk/z/a/t/a$i;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->o()V

    :cond_3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->G:Lcom/aggmoread/sdk/z/a/t/f$j;

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2}, Lcom/aggmoread/sdk/z/a/t/f$j;->e(Landroid/media/MediaPlayer;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2}, Lcom/aggmoread/sdk/z/a/t/f$j;->a(Landroid/media/MediaPlayer;)V

    :cond_5
    :goto_0
    iput v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    :cond_6
    iput v1, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->B:Z

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->A:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->o:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_9

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/a;->f()V

    :cond_2
    return v1

    :cond_3
    const/16 v0, 0x56

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->r()V

    goto :goto_4

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/t/f;->b()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/a;->o()V

    :cond_6
    return v1

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/t/f;->b()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/a;->o()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/a;->f()V

    :goto_3
    return v1

    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->A:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aggmoread/sdk/z/a/t/f$i;->h:Lcom/aggmoread/sdk/z/a/t/f$i;

    invoke-direct {p0, p1, p2, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(IILcom/aggmoread/sdk/z/a/t/f$i;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/a/t/f;->a(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->r()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->r()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/t/f;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->g()V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    :cond_1
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->c:I

    iput v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->d:I

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->l:Lcom/aggmoread/sdk/z/a/t/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/a;->p()V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/f;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
