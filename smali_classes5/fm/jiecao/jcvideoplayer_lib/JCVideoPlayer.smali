.class public abstract Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$b;,
        Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;
    }
.end annotation


# static fields
.field public static final J:Ljava/lang/String; = "JieCaoVideoPlayer"

.field public static K:Z = true

.field public static L:Z = true

.field public static final L1:I = 0x7

.field public static M:I = 0x4

.field public static N:I = 0x1

.field public static O:Z = true

.field public static P:Z = false

.field public static final Q:I = 0x8405

.field public static final R:I = 0x8406

.field public static R1:I = -0x1

.field public static final S:I = 0x50

.field public static final T:I = 0x12c

.field public static U:J = 0x0L

.field public static final V:I = 0x0

.field protected static V1:Lfm/jiecao/jcvideoplayer_lib/c; = null

.field public static final W:I = 0x1

.field protected static a2:Ljava/util/Timer; = null

.field public static final b1:I = 0x3

.field public static final b2:Ljava/lang/String; = "URL_KEY_DEFAULT"

.field public static c2:J = 0x0L

.field public static d2:Landroid/media/AudioManager$OnAudioFocusChangeListener; = null

.field public static final f1:I = 0x0

.field public static final i1:I = 0x1

.field public static final l1:I = 0x2

.field public static final p0:I = 0x2

.field public static final p1:I = 0x3

.field public static final q1:I = 0x4

.field public static final r1:I = 0x5

.field public static final v1:I = 0x6


# instance fields
.field protected A:Z

.field protected B:I

.field protected C:I

.field protected D:F

.field protected E:I

.field F:Ljava/util/LinkedHashMap;

.field G:I

.field public H:I

.field public I:I

.field protected b:Z

.field public c:I

.field public d:I

.field public e:Z

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:[Ljava/lang/Object;

.field public h:I

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/SeekBar;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/view/ViewGroup;

.field public o:Landroid/view/ViewGroup;

.field public p:Landroid/view/ViewGroup;

.field protected q:I

.field protected r:I

.field protected s:Landroid/media/AudioManager;

.field protected t:Landroid/os/Handler;

.field protected u:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

.field protected v:Z

.field protected w:F

.field protected x:F

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d2:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 4
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 5
    iput-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g:[Ljava/lang/Object;

    .line 7
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:I

    .line 8
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 9
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H:I

    .line 10
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->I:I

    .line 11
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:Z

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 15
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 16
    iput-boolean p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e:Z

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g:[Ljava/lang/Object;

    .line 18
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:I

    .line 19
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 20
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H:I

    .line 21
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->I:I

    .line 22
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m(Landroid/content/Context;)V

    return-void
.end method

.method public static H()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->U:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x12c

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->a()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/b;->d()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static M(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-boolean v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->L:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/16 v0, 0x400

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static varargs P(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "URL_KEY_DEFAULT"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-static {p0, p1, v0, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->Q(Landroid/content/Context;Ljava/lang/Class;Ljava/util/LinkedHashMap;I[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static varargs Q(Landroid/content/Context;Ljava/lang/Class;Ljava/util/LinkedHashMap;I[Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->l(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->M:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/e;->j(Landroid/content/Context;)Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x1020002

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    .line 26
    const v1, 0x8405

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v2, 0x1

    .line 39
    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 40
    .line 41
    const-class v4, Landroid/content/Context;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    aput-object v4, v3, v5

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p0, v2, v5

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/view/View;->setId(I)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    .line 65
    const/4 v1, -0x1

    .line 66
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x2

    .line 73
    invoke-virtual {p0, p2, p3, p1, p4}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    sput-wide p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->U:J

    .line 81
    .line 82
    iget-object p0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_1
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method public static d()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->U:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x12c

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    cmp-long v5, v0, v2

    .line 12
    .line 13
    if-gez v5, :cond_0

    .line 14
    .line 15
    return v4

    .line 16
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x2

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    sput-wide v3, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->U:J

    .line 29
    .line 30
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v3, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 35
    .line 36
    if-ne v3, v2, :cond_1

    .line 37
    .line 38
    const/16 v2, 0x8

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v2, 0xa

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0, v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F()V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_2
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 65
    .line 66
    if-eq v0, v2, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 73
    .line 74
    const/4 v2, 0x3

    .line 75
    if-ne v0, v2, :cond_4

    .line 76
    .line 77
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    sput-wide v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->U:J

    .line 82
    .line 83
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput v4, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 88
    .line 89
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->f()V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/b;->d()V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/f;->e(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V

    .line 105
    .line 106
    .line 107
    return v1

    .line 108
    :cond_4
    return v4
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-boolean v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->L:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/16 v0, 0x400

    .line 35
    .line 36
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static setJcUserAction(Lfm/jiecao/jcvideoplayer_lib/c;)V
    .locals 0

    .line 1
    sput-object p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->V1:Lfm/jiecao/jcvideoplayer_lib/c;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onStatePlaying  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->R()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onStatePreparing  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->J()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public C(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 3
    .line 4
    iput p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 5
    .line 6
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:I

    .line 7
    .line 8
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-static {p2, p1}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sput-object p1, Lfm/jiecao/jcvideoplayer_lib/b;->l:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e:Z

    .line 17
    .line 18
    sput-boolean p1, Lfm/jiecao/jcvideoplayer_lib/b;->m:Z

    .line 19
    .line 20
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->f:Ljava/util/Map;

    .line 21
    .line 22
    sput-object p1, Lfm/jiecao/jcvideoplayer_lib/b;->n:Ljava/util/Map;

    .line 23
    .line 24
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lfm/jiecao/jcvideoplayer_lib/b;->c()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public D()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onVideoRendingStart  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:Z

    .line 25
    .line 26
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 27
    .line 28
    if-eq v1, v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    if-eq v1, v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    if-eq v1, v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:I

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 46
    .line 47
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 63
    .line 64
    invoke-static {v1, v2}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/e;->f(Landroid/content/Context;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v1, v1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->R()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onVideoSizeChanged  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lfm/jiecao/jcvideoplayer_lib/b;->a()Landroid/graphics/Point;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->setVideoSize(Landroid/graphics/Point;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public F()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "playOnThisJcvd  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 28
    .line 29
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 30
    .line 31
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 36
    .line 37
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->f()V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setState(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->a()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public G()V
    .locals 5

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/b;->l:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    sget-wide v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->U:J

    .line 22
    .line 23
    sub-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x12c

    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-lez v4, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x2

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 63
    .line 64
    if-ne v0, v1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "release ["

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, "]"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H()V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    return-void
.end method

.method public I()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->k:Landroid/graphics/SurfaceTexture;

    .line 3
    .line 4
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/SeekBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/SeekBar;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->l:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/e;->k(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/e;->k(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public K(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public L(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public N(FI)V
    .locals 0

    .line 1
    return-void
.end method

.method public O(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public R()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Timer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->a2:Ljava/util/Timer;

    .line 10
    .line 11
    new-instance v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->u:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    .line 17
    .line 18
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->a2:Ljava/util/Timer;

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    const-wide/16 v5, 0x12c

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public S()V
    .locals 4

    .line 1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->a()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "startVideo ["

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "] "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->a()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "audio"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/media/AudioManager;

    .line 43
    .line 44
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d2:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 45
    .line 46
    const/4 v2, 0x3

    .line 47
    const/4 v3, 0x2

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->j(Landroid/content/Context;)Landroid/app/Activity;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/16 v1, 0x80

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 71
    .line 72
    invoke-static {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->l:Ljava/lang/String;

    .line 77
    .line 78
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e:Z

    .line 79
    .line 80
    sput-boolean v0, Lfm/jiecao/jcvideoplayer_lib/b;->m:Z

    .line 81
    .line 82
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->f:Ljava/util/Map;

    .line 83
    .line 84
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->n:Ljava/util/Map;

    .line 85
    .line 86
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->B()V

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/f;->e(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public T()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "startWindowFullscreen  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->l(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->M:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->j(Landroid/content/Context;)Landroid/app/Activity;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const v1, 0x1020002

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    .line 60
    const v1, 0x8405

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    .line 73
    .line 74
    sget-object v3, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v3, 0x1

    .line 84
    new-array v4, v3, [Ljava/lang/Class;

    .line 85
    .line 86
    const-class v5, Landroid/content/Context;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    aput-object v5, v4, v6

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-array v3, v3, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    aput-object v4, v3, v6

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    .line 114
    const/4 v3, -0x1

    .line 115
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 124
    .line 125
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g:[Ljava/lang/Object;

    .line 126
    .line 127
    const/4 v4, 0x2

    .line 128
    invoke-virtual {v2, v0, v1, v4, v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setState(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->a()V

    .line 137
    .line 138
    .line 139
    invoke-static {v2}, Lfm/jiecao/jcvideoplayer_lib/f;->f(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x()V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    sput-wide v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->U:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :goto_0
    return-void
.end method

.method public U()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "startWindowTiny  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x7

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->j(Landroid/content/Context;)Landroid/app/Activity;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const v1, 0x1020002

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .line 53
    const v1, 0x8406

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    .line 66
    .line 67
    sget-object v3, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v3, 0x1

    .line 77
    new-array v4, v3, [Ljava/lang/Class;

    .line 78
    .line 79
    const-class v5, Landroid/content/Context;

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    aput-object v5, v4, v6

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    new-array v3, v3, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    aput-object v4, v3, v6

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    .line 107
    const/16 v3, 0x190

    .line 108
    .line 109
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    .line 111
    .line 112
    const/16 v3, 0x55

    .line 113
    .line 114
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 122
    .line 123
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g:[Ljava/lang/Object;

    .line 124
    .line 125
    const/4 v4, 0x3

    .line 126
    invoke-virtual {v2, v0, v1, v4, v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 130
    .line 131
    invoke-virtual {v2, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setState(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->a()V

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Lfm/jiecao/jcvideoplayer_lib/f;->f(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x()V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    :cond_2
    :goto_0
    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "addTextureView ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    const/16 v2, 0x11

    .line 27
    .line 28
    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    .line 32
    .line 33
    sget-object v2, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public b(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    cmpl-float p1, p1, v0

    .line 21
    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 v0, 0x8

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    const/4 p1, 0x7

    .line 51
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->T()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c2:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x7d0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    sput-wide v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c2:J

    .line 35
    .line 36
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->a2:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->u:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->N:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->M(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    .line 26
    .line 27
    sget-object v2, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/e;->j(Landroid/content/Context;)Landroid/app/Activity;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const v2, 0x1020002

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/view/ViewGroup;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/f;->f(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->j(Landroid/content/Context;)Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x1020002

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    const v1, 0x8405

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const v2, 0x8406

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->M(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public getCurrentPositionWhenPlaying()I
    .locals 3

    .line 1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-ne v0, v2, :cond_2

    .line 21
    .line 22
    :cond_1
    :try_start_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 29
    .line 30
    .line 31
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_2
    return v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return v1
.end method

.method public getDuration()I
    .locals 2

    .line 1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return v1
.end method

.method public abstract getLayoutId()I
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    return-void
.end method

.method public m(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getLayoutId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->start:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 17
    .line 18
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->fullscreen:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k:Landroid/widget/ImageView;

    .line 27
    .line 28
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->bottom_seek_progress:I

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/SeekBar;

    .line 35
    .line 36
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/SeekBar;

    .line 37
    .line 38
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->current:I

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->l:Landroid/widget/TextView;

    .line 47
    .line 48
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->total:I

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m:Landroid/widget/TextView;

    .line 57
    .line 58
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->layout_bottom:I

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    .line 66
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 67
    .line 68
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    .line 76
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    .line 77
    .line 78
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->layout_top:I

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    .line 86
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    .line 87
    .line 88
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k:Landroid/widget/ImageView;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/SeekBar;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 131
    .line 132
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q:I

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 147
    .line 148
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->r:I

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "audio"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/media/AudioManager;

    .line 161
    .line 162
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s:Landroid/media/AudioManager;

    .line 163
    .line 164
    new-instance v0, Landroid/os/Handler;

    .line 165
    .line 166
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->t:Landroid/os/Handler;

    .line 170
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    .line 177
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    sput p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->N:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    :cond_0
    :goto_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->I()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 14
    .line 15
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->start:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x6

    .line 9
    const/4 v3, 0x7

    .line 10
    const-string v4, "] "

    .line 11
    .line 12
    if-ne p1, v0, :cond_7

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "onClick start ["

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 37
    .line 38
    invoke-static {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$string;->no_url:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    if-ne p1, v3, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x3

    .line 79
    if-ne p1, v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v0, "pauseVideo ["

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y()V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_2
    const/4 v0, 0x5

    .line 119
    if-ne p1, v0, :cond_3

    .line 120
    .line 121
    const/4 p1, 0x4

    .line 122
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :cond_3
    if-ne p1, v2, :cond_b

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->S()V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_4
    :goto_0
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 150
    .line 151
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 152
    .line 153
    invoke-static {p1, v1}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string v1, "file"

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_5

    .line 164
    .line 165
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 166
    .line 167
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 168
    .line 169
    invoke-static {p1, v1}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string v1, "/"

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_5

    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p1}, Lfm/jiecao/jcvideoplayer_lib/e;->h(Landroid/content/Context;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_5

    .line 190
    .line 191
    sget-boolean p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->P:Z

    .line 192
    .line 193
    if-nez p1, :cond_5

    .line 194
    .line 195
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->O(I)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->S()V

    .line 200
    .line 201
    .line 202
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 203
    .line 204
    if-eq p1, v3, :cond_6

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_6
    const/4 v0, 0x1

    .line 208
    :goto_1
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->fullscreen:I

    .line 213
    .line 214
    if-ne p1, v0, :cond_a

    .line 215
    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v0, "onClick fullscreen ["

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 237
    .line 238
    if-ne p1, v2, :cond_8

    .line 239
    .line 240
    return-void

    .line 241
    :cond_8
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 242
    .line 243
    if-ne p1, v1, :cond_9

    .line 244
    .line 245
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v0, "toFullscreenActivity ["

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->T()V

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_a
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    .line 277
    .line 278
    if-ne p1, v0, :cond_b

    .line 279
    .line 280
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 281
    .line 282
    if-ne p1, v3, :cond_b

    .line 283
    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v0, "onClick surfaceContainer State=Error ["

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->S()V

    .line 305
    .line 306
    .line 307
    :cond_b
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->I:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    int-to-float p2, p1

    .line 23
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->I:I

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    mul-float p2, p2, v0

    .line 27
    .line 28
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H:I

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    div-float/2addr p2, v0

    .line 32
    float-to-int p2, p2

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 34
    .line 35
    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    .line 37
    .line 38
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "bottomProgress onStartTrackingTouch ["

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "] "

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "bottomProgress onStopTrackingTouch ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->R()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 46
    .line 47
    const/4 v3, 0x3

    .line 48
    if-eq v2, v3, :cond_1

    .line 49
    .line 50
    if-eq v2, v0, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    mul-int p1, p1, v0

    .line 62
    .line 63
    div-int/lit8 p1, p1, 0x64

    .line 64
    .line 65
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "seekTo "

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, " ["

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    if-ne v2, v3, :cond_10

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const-string v3, "] "

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v2, :cond_f

    .line 26
    .line 27
    if-eq v2, v4, :cond_b

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    if-eq v2, v5, :cond_0

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v6, "onTouch surfaceContainer actionMove ["

    .line 40
    .line 41
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->w:F

    .line 55
    .line 56
    sub-float v2, v0, v2

    .line 57
    .line 58
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x:F

    .line 59
    .line 60
    sub-float v8, v1, v0

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x3

    .line 74
    const/high16 v11, 0x437f0000    # 255.0f

    .line 75
    .line 76
    if-ne v3, v5, :cond_5

    .line 77
    .line 78
    iget-boolean v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z:Z

    .line 79
    .line 80
    if-nez v3, :cond_5

    .line 81
    .line 82
    iget-boolean v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    .line 83
    .line 84
    if-nez v3, :cond_5

    .line 85
    .line 86
    iget-boolean v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A:Z

    .line 87
    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    const/high16 v3, 0x42a00000    # 80.0f

    .line 91
    .line 92
    cmpl-float v0, v0, v3

    .line 93
    .line 94
    if-gtz v0, :cond_1

    .line 95
    .line 96
    cmpl-float v1, v1, v3

    .line 97
    .line 98
    if-lez v1, :cond_5

    .line 99
    .line 100
    :cond_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e()V

    .line 101
    .line 102
    .line 103
    if-ltz v0, :cond_2

    .line 104
    .line 105
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 106
    .line 107
    const/4 v1, 0x7

    .line 108
    if-eq v0, v1, :cond_5

    .line 109
    .line 110
    iput-boolean v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z:Z

    .line 111
    .line 112
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getCurrentPositionWhenPlaying()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->B:I

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->w:F

    .line 120
    .line 121
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q:I

    .line 122
    .line 123
    int-to-float v1, v1

    .line 124
    const/high16 v3, 0x3f000000    # 0.5f

    .line 125
    .line 126
    mul-float v1, v1, v3

    .line 127
    .line 128
    cmpg-float v0, v0, v1

    .line 129
    .line 130
    if-gez v0, :cond_4

    .line 131
    .line 132
    iput-boolean v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A:Z

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 151
    .line 152
    cmpg-float v1, v0, v9

    .line 153
    .line 154
    if-gez v1, :cond_3

    .line 155
    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "screen_brightness"

    .line 165
    .line 166
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    int-to-float v0, v0

    .line 171
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D:F

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v1, "current system brightness: "

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D:F

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_3
    mul-float v0, v0, v11

    .line 195
    .line 196
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D:F

    .line 197
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v1, "current activity brightness: "

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D:F

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_4
    iput-boolean v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    .line 215
    .line 216
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s:Landroid/media/AudioManager;

    .line 217
    .line 218
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->C:I

    .line 223
    .line 224
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z:Z

    .line 225
    .line 226
    if-eqz v0, :cond_7

    .line 227
    .line 228
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->B:I

    .line 233
    .line 234
    int-to-float v0, v0

    .line 235
    int-to-float v1, v6

    .line 236
    mul-float v1, v1, v2

    .line 237
    .line 238
    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q:I

    .line 239
    .line 240
    int-to-float v3, v3

    .line 241
    div-float/2addr v1, v3

    .line 242
    add-float/2addr v0, v1

    .line 243
    float-to-int v0, v0

    .line 244
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:I

    .line 245
    .line 246
    if-le v0, v6, :cond_6

    .line 247
    .line 248
    iput v6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:I

    .line 249
    .line 250
    :cond_6
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:I

    .line 251
    .line 252
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->k(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-static {v6}, Lfm/jiecao/jcvideoplayer_lib/e;->k(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    iget v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:I

    .line 261
    .line 262
    move-object v1, p0

    .line 263
    invoke-virtual/range {v1 .. v6}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->L(FLjava/lang/String;ILjava/lang/String;I)V

    .line 264
    .line 265
    .line 266
    :cond_7
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    .line 267
    .line 268
    const/high16 v1, 0x42c80000    # 100.0f

    .line 269
    .line 270
    const/high16 v2, 0x40400000    # 3.0f

    .line 271
    .line 272
    if-eqz v0, :cond_8

    .line 273
    .line 274
    neg-float v8, v8

    .line 275
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s:Landroid/media/AudioManager;

    .line 276
    .line 277
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    int-to-float v3, v0

    .line 282
    mul-float v3, v3, v8

    .line 283
    .line 284
    mul-float v3, v3, v2

    .line 285
    .line 286
    iget v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->r:I

    .line 287
    .line 288
    int-to-float v4, v4

    .line 289
    div-float/2addr v3, v4

    .line 290
    float-to-int v3, v3

    .line 291
    iget-object v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s:Landroid/media/AudioManager;

    .line 292
    .line 293
    iget v5, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->C:I

    .line 294
    .line 295
    add-int/2addr v5, v3

    .line 296
    invoke-virtual {v4, v10, v5, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 297
    .line 298
    .line 299
    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->C:I

    .line 300
    .line 301
    mul-int/lit8 v3, v3, 0x64

    .line 302
    .line 303
    div-int/2addr v3, v0

    .line 304
    int-to-float v0, v3

    .line 305
    mul-float v3, v8, v2

    .line 306
    .line 307
    mul-float v3, v3, v1

    .line 308
    .line 309
    iget v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->r:I

    .line 310
    .line 311
    int-to-float v4, v4

    .line 312
    div-float/2addr v3, v4

    .line 313
    add-float/2addr v0, v3

    .line 314
    float-to-int v0, v0

    .line 315
    neg-float v3, v8

    .line 316
    invoke-virtual {p0, v3, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->N(FI)V

    .line 317
    .line 318
    .line 319
    :cond_8
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A:Z

    .line 320
    .line 321
    if-eqz v0, :cond_10

    .line 322
    .line 323
    neg-float v0, v8

    .line 324
    mul-float v3, v0, v11

    .line 325
    .line 326
    mul-float v3, v3, v2

    .line 327
    .line 328
    iget v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->r:I

    .line 329
    .line 330
    int-to-float v4, v4

    .line 331
    div-float/2addr v3, v4

    .line 332
    float-to-int v3, v3

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-static {v4}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    iget v5, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D:F

    .line 350
    .line 351
    int-to-float v3, v3

    .line 352
    add-float v6, v5, v3

    .line 353
    .line 354
    div-float/2addr v6, v11

    .line 355
    const/high16 v8, 0x3f800000    # 1.0f

    .line 356
    .line 357
    cmpl-float v6, v6, v8

    .line 358
    .line 359
    if-ltz v6, :cond_9

    .line 360
    .line 361
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_9
    add-float v6, v5, v3

    .line 365
    .line 366
    div-float/2addr v6, v11

    .line 367
    cmpg-float v6, v6, v9

    .line 368
    .line 369
    if-gtz v6, :cond_a

    .line 370
    .line 371
    const v3, 0x3c23d70a    # 0.01f

    .line 372
    .line 373
    .line 374
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 375
    .line 376
    goto :goto_1

    .line 377
    :cond_a
    add-float/2addr v5, v3

    .line 378
    div-float/2addr v5, v11

    .line 379
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 380
    .line 381
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-static {v3}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 394
    .line 395
    .line 396
    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D:F

    .line 397
    .line 398
    mul-float v3, v3, v1

    .line 399
    .line 400
    div-float/2addr v3, v11

    .line 401
    mul-float v0, v0, v2

    .line 402
    .line 403
    mul-float v0, v0, v1

    .line 404
    .line 405
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->r:I

    .line 406
    .line 407
    int-to-float v1, v1

    .line 408
    div-float/2addr v0, v1

    .line 409
    add-float/2addr v3, v0

    .line 410
    float-to-int v0, v3

    .line 411
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->K(I)V

    .line 412
    .line 413
    .line 414
    goto :goto_3

    .line 415
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    const-string v1, "onTouch surfaceContainer actionUp ["

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    iput-boolean v7, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->v:Z

    .line 436
    .line 437
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i()V

    .line 444
    .line 445
    .line 446
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z:Z

    .line 447
    .line 448
    if-eqz v0, :cond_d

    .line 449
    .line 450
    const/16 v0, 0xc

    .line 451
    .line 452
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 453
    .line 454
    .line 455
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 460
    .line 461
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:I

    .line 462
    .line 463
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:I

    .line 471
    .line 472
    mul-int/lit8 v1, v1, 0x64

    .line 473
    .line 474
    if-nez v0, :cond_c

    .line 475
    .line 476
    goto :goto_2

    .line 477
    :cond_c
    move v4, v0

    .line 478
    :goto_2
    div-int/2addr v1, v4

    .line 479
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/SeekBar;

    .line 480
    .line 481
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 482
    .line 483
    .line 484
    :cond_d
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    .line 485
    .line 486
    if-eqz v0, :cond_e

    .line 487
    .line 488
    const/16 v0, 0xb

    .line 489
    .line 490
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 491
    .line 492
    .line 493
    :cond_e
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->R()V

    .line 494
    .line 495
    .line 496
    goto :goto_3

    .line 497
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    const-string v5, "onTouch surfaceContainer actionDown ["

    .line 503
    .line 504
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 508
    .line 509
    .line 510
    move-result v5

    .line 511
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    iput-boolean v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->v:Z

    .line 518
    .line 519
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->w:F

    .line 520
    .line 521
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x:F

    .line 522
    .line 523
    iput-boolean v7, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    .line 524
    .line 525
    iput-boolean v7, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z:Z

    .line 526
    .line 527
    iput-boolean v7, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A:Z

    .line 528
    .line 529
    :cond_10
    :goto_3
    return v7
.end method

.method public p()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "onAutoCompletion  ["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "] "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x6

    .line 31
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->v()V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    if-ne v0, v1, :cond_0

    .line 53
    .line 54
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 64
    .line 65
    invoke-static {v1, v2}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static {v0, v1, v2}, Lfm/jiecao/jcvideoplayer_lib/e;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public q()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onCompletion  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getCurrentPositionWhenPlaying()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 42
    .line 43
    invoke-static {v2, v3}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2, v0}, Lfm/jiecao/jcvideoplayer_lib/e;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    .line 57
    .line 58
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x0

    .line 68
    iput v1, v0, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    .line 69
    .line 70
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput v1, v0, Lfm/jiecao/jcvideoplayer_lib/b;->d:I

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v2, "audio"

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/media/AudioManager;

    .line 87
    .line 88
    sget-object v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d2:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->j(Landroid/content/Context;)Landroid/app/Activity;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/16 v2, 0x80

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/e;->c(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->N:I

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 124
    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->j:Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    .line 128
    .line 129
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/b;->k:Landroid/graphics/SurfaceTexture;

    .line 130
    .line 131
    iput-boolean v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:Z

    .line 132
    .line 133
    return-void
.end method

.method public r(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onError "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " - "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " ["

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "] "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v0, 0x26

    .line 40
    .line 41
    if-eq p1, v0, :cond_0

    .line 42
    .line 43
    const/16 v0, -0x26

    .line 44
    .line 45
    if-eq p1, v0, :cond_0

    .line 46
    .line 47
    if-eq p2, v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->w()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lfm/jiecao/jcvideoplayer_lib/b;->d()V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 4

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->V1:Lfm/jiecao/jcvideoplayer_lib/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->V1:Lfm/jiecao/jcvideoplayer_lib/c;

    .line 16
    .line 17
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 18
    .line 19
    invoke-static {v0, v2}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 24
    .line 25
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g:[Ljava/lang/Object;

    .line 26
    .line 27
    invoke-interface {v1, p1, v0, v2, v3}, Lfm/jiecao/jcvideoplayer_lib/c;->a(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/SeekBar;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setProgressAndText(III)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->v:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/SeekBar;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->l:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-static {p2}, Lfm/jiecao/jcvideoplayer_lib/e;->k(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-static {p3}, Lfm/jiecao/jcvideoplayer_lib/e;->k(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setState(III)V

    return-void
.end method

.method public setState(III)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->w()V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->v()V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y()V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z()V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A()V

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->C(II)V

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->B()V

    goto :goto_0

    .line 9
    :pswitch_7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "URL_KEY_DEFAULT"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    invoke-static {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 5
    invoke-static {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    invoke-static {p1, v1}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 7
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 8
    iput p3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 9
    iput-object p4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->f:Ljava/util/Map;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:Z

    .line 12
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x()V

    return-void
.end method

.method public t(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onInfo what - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " extra - "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 p2, 0x2bd

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    if-ne p1, p2, :cond_1

    .line 26
    .line 27
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 28
    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    sput p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->R1:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 p2, 0x2be

    .line 39
    .line 40
    if-ne p1, p2, :cond_3

    .line 41
    .line 42
    sget p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->R1:I

    .line 43
    .line 44
    const/4 p2, -0x1

    .line 45
    if-eq p1, p2, :cond_4

    .line 46
    .line 47
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 48
    .line 49
    if-ne v1, v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setState(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    sput p2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->R1:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 p2, 0x3

    .line 58
    if-ne p1, p2, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D()V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    return-void
.end method

.method public u()V
    .locals 0

    .line 1
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onStateAutoComplete  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x6

    .line 24
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/SeekBar;

    .line 30
    .line 31
    const/16 v1, 0x64

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->l:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onStateError  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x7

    .line 24
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onStateNormal  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->e()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/b;->d()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onStatePause  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->R()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onStatePlaybackBufferingStart  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->R()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
