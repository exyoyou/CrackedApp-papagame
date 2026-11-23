.class Lcom/nineoldandroids/view/e;
.super Lcom/nineoldandroids/view/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/view/e$b;,
        Lcom/nineoldandroids/view/e$c;,
        Lcom/nineoldandroids/view/e$d;
    }
.end annotation


# static fields
.field private static final o:I = 0x0

.field private static final p:I = 0x1

.field private static final q:I = 0x2

.field private static final r:I = 0x4

.field private static final s:I = 0x8

.field private static final t:I = 0x10

.field private static final u:I = 0x20

.field private static final v:I = 0x40

.field private static final w:I = 0x80

.field private static final x:I = 0x100

.field private static final y:I = 0x200

.field private static final z:I = 0x1ff


# instance fields
.field private final b:Lcom/nineoldandroids/view/animation/a;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Landroid/view/animation/Interpolator;

.field private i:Z

.field private j:Lcom/nineoldandroids/animation/a$a;

.field private k:Lcom/nineoldandroids/view/e$b;

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/view/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/nineoldandroids/animation/a;",
            "Lcom/nineoldandroids/view/e$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/view/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->e:Z

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/nineoldandroids/view/e;->f:J

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->g:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->i:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/nineoldandroids/view/e;->j:Lcom/nineoldandroids/animation/a$a;

    .line 17
    .line 18
    new-instance v1, Lcom/nineoldandroids/view/e$b;

    .line 19
    .line 20
    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/view/e$b;-><init>(Lcom/nineoldandroids/view/e;Lcom/nineoldandroids/view/e$a;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/nineoldandroids/view/e;->k:Lcom/nineoldandroids/view/e$b;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Lcom/nineoldandroids/view/e$a;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/e$a;-><init>(Lcom/nineoldandroids/view/e;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/nineoldandroids/view/e;->m:Ljava/lang/Runnable;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/nineoldandroids/view/e;->c:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/nineoldandroids/view/animation/a;->I(Landroid/view/View;)Lcom/nineoldandroids/view/animation/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 58
    .line 59
    return-void
.end method

.method static synthetic D(Lcom/nineoldandroids/view/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/view/e;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/view/e;->j:Lcom/nineoldandroids/animation/a$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Lcom/nineoldandroids/view/e;Lcom/nineoldandroids/animation/a$a;)Lcom/nineoldandroids/animation/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/view/e;->j:Lcom/nineoldandroids/animation/a$a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic G(Lcom/nineoldandroids/view/e;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic H(Lcom/nineoldandroids/view/e;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nineoldandroids/view/e;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic I(Lcom/nineoldandroids/view/e;IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/view/e;->N(IF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private J(IF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/e;->M(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-float/2addr p2, v0

    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/nineoldandroids/view/e;->L(IFF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private K(IF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/e;->M(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/nineoldandroids/view/e;->L(IFF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private L(IFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/nineoldandroids/animation/a;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/nineoldandroids/view/e$d;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/nineoldandroids/view/e$d;->a(I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget v2, v2, Lcom/nineoldandroids/view/e$d;->a:I

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_0
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/a;->cancel()V

    .line 54
    .line 55
    .line 56
    :cond_2
    new-instance v0, Lcom/nineoldandroids/view/e$c;

    .line 57
    .line 58
    invoke-direct {v0, p1, p2, p3}, Lcom/nineoldandroids/view/e$c;-><init>(IFF)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->c:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/view/View;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iget-object p2, p0, Lcom/nineoldandroids/view/e;->m:Ljava/lang/Runnable;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/nineoldandroids/view/e;->m:Ljava/lang/Runnable;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method private M(I)F
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_9

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_7

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-eq p1, v0, :cond_6

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    if-eq p1, v0, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    if-eq p1, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x40

    .line 23
    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x80

    .line 27
    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x100

    .line 31
    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x200

    .line 35
    .line 36
    if-eq p1, v0, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->b()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->q()F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->p()F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->h()F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->g()F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :cond_5
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->f()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_6
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->j()F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    return p1

    .line 89
    :cond_7
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->i()F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    return p1

    .line 96
    :cond_8
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->o()F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    return p1

    .line 103
    :cond_9
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->m()F

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    return p1
.end method

.method private N(IF)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_9

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_7

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-eq p1, v0, :cond_6

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    if-eq p1, v0, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    if-eq p1, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x40

    .line 23
    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x80

    .line 27
    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x100

    .line 31
    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x200

    .line 35
    .line 36
    if-eq p1, v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->t(F)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->G(F)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->F(F)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->y(F)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->x(F)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->w(F)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->A(F)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->z(F)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_8
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->E(F)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_9
    iget-object p1, p0, Lcom/nineoldandroids/view/e;->b:Lcom/nineoldandroids/view/animation/a;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->D(F)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method private O()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 8
    .line 9
    invoke-static {v0}, Lcom/nineoldandroids/animation/q;->V([F)Lcom/nineoldandroids/animation/q;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v2, v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/nineoldandroids/view/e$c;

    .line 38
    .line 39
    iget v5, v5, Lcom/nineoldandroids/view/e$c;->a:I

    .line 40
    .line 41
    or-int/2addr v4, v5

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    .line 46
    .line 47
    new-instance v3, Lcom/nineoldandroids/view/e$d;

    .line 48
    .line 49
    invoke-direct {v3, v4, v1}, Lcom/nineoldandroids/view/e$d;-><init>(ILjava/util/ArrayList;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->k:Lcom/nineoldandroids/view/e$b;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->D(Lcom/nineoldandroids/animation/q$g;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->k:Lcom/nineoldandroids/view/e$b;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 63
    .line 64
    .line 65
    iget-boolean v1, p0, Lcom/nineoldandroids/view/e;->g:Z

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget-wide v1, p0, Lcom/nineoldandroids/view/e;->f:J

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/q;->n(J)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-boolean v1, p0, Lcom/nineoldandroids/view/e;->e:Z

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-wide v1, p0, Lcom/nineoldandroids/view/e;->d:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/q;->d0(J)Lcom/nineoldandroids/animation/q;

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-boolean v1, p0, Lcom/nineoldandroids/view/e;->i:Z

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->h:Landroid/view/animation/Interpolator;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/q;->m(Landroid/view/animation/Interpolator;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/q;->r()V

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public A(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public B(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public C(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public a(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->n:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/nineoldandroids/animation/a;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/a;->cancel()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->l:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/nineoldandroids/view/e;->c:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/View;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/nineoldandroids/view/e;->m:Ljava/lang/Runnable;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/view/e;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/nineoldandroids/view/e;->d:J

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    new-instance v0, Lcom/nineoldandroids/animation/q;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/nineoldandroids/animation/q;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/q;->e()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/view/e;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/nineoldandroids/view/e;->f:J

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    return-wide v0
.end method

.method public g(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public i(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public j(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public k(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public l(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public m(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public n(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public o(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public p(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public q(J)Lcom/nineoldandroids/view/b;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->e:Z

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/nineoldandroids/view/e;->d:J

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Animators cannot have negative duration: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public r(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->i:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/nineoldandroids/view/e;->h:Landroid/view/animation/Interpolator;

    .line 5
    .line 6
    return-object p0
.end method

.method public s(Lcom/nineoldandroids/animation/a$a;)Lcom/nineoldandroids/view/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/view/e;->j:Lcom/nineoldandroids/animation/a$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(J)Lcom/nineoldandroids/view/b;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/nineoldandroids/view/e;->g:Z

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/nineoldandroids/view/e;->f:J

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Animators cannot have negative duration: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public u()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/view/e;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public v(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public w(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public x(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public y(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->K(IF)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public z(F)Lcom/nineoldandroids/view/b;
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/e;->J(IF)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
