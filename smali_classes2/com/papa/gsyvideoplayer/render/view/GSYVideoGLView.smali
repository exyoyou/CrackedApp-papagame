.class public Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Lw7/a;
.implements Lcom/papa/gsyvideoplayer/render/view/a;
.implements Lcom/papa/gsyvideoplayer/utils/j$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "com.papa.gsyvideoplayer.render.view.GSYVideoGLView"

.field public static final l:I = 0x0

.field public static final m:I = 0x1


# instance fields
.field private b:Lcom/papa/gsyvideoplayer/render/glrender/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

.field private e:Lcom/papa/gsyvideoplayer/utils/j$a;

.field private f:Lcom/papa/gsyvideoplayer/utils/j;

.field private g:Lw7/a;

.field private h:Lw7/c;

.field private i:[F

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/papa/gsyvideoplayer/render/effect/q;

    invoke-direct {v0}, Lcom/papa/gsyvideoplayer/render/effect/q;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    .line 4
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Lcom/papa/gsyvideoplayer/render/effect/q;

    invoke-direct {p2}, Lcom/papa/gsyvideoplayer/render/effect/q;-><init>()V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    .line 8
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Landroid/view/ViewGroup;ILw7/c;Lcom/papa/gsyvideoplayer/utils/j$a;Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;[FLcom/papa/gsyvideoplayer/render/glrender/a;I)Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;
    .locals 11

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v2, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;

    .line 15
    .line 16
    move-object v4, p0

    .line 17
    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/papa/gsyvideoplayer/render/glrender/a;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    move-object/from16 v1, p5

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setEffect(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V

    .line 28
    .line 29
    .line 30
    move-object v1, p4

    .line 31
    invoke-virtual {v2, p4}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setVideoParamsListener(Lcom/papa/gsyvideoplayer/utils/j$a;)V

    .line 32
    .line 33
    .line 34
    move/from16 v9, p8

    .line 35
    .line 36
    invoke-virtual {v2, v9}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setRenderMode(I)V

    .line 37
    .line 38
    .line 39
    move-object v7, p3

    .line 40
    invoke-virtual {v2, p3}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setIGSYSurfaceListener(Lw7/c;)V

    .line 41
    .line 42
    .line 43
    move v6, p2

    .line 44
    int-to-float v3, v6

    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->j()V

    .line 49
    .line 50
    .line 51
    new-instance v10, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;

    .line 52
    .line 53
    move-object v3, v10

    .line 54
    move-object v4, p0

    .line 55
    move-object v5, p1

    .line 56
    move-object v8, p4

    .line 57
    invoke-direct/range {v3 .. v9}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILw7/c;Lcom/papa/gsyvideoplayer/utils/j$a;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v10}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoGLRenderErrorListener(Lw7/b;)V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    array-length v1, v0

    .line 66
    const/16 v3, 0x10

    .line 67
    .line 68
    if-ne v1, v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    .line 71
    .line 72
    .line 73
    :cond_2
    move-object v0, p1

    .line 74
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/render/a;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    return-object v2
.end method

.method private i(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->c:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/papa/gsyvideoplayer/render/glrender/b;

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/papa/gsyvideoplayer/render/glrender/b;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 13
    .line 14
    new-instance p1, Lcom/papa/gsyvideoplayer/utils/j;

    .line 15
    .line 16
    invoke-direct {p1, p0, p0}, Lcom/papa/gsyvideoplayer/utils/j;-><init>(Landroid/view/View;Lcom/papa/gsyvideoplayer/utils/j$a;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/papa/gsyvideoplayer/utils/j;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->w(Landroid/opengl/GLSurfaceView;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;ZLv7/f;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p3, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$a;-><init>(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;Lv7/f;Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoShotListener(Lv7/e;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->m()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " not support initCover now"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->onResume()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " not support initCoverHigh now"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public e(Lv7/e;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoShotListener(Lv7/e;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->m()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->l()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getEffect()Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIGSYSurfaceListener()Lw7/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->h:Lw7/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMVPMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getRenderer()Lcom/papa/gsyvideoplayer/render/glrender/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSizeH()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getSizeW()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getVideoSarDen()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getVideoSarNum()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/papa/gsyvideoplayer/utils/j;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/utils/j;->c()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v2, v3}, Lcom/papa/gsyvideoplayer/render/glrender/a;->q(I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/papa/gsyvideoplayer/utils/j;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/utils/j;->b()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/papa/gsyvideoplayer/render/glrender/a;->p(I)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->o(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->n(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_0
    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->l()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->x()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/papa/gsyvideoplayer/utils/j;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    invoke-virtual {v0, p1, p2, v1}, Lcom/papa/gsyvideoplayer/utils/j;->e(III)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->k()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/papa/gsyvideoplayer/utils/j;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    float-to-int v1, v1

    .line 30
    invoke-virtual {v0, p1, p2, v1}, Lcom/papa/gsyvideoplayer/utils/j;->e(III)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/papa/gsyvideoplayer/utils/j;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/j;->c()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/papa/gsyvideoplayer/utils/j;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/utils/j;->b()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->j()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->h:Lw7/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lw7/c;->onSurfaceAvailable(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCustomRenderer(Lcom/papa/gsyvideoplayer/render/glrender/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->w(Landroid/opengl/GLSurfaceView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->k()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setEffect(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->r(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setGLEffectFilter(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setEffect(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setGLMVPMatrix([F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setGLRenderer(Lcom/papa/gsyvideoplayer/render/glrender/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/papa/gsyvideoplayer/render/glrender/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setGSYVideoGLRenderErrorListener(Lw7/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->t(Lw7/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGSYVideoShotListener(Lv7/e;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/papa/gsyvideoplayer/render/glrender/a;->u(Lv7/e;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIGSYSurfaceListener(Lw7/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setOnGSYSurfaceListener(Lw7/a;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->h:Lw7/c;

    .line 5
    .line 6
    return-void
.end method

.method public setMVPMatrix([F)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i:[F

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->v([F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnGSYSurfaceListener(Lw7/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->g:Lw7/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->s(Lw7/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setMode(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setRenderTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " not support setRenderTransform now"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setVideoParamsListener(Lcom/papa/gsyvideoplayer/utils/j$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j$a;

    .line 2
    .line 3
    return-void
.end method
