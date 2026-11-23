.class public Lcom/join/mgps/ptr/PtrFrameLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ptr/PtrFrameLayout$c;,
        Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final F:B = 0x1t

.field public static final G:B = 0x2t

.field public static final H:B = 0x3t

.field public static final I:B = 0x4t

.field private static final J:Z = true

.field public static K:Z = false

.field private static L:I = 0x1

.field private static M:B = 0x1t

.field private static N:B = 0x2t

.field private static O:B = 0x4t

.field private static P:B = 0x8t

.field private static Q:B = 0x3t


# instance fields
.field protected A:I

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private b:B

.field protected final c:Ljava/lang/String;

.field protected d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/view/View;

.field private l:Lcom/join/mgps/ptr/d;

.field private m:Lcom/join/mgps/ptr/b;

.field private n:Lcom/join/mgps/ptr/PtrFrameLayout$c;

.field private o:I

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Landroid/view/MotionEvent;

.field private u:Lcom/join/mgps/ptr/e;

.field private v:I

.field private w:J

.field private x:Lcom/join/mgps/ptr/indicator/a;

.field private y:Z

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 4
    iput-byte p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ptr-frame-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/join/mgps/ptr/PtrFrameLayout;->L:I

    add-int/2addr v1, p3

    sput v1, Lcom/join/mgps/ptr/PtrFrameLayout;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->e:I

    .line 7
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    const/16 v1, 0xc8

    .line 8
    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    const/16 v1, 0x190

    .line 9
    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:I

    .line 10
    iput-boolean p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Z

    .line 12
    invoke-static {}, Lcom/join/mgps/ptr/d;->h()Lcom/join/mgps/ptr/d;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:Z

    .line 14
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->s:Z

    const/16 v1, 0x1f4

    .line 16
    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->v:I

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:J

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->y:Z

    .line 19
    new-instance v1, Lcom/join/mgps/ptr/PtrFrameLayout$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/ptr/PtrFrameLayout$a;-><init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->z:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lcom/join/mgps/ptr/indicator/a;

    invoke-direct {v1}, Lcom/join/mgps/ptr/indicator/a;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 21
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->PtrFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 22
    iget v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->e:I

    .line 23
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    .line 24
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    const/16 v2, 0x8

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->m()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/join/mgps/ptr/indicator/a;->K(F)V

    .line 27
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    .line 28
    iget p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:I

    .line 29
    iget-object p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p3}, Lcom/join/mgps/ptr/indicator/a;->l()F

    move-result p3

    const/4 v1, 0x7

    .line 30
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 31
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v1, p3}, Lcom/join/mgps/ptr/indicator/a;->J(F)V

    const/4 p3, 0x5

    .line 32
    iget-boolean v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    const/4 p3, 0x6

    .line 33
    iget-boolean v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Z

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Z

    const/4 p3, 0x4

    .line 34
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->A:I

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    :cond_0
    new-instance p1, Lcom/join/mgps/ptr/PtrFrameLayout$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;-><init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->n:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->o:I

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/ptr/d;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/d;->e(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "PtrUIHandler: onUIRefreshBegin"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lz6/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/b;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0, p0}, Lcom/join/mgps/ptr/b;->onRefreshBegin(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method private B()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    iput-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->n:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c(Lcom/join/mgps/ptr/PtrFrameLayout$c;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->n:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c(Lcom/join/mgps/ptr/PtrFrameLayout$c;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    aput-object v3, v2, v1

    .line 39
    .line 40
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v3, 0x1

    .line 47
    aput-object v1, v2, v3

    .line 48
    .line 49
    const-string v1, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s"

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lz6/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-direct {p0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->u(Z)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private E()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "send cancel event"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lz6/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->t:Landroid/view/MotionEvent;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    int-to-long v5, v5

    .line 30
    add-long/2addr v3, v5

    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private F()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "send down event"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lz6/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->t:Landroid/view/MotionEvent;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->x()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->n:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iget v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:I

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->h(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private H()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private I()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private J()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private K()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->u()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/ptr/d;->j()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/d;->d(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 28
    .line 29
    .line 30
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "PtrUIHandler: onUIReset"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lz6/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 42
    iput-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->i()V

    .line 45
    .line 46
    .line 47
    return v0

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    return v0
.end method

.method private L()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->v()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->w()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    :cond_2
    const/4 v0, 0x3

    .line 31
    iput-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->A()V

    .line 34
    .line 35
    .line 36
    :cond_3
    return v2
.end method

.method private M(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "change"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->x()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->y:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->s()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->y:Z

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->E()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->p()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-byte v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 42
    .line 43
    if-eq v2, v1, :cond_3

    .line 44
    .line 45
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->n()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    iget-byte v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 54
    .line 55
    if-ne v2, v4, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->m()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    :cond_3
    iput-byte v5, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 66
    .line 67
    invoke-virtual {v2, p0}, Lcom/join/mgps/ptr/d;->b(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 68
    .line 69
    .line 70
    sget-boolean v2, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 75
    .line 76
    new-array v6, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    iget v7, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 79
    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    aput-object v7, v6, v3

    .line 85
    .line 86
    const-string v7, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    .line 87
    .line 88
    invoke-static {v2, v7, v6}, Lz6/a;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->o()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->K()Z

    .line 100
    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->F()V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-byte v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 108
    .line 109
    if-ne v2, v5, :cond_7

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_6

    .line 118
    .line 119
    iget-boolean v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Z

    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->b()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_6

    .line 130
    .line 131
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->L()Z

    .line 132
    .line 133
    .line 134
    :cond_6
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->z()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_7

    .line 139
    .line 140
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->q()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_7

    .line 147
    .line 148
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->L()Z

    .line 149
    .line 150
    .line 151
    :cond_7
    sget-boolean v2, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 152
    .line 153
    if-eqz v2, :cond_8

    .line 154
    .line 155
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 156
    .line 157
    const/4 v6, 0x5

    .line 158
    new-array v6, v6, [Ljava/lang/Object;

    .line 159
    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    aput-object v7, v6, v3

    .line 165
    .line 166
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    aput-object v3, v6, v1

    .line 177
    .line 178
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->g()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    aput-object v1, v6, v5

    .line 189
    .line 190
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const/4 v3, 0x3

    .line 201
    aput-object v1, v6, v3

    .line 202
    .line 203
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->p:I

    .line 204
    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    aput-object v1, v6, v4

    .line 210
    .line 211
    const-string v1, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s"

    .line 212
    .line 213
    invoke-static {v2, v1, v6}, Lz6/a;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_8
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 217
    .line 218
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->o()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_9

    .line 226
    .line 227
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 228
    .line 229
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 230
    .line 231
    .line 232
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/join/mgps/ptr/d;->j()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_a

    .line 242
    .line 243
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 244
    .line 245
    iget-byte v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 246
    .line 247
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 248
    .line 249
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/join/mgps/ptr/d;->c(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V

    .line 250
    .line 251
    .line 252
    :cond_a
    iget-byte p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 253
    .line 254
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 255
    .line 256
    invoke-virtual {p0, v0, p1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->v(ZBLcom/join/mgps/ptr/indicator/a;)V

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/ptr/PtrFrameLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->u(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/ptr/PtrFrameLayout;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->t(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 2
    .line 3
    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->Q:B

    .line 4
    .line 5
    not-int v1, v1

    .line 6
    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 8
    .line 9
    return-void
.end method

.method private r()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    const/4 v7, 0x4

    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 29
    .line 30
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 31
    .line 32
    add-int/2addr v9, v1

    .line 33
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 34
    .line 35
    add-int/2addr v3, v2

    .line 36
    add-int/2addr v3, v0

    .line 37
    iget v10, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->p:I

    .line 38
    .line 39
    sub-int/2addr v3, v10

    .line 40
    iget-object v10, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    add-int/2addr v10, v9

    .line 47
    iget-object v11, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    add-int/2addr v11, v3

    .line 54
    iget-object v12, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v12, v9, v3, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 57
    .line 58
    .line 59
    sget-boolean v12, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 60
    .line 61
    if-eqz v12, :cond_0

    .line 62
    .line 63
    iget-object v12, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 64
    .line 65
    new-array v13, v7, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    aput-object v9, v13, v8

    .line 72
    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    aput-object v3, v13, v6

    .line 78
    .line 79
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    aput-object v3, v13, v5

    .line 84
    .line 85
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    aput-object v3, v13, v4

    .line 90
    .line 91
    const-string v3, "onLayout header: %s %s %s %s"

    .line 92
    .line 93
    invoke-static {v12, v3, v13}, Lz6/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->o()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_1

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    .line 115
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 116
    .line 117
    add-int/2addr v1, v9

    .line 118
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 119
    .line 120
    add-int/2addr v2, v3

    .line 121
    add-int/2addr v2, v0

    .line 122
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    add-int/2addr v0, v1

    .line 129
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    add-int/2addr v3, v2

    .line 136
    sget-boolean v9, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 137
    .line 138
    if-eqz v9, :cond_2

    .line 139
    .line 140
    iget-object v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 141
    .line 142
    new-array v7, v7, [Ljava/lang/Object;

    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    aput-object v10, v7, v8

    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    aput-object v8, v7, v6

    .line 155
    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    aput-object v6, v7, v5

    .line 161
    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    aput-object v5, v7, v4

    .line 167
    .line 168
    const-string v4, "onLayout content: %s %s %s %s"

    .line 169
    .line 170
    invoke-static {v9, v4, v7}, Lz6/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 174
    .line 175
    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 176
    .line 177
    .line 178
    :cond_3
    return-void
.end method

.method private s(Landroid/view/View;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "parentWidthMeasureSpec",
            "parentHeightMeasureSpec"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v1, v2

    .line 19
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 23
    .line 24
    add-int/2addr v1, v2

    .line 25
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 26
    .line 27
    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/2addr v1, v2

    .line 40
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 41
    .line 42
    add-int/2addr v1, v2

    .line 43
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 44
    .line 45
    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    return-void
.end method

.method private t(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaY"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->u()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-boolean p1, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "has reached the top"

    .line 22
    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Lz6/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    float-to-int p1, p1

    .line 40
    add-int/2addr v0, p1

    .line 41
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/indicator/a;->M(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    sget-boolean p1, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "over top"

    .line 56
    .line 57
    new-array v2, v1, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Lz6/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v1, v0

    .line 68
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lcom/join/mgps/ptr/indicator/a;->E(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/a;->g()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    sub-int/2addr v1, p1

    .line 80
    invoke-direct {p0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->M(I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private u(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreHook"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->u:Lcom/join/mgps/ptr/e;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    sget-boolean p1, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "notifyUIRefreshComplete mRefreshCompleteHook run."

    .line 22
    .line 23
    invoke-static {p1, v0}, Lz6/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->u:Lcom/join/mgps/ptr/e;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/ptr/e;->d()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/ptr/d;->j()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    sget-boolean p1, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "PtrUIHandler: onUIRefreshComplete"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lz6/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lcom/join/mgps/ptr/d;->a(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/a;->B()V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->I()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->K()Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private y(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stayForLoading"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->L()Z

    .line 2
    .line 3
    .line 4
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->v()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-nez p1, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->n:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->h()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->h(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->J()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p1, 0x4

    .line 42
    if-ne v0, p1, :cond_2

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->u(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->H()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method private z()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 2
    .line 3
    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->Q:B

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->N:B

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method


# virtual methods
.method public final C()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "refreshComplete"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lz6/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->u:Lcom/join/mgps/ptr/e;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/ptr/e;->a()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->v:I

    .line 20
    .line 21
    int-to-long v0, v0

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iget-wide v4, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:J

    .line 27
    .line 28
    sub-long/2addr v2, v4

    .line 29
    sub-long/2addr v0, v2

    .line 30
    long-to-int v1, v0

    .line 31
    if-gtz v1, :cond_3

    .line 32
    .line 33
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "performRefreshComplete at once"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lz6/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->B()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->z:Ljava/lang/Runnable;

    .line 49
    .line 50
    int-to-long v2, v1

    .line 51
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    aput-object v1, v2, v3

    .line 69
    .line 70
    const-string v1, "performRefreshComplete after delay: %s"

    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Lz6/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_0
    return-void
.end method

.method public D(Lcom/join/mgps/ptr/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptrUIHandler"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/ptr/d;->k(Lcom/join/mgps/ptr/d;Lcom/join/mgps/ptr/c;)Lcom/join/mgps/ptr/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 8
    .line 9
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_10

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v0, :cond_f

    .line 25
    .line 26
    if-eq v0, v3, :cond_b

    .line 27
    .line 28
    const/4 v4, 0x3

    .line 29
    const/4 v5, 0x2

    .line 30
    if-eq v0, v5, :cond_1

    .line 31
    .line 32
    if-eq v0, v4, :cond_b

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->t:Landroid/view/MotionEvent;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual {v0, v6, v7}, Lcom/join/mgps/ptr/indicator/a;->y(FF)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->j()F

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->k()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-boolean v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:Z

    .line 63
    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    iget v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->B:F

    .line 75
    .line 76
    iget v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->D:F

    .line 77
    .line 78
    sub-float v9, v6, v9

    .line 79
    .line 80
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    add-float/2addr v8, v9

    .line 85
    iput v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->B:F

    .line 86
    .line 87
    iget v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->C:F

    .line 88
    .line 89
    iget v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->E:F

    .line 90
    .line 91
    sub-float v9, v7, v9

    .line 92
    .line 93
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    add-float/2addr v8, v9

    .line 98
    iput v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->C:F

    .line 99
    .line 100
    iput v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->D:F

    .line 101
    .line 102
    iput v7, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->E:F

    .line 103
    .line 104
    iget v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->B:F

    .line 105
    .line 106
    cmpl-float v6, v6, v8

    .line 107
    .line 108
    if-lez v6, :cond_2

    .line 109
    .line 110
    iget-object v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/join/mgps/ptr/indicator/a;->u()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_2

    .line 117
    .line 118
    iput-boolean v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->s:Z

    .line 119
    .line 120
    :cond_2
    iget-boolean v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->s:Z

    .line 121
    .line 122
    if-eqz v6, :cond_3

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    return p1

    .line 129
    :cond_3
    cmpl-float v1, v0, v1

    .line 130
    .line 131
    if-lez v1, :cond_4

    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    goto :goto_0

    .line 135
    :cond_4
    const/4 v1, 0x0

    .line 136
    :goto_0
    xor-int/lit8 v6, v1, 0x1

    .line 137
    .line 138
    iget-object v7, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 139
    .line 140
    invoke-virtual {v7}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    sget-boolean v8, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 145
    .line 146
    if-eqz v8, :cond_6

    .line 147
    .line 148
    iget-object v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/b;

    .line 149
    .line 150
    if-eqz v8, :cond_5

    .line 151
    .line 152
    iget-object v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 153
    .line 154
    iget-object v10, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 155
    .line 156
    invoke-interface {v8, p0, v9, v10}, Lcom/join/mgps/ptr/b;->checkCanDoRefresh(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_5

    .line 161
    .line 162
    const/4 v8, 0x1

    .line 163
    goto :goto_1

    .line 164
    :cond_5
    const/4 v8, 0x0

    .line 165
    :goto_1
    iget-object v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 166
    .line 167
    const/4 v10, 0x6

    .line 168
    new-array v10, v10, [Ljava/lang/Object;

    .line 169
    .line 170
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    aput-object v11, v10, v2

    .line 175
    .line 176
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    aput-object v2, v10, v3

    .line 187
    .line 188
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    aput-object v2, v10, v5

    .line 193
    .line 194
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    aput-object v2, v10, v4

    .line 199
    .line 200
    const/4 v2, 0x4

    .line 201
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    aput-object v4, v10, v2

    .line 206
    .line 207
    const/4 v2, 0x5

    .line 208
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    aput-object v4, v10, v2

    .line 213
    .line 214
    const-string v2, "ACTION_MOVE: offsetY:%s, currentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s"

    .line 215
    .line 216
    invoke-static {v9, v2, v10}, Lz6/a;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    if-eqz v1, :cond_7

    .line 220
    .line 221
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/b;

    .line 222
    .line 223
    if-eqz v2, :cond_7

    .line 224
    .line 225
    iget-object v4, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 226
    .line 227
    iget-object v5, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 228
    .line 229
    invoke-interface {v2, p0, v4, v5}, Lcom/join/mgps/ptr/b;->checkCanDoRefresh(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-nez v2, :cond_7

    .line 234
    .line 235
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    return p1

    .line 240
    :cond_7
    if-eqz v6, :cond_8

    .line 241
    .line 242
    if-nez v7, :cond_9

    .line 243
    .line 244
    :cond_8
    if-eqz v1, :cond_a

    .line 245
    .line 246
    :cond_9
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->t(F)V

    .line 247
    .line 248
    .line 249
    return v3

    .line 250
    :cond_a
    :goto_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    return p1

    .line 255
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->A()V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_e

    .line 267
    .line 268
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 269
    .line 270
    if-eqz v0, :cond_c

    .line 271
    .line 272
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 273
    .line 274
    const-string v1, "call onRelease when user release"

    .line 275
    .line 276
    invoke-static {v0, v1}, Lz6/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :cond_c
    invoke-direct {p0, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->y(Z)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->s()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_d

    .line 289
    .line 290
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->E()V

    .line 291
    .line 292
    .line 293
    return v3

    .line 294
    :cond_d
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    return p1

    .line 299
    :cond_e
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    return p1

    .line 304
    :cond_f
    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->C:F

    .line 305
    .line 306
    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->B:F

    .line 307
    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->D:F

    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->E:F

    .line 319
    .line 320
    iput-boolean v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->y:Z

    .line 321
    .line 322
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 323
    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    invoke-virtual {v0, v1, v4}, Lcom/join/mgps/ptr/indicator/a;->z(FF)V

    .line 333
    .line 334
    .line 335
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->n:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->a()V

    .line 338
    .line 339
    .line 340
    iput-boolean v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->s:Z

    .line 341
    .line 342
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    .line 343
    .line 344
    .line 345
    return v3

    .line 346
    :cond_10
    :goto_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    return p1
.end method

.method public e(Lcom/join/mgps/ptr/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptrUIHandler"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/ptr/d;->f(Lcom/join/mgps/ptr/d;Lcom/join/mgps/ptr/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:I

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->h(ZI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public g(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atOnce"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->h(ZI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDurationToClose()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    return v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->i()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->l()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getResistance()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->m()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "atOnce",
            "duration"
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget-byte v2, Lcom/join/mgps/ptr/PtrFrameLayout;->M:B

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    sget-byte v2, Lcom/join/mgps/ptr/PtrFrameLayout;->N:B

    .line 15
    .line 16
    :goto_0
    or-int/2addr v0, v2

    .line 17
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    iput-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/ptr/d;->j()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/d;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/d;->b(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 33
    .line 34
    .line 35
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 40
    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    iget v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x0

    .line 50
    aput-object v2, v1, v3

    .line 51
    .line 52
    const-string v2, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    .line 53
    .line 54
    invoke-static {v0, v2, v1}, Lz6/a;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->n:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->i()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1, p2}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->h(II)V

    .line 66
    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    const/4 p1, 0x3

    .line 71
    iput-byte p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->A()V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public j(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public k(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 2
    .line 3
    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->Q:B

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 2
    .line 3
    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->O:B

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 2
    .line 3
    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->P:B

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->n:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b(Lcom/join/mgps/ptr/PtrFrameLayout$c;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->z:Ljava/lang/Runnable;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-gt v0, v1, :cond_d

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v0, v1, :cond_9

    .line 11
    .line 12
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->e:I

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 45
    .line 46
    if-nez v0, :cond_b

    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    instance-of v2, v0, Lcom/join/mgps/ptr/c;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    instance-of v2, v1, Lcom/join/mgps/ptr/c;

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 75
    .line 76
    if-nez v2, :cond_5

    .line 77
    .line 78
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 79
    .line 80
    if-nez v3, :cond_5

    .line 81
    .line 82
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 88
    .line 89
    if-nez v3, :cond_7

    .line 90
    .line 91
    if-ne v2, v0, :cond_6

    .line 92
    .line 93
    move-object v0, v1

    .line 94
    :cond_6
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_7
    if-ne v3, v0, :cond_8

    .line 98
    .line 99
    move-object v0, v1

    .line 100
    :cond_8
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_9
    if-ne v0, v3, :cond_a

    .line 104
    .line 105
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_a
    new-instance v0, Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 122
    .line 123
    .line 124
    const v1, -0x9a00

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    const/16 v1, 0x11

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    .line 134
    .line 135
    const/high16 v1, 0x41a00000    # 20.0f

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    .line 139
    .line 140
    const-string v1, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 151
    .line 152
    if-eqz v0, :cond_c

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 155
    .line 156
    .line 157
    :cond_c
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    const-string v1, "PtrFrameLayout only can host 2 elements"

    .line 164
    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "flag",
            "i",
            "j",
            "k",
            "l"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    move-object v6, p0

    .line 2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 3
    .line 4
    .line 5
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 6
    .line 7
    const/4 v7, 0x5

    .line 8
    const/4 v8, 0x4

    .line 9
    const/4 v9, 0x6

    .line 10
    const/4 v10, 0x3

    .line 11
    const/4 v11, 0x2

    .line 12
    const/4 v12, 0x1

    .line 13
    const/4 v13, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 17
    .line 18
    new-array v1, v9, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    aput-object v2, v1, v13

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    aput-object v2, v1, v12

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    aput-object v2, v1, v11

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    aput-object v2, v1, v10

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    aput-object v2, v1, v8

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    aput-object v2, v1, v7

    .line 79
    .line 80
    const-string v2, "onMeasure frame: width: %s, h eight: %s, padding: %s %s %s %s"

    .line 81
    .line 82
    invoke-static {v0, v2, v1}, Lz6/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object v1, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v5, 0x0

    .line 91
    move-object v0, p0

    .line 92
    move v2, p1

    .line 93
    move/from16 v4, p2

    .line 94
    .line 95
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 96
    .line 97
    .line 98
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 105
    .line 106
    iget-object v1, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 113
    .line 114
    add-int/2addr v1, v2

    .line 115
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 116
    .line 117
    add-int/2addr v1, v0

    .line 118
    iput v1, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->p:I

    .line 119
    .line 120
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/indicator/a;->F(I)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    move v1, p1

    .line 130
    move/from16 v2, p2

    .line 131
    .line 132
    invoke-direct {p0, v0, p1, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->s(Landroid/view/View;II)V

    .line 133
    .line 134
    .line 135
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 136
    .line 137
    if-eqz v0, :cond_2

    .line 138
    .line 139
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 146
    .line 147
    iget-object v1, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 148
    .line 149
    new-array v2, v9, [Ljava/lang/Object;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    aput-object v3, v2, v13

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    aput-object v3, v2, v12

    .line 170
    .line 171
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 172
    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    aput-object v3, v2, v11

    .line 178
    .line 179
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 180
    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    aput-object v3, v2, v10

    .line 186
    .line 187
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 188
    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    aput-object v3, v2, v8

    .line 194
    .line 195
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 196
    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    aput-object v0, v2, v7

    .line 202
    .line 203
    const-string v0, "onMeasure content, width: %s, height: %s, margin: %s %s %s %s"

    .line 204
    .line 205
    invoke-static {v1, v0, v2}, Lz6/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 209
    .line 210
    new-array v1, v10, [Ljava/lang/Object;

    .line 211
    .line 212
    iget-object v2, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    aput-object v2, v1, v13

    .line 223
    .line 224
    iget-object v2, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->g()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    aput-object v2, v1, v12

    .line 235
    .line 236
    iget-object v2, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    aput-object v2, v1, v11

    .line 247
    .line 248
    const-string v2, "onMeasure, currentPos: %s, lastPos: %s, top: %s"

    .line 249
    .line 250
    invoke-static {v0, v2, v1}, Lz6/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_2
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:B

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public setDurationToClose(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnabledNextPtrAtOnce(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 4
    .line 5
    sget-byte v0, Lcom/join/mgps/ptr/PtrFrameLayout;->O:B

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 12
    .line 13
    sget-byte v0, Lcom/join/mgps/ptr/PtrFrameLayout;->O:B

    .line 14
    .line 15
    not-int v0, v0

    .line 16
    and-int/2addr p1, v0

    .line 17
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "header"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, -0x2

    .line 22
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "yes"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keepOrNot"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->v:I

    .line 2
    .line 3
    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->H(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->I(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPinContent(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinContent"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 4
    .line 5
    sget-byte v0, Lcom/join/mgps/ptr/PtrFrameLayout;->P:B

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 12
    .line 13
    sget-byte v0, Lcom/join/mgps/ptr/PtrFrameLayout;->P:B

    .line 14
    .line 15
    not-int v0, v0

    .line 16
    and-int/2addr p1, v0

    .line 17
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:I

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setPtrHandler(Lcom/join/mgps/ptr/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptrHandler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/b;

    .line 2
    .line 3
    return-void
.end method

.method public setPtrIndicator(Lcom/join/mgps/ptr/indicator/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slider"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/indicator/a;->a(Lcom/join/mgps/ptr/indicator/a;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 11
    .line 12
    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pullToRefresh"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->J(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRefreshCompleteHook(Lcom/join/mgps/ptr/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hook"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->u:Lcom/join/mgps/ptr/e;

    .line 2
    .line 3
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$b;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/join/mgps/ptr/PtrFrameLayout$b;-><init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/e;->c(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setResistance(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resistance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->K(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected v(ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isInTouching",
            "status",
            "mPtrIndicator"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "call onRelease after scroll abort"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lz6/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->y(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method protected x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Lcom/join/mgps/ptr/indicator/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->K:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "call onRelease after scroll finish"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lz6/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->y(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
