.class public Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;
    }
.end annotation


# static fields
.field static final O:F = 1.4f

.field private static final P:I = 0x5

.field private static final Q:F = 0.8f

.field private static final R:F = 6.0f


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:I

.field private H:I

.field private I:F

.field J:J

.field K:I

.field private L:I

.field private M:I

.field private N:I

.field b:Landroid/content/Context;

.field c:Landroid/os/Handler;

.field private d:Landroid/view/GestureDetector;

.field e:Li/c;

.field f:Ljava/util/concurrent/ScheduledExecutorService;

.field private g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field h:Landroid/graphics/Paint;

.field i:Landroid/graphics/Paint;

.field j:Landroid/graphics/Paint;

.field k:Lh/c;

.field private l:Ljava/lang/String;

.field m:I

.field n:I

.field o:I

.field p:F

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:F

.field v:F

.field w:F

.field x:I

.field y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f:Ljava/util/concurrent/ScheduledExecutorService;

    const/16 v0, 0xb

    .line 4
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->C:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->I:F

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->J:J

    const/16 v1, 0x11

    .line 8
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->L:I

    .line 9
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->M:I

    .line 10
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->N:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/airsaid/pickerviewlibrary/R$color;->pickerview_wheelview_textcolor_out:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->q:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/airsaid/pickerviewlibrary/R$color;->pickerview_wheelview_textcolor_center:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->r:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/airsaid/pickerviewlibrary/R$color;->pickerview_wheelview_textcolor_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/airsaid/pickerviewlibrary/R$dimen;->pickerview_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m:I

    if-eqz p2, :cond_0

    .line 15
    sget-object v2, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 16
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_gravity:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->L:I

    .line 17
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_textColorOut:I

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->q:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->q:I

    .line 18
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_textColorCenter:I

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->r:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->r:I

    .line 19
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_dividerColor:I

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:I

    .line 20
    sget v0, Lcom/airsaid/pickerviewlibrary/R$styleable;->PickerView_Library_pickerview_textSize:I

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m:I

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->e(Landroid/content/Context;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    instance-of v0, p1, Lj/a;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lj/a;

    .line 11
    .line 12
    invoke-interface {p1}, Lj/a;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private c(I)I
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 4
    .line 5
    invoke-interface {v0}, Lh/c;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr p1, v0

    .line 10
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 16
    .line 17
    invoke-interface {v0}, Lh/c;->a()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    if-le p1, v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 26
    .line 27
    invoke-interface {v0}, Lh/c;->a()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr p1, v0

    .line 32
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :cond_1
    :goto_0
    return p1
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/c;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/c;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v0, Landroid/view/GestureDetector;

    .line 11
    .line 12
    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/b;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->d:Landroid/view/GestureDetector;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 24
    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:Z

    .line 27
    .line 28
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->q:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 20
    .line 21
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 27
    .line 28
    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m:I

    .line 29
    .line 30
    int-to-float v2, v2

    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 40
    .line 41
    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->r:I

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 52
    .line 53
    const v2, 0x3f8ccccd    # 1.1f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 60
    .line 61
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 67
    .line 68
    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m:I

    .line 69
    .line 70
    int-to-float v2, v2

    .line 71
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Landroid/graphics/Paint;

    .line 80
    .line 81
    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->s:I

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private g()V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 9
    .line 10
    invoke-interface {v3}, Lh/c;->a()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Lh/c;->getItem(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {p0, v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v4, v3, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    .line 40
    .line 41
    if-le v3, v4, :cond_0

    .line 42
    .line 43
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->n:I

    .line 44
    .line 45
    :cond_0
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 46
    .line 47
    const-string v4, "\u661f\u671f"

    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 58
    .line 59
    if-le v3, v4, :cond_1

    .line 60
    .line 61
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 62
    .line 63
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 67
    .line 68
    int-to-float v0, v0

    .line 69
    const v1, 0x3fb33333    # 1.4f

    .line 70
    .line 71
    .line 72
    mul-float v0, v0, v1

    .line 73
    .line 74
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 75
    .line 76
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->L:I

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x11

    .line 25
    .line 26
    if-eq p1, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sub-int/2addr p1, v0

    .line 36
    int-to-double v0, p1

    .line 37
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 38
    .line 39
    mul-double v0, v0, v2

    .line 40
    .line 41
    double-to-int p1, v0

    .line 42
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->M:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr p1, v0

    .line 52
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->M:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->M:I

    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->L:I

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x11

    .line 25
    .line 26
    if-eq p1, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sub-int/2addr p1, v0

    .line 36
    int-to-double v0, p1

    .line 37
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 38
    .line 39
    mul-double v0, v0, v2

    .line 40
    .line 41
    double-to-int p1, v0

    .line 42
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->N:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr p1, v0

    .line 52
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->N:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->N:I

    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 10
    .line 11
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->C:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    mul-float v0, v0, v1

    .line 17
    .line 18
    float-to-int v0, v0

    .line 19
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->F:I

    .line 20
    .line 21
    mul-int/lit8 v1, v0, 0x2

    .line 22
    .line 23
    int-to-double v1, v1

    .line 24
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    div-double/2addr v1, v3

    .line 30
    double-to-int v1, v1

    .line 31
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    .line 32
    .line 33
    int-to-double v0, v0

    .line 34
    div-double/2addr v0, v3

    .line 35
    double-to-int v0, v0

    .line 36
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    .line 37
    .line 38
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->K:I

    .line 39
    .line 40
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 45
    .line 46
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    .line 47
    .line 48
    int-to-float v1, v0

    .line 49
    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 50
    .line 51
    sub-float/2addr v1, v2

    .line 52
    const/high16 v3, 0x40000000    # 2.0f

    .line 53
    .line 54
    div-float/2addr v1, v3

    .line 55
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    .line 56
    .line 57
    int-to-float v1, v0

    .line 58
    add-float/2addr v1, v2

    .line 59
    div-float/2addr v1, v3

    .line 60
    iput v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->v:F

    .line 61
    .line 62
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 63
    .line 64
    add-int/2addr v0, v1

    .line 65
    int-to-float v0, v0

    .line 66
    div-float/2addr v0, v3

    .line 67
    const/high16 v1, 0x40c00000    # 6.0f

    .line 68
    .line 69
    sub-float/2addr v0, v1

    .line 70
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:F

    .line 71
    .line 72
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 73
    .line 74
    const/4 v1, -0x1

    .line 75
    if-ne v0, v1, :cond_2

    .line 76
    .line 77
    iget-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:Z

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 82
    .line 83
    invoke-interface {v0}, Lh/c;->a()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    div-int/lit8 v0, v0, 0x2

    .line 90
    .line 91
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 96
    .line 97
    :cond_2
    :goto_0
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 98
    .line 99
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-array v2, v1, [F

    .line 15
    .line 16
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    aget p2, v2, v0

    .line 23
    .line 24
    float-to-double v3, p2

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    double-to-int p2, v3

    .line 30
    add-int/2addr p1, p2

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, p1

    .line 35
    :cond_1
    return v0
.end method

.method public final getAdapter()Lh/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lh/c;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method protected final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->e:Li/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/d;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0xc8

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected final l(F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;F)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    const-wide/16 v4, 0x5

    .line 14
    .line 15
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 22
    .line 23
    return-void
.end method

.method m(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;->FLING:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;->DAGGLE:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;

    .line 9
    .line 10
    if-ne p1, v0, :cond_2

    .line 11
    .line 12
    :cond_0
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 16
    .line 17
    rem-float/2addr p1, v0

    .line 18
    add-float/2addr p1, v0

    .line 19
    rem-float/2addr p1, v0

    .line 20
    float-to-int p1, p1

    .line 21
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:I

    .line 22
    .line 23
    int-to-float v1, p1

    .line 24
    const/high16 v2, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float v2, v0, v2

    .line 27
    .line 28
    cmpl-float v1, v1, v2

    .line 29
    .line 30
    if-lez v1, :cond_1

    .line 31
    .line 32
    int-to-float p1, p1

    .line 33
    sub-float/2addr v0, p1

    .line 34
    float-to-int p1, v0

    .line 35
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    neg-int p1, p1

    .line 39
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    .line 43
    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;

    .line 44
    .line 45
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:I

    .line 46
    .line 47
    invoke-direct {v1, p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/e;-><init>(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;I)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    const-wide/16 v4, 0xa

    .line 53
    .line 54
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 61
    .line 62
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->C:I

    .line 11
    .line 12
    new-array v8, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 18
    .line 19
    div-float/2addr v2, v3

    .line 20
    float-to-int v2, v2

    .line 21
    iput v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->B:I

    .line 22
    .line 23
    :try_start_0
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 24
    .line 25
    invoke-interface {v1}, Lh/c;->a()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    rem-int/2addr v2, v1

    .line 30
    add-int/2addr v3, v2

    .line 31
    iput v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 35
    .line 36
    const-string v2, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-boolean v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:Z

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 47
    .line 48
    if-gez v1, :cond_1

    .line 49
    .line 50
    iput v9, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 51
    .line 52
    :cond_1
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 53
    .line 54
    iget-object v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 55
    .line 56
    invoke-interface {v2}, Lh/c;->a()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    if-le v1, v2, :cond_4

    .line 63
    .line 64
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 65
    .line 66
    invoke-interface {v1}, Lh/c;->a()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    iput v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 76
    .line 77
    if-gez v1, :cond_3

    .line 78
    .line 79
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 80
    .line 81
    invoke-interface {v1}, Lh/c;->a()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 86
    .line 87
    add-int/2addr v1, v2

    .line 88
    iput v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 89
    .line 90
    :cond_3
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 91
    .line 92
    iget-object v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 93
    .line 94
    invoke-interface {v2}, Lh/c;->a()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 99
    .line 100
    if-le v1, v2, :cond_4

    .line 101
    .line 102
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 103
    .line 104
    iget-object v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 105
    .line 106
    invoke-interface {v2}, Lh/c;->a()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    sub-int/2addr v1, v2

    .line 111
    iput v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 112
    .line 113
    :cond_4
    :goto_1
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 114
    .line 115
    int-to-float v1, v1

    .line 116
    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 117
    .line 118
    rem-float/2addr v1, v2

    .line 119
    float-to-int v10, v1

    .line 120
    const/4 v1, 0x0

    .line 121
    :goto_2
    iget v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->C:I

    .line 122
    .line 123
    if-ge v1, v2, :cond_8

    .line 124
    .line 125
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->A:I

    .line 126
    .line 127
    div-int/lit8 v2, v2, 0x2

    .line 128
    .line 129
    sub-int/2addr v2, v1

    .line 130
    sub-int/2addr v3, v2

    .line 131
    iget-boolean v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:Z

    .line 132
    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    invoke-direct {v0, v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->c(I)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    iget-object v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 140
    .line 141
    invoke-interface {v3, v2}, Lh/c;->getItem(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    aput-object v2, v8, v1

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    const-string v2, ""

    .line 149
    .line 150
    if-gez v3, :cond_6

    .line 151
    .line 152
    aput-object v2, v8, v1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    iget-object v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 156
    .line 157
    invoke-interface {v4}, Lh/c;->a()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    add-int/lit8 v4, v4, -0x1

    .line 162
    .line 163
    if-le v3, v4, :cond_7

    .line 164
    .line 165
    aput-object v2, v8, v1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    iget-object v2, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 169
    .line 170
    invoke-interface {v2, v3}, Lh/c;->getItem(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    aput-object v2, v8, v1

    .line 175
    .line 176
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_8
    const/4 v2, 0x0

    .line 180
    iget v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    .line 181
    .line 182
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 183
    .line 184
    int-to-float v4, v1

    .line 185
    iget-object v6, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Landroid/graphics/Paint;

    .line 186
    .line 187
    move-object/from16 v1, p1

    .line 188
    .line 189
    move v3, v5

    .line 190
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 191
    .line 192
    .line 193
    iget v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->v:F

    .line 194
    .line 195
    iget v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 196
    .line 197
    int-to-float v4, v1

    .line 198
    iget-object v6, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->j:Landroid/graphics/Paint;

    .line 199
    .line 200
    move-object/from16 v1, p1

    .line 201
    .line 202
    move v3, v5

    .line 203
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:Ljava/lang/String;

    .line 207
    .line 208
    const/high16 v2, 0x40c00000    # 6.0f

    .line 209
    .line 210
    if-eqz v1, :cond_9

    .line 211
    .line 212
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 213
    .line 214
    iget-object v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 215
    .line 216
    invoke-virtual {v0, v4, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->d(Landroid/graphics/Paint;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    sub-int/2addr v3, v1

    .line 221
    iget-object v1, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:Ljava/lang/String;

    .line 222
    .line 223
    int-to-float v3, v3

    .line 224
    sub-float/2addr v3, v2

    .line 225
    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->w:F

    .line 226
    .line 227
    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 228
    .line 229
    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 230
    .line 231
    .line 232
    :cond_9
    const/4 v1, 0x0

    .line 233
    :goto_4
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->C:I

    .line 234
    .line 235
    if-ge v1, v3, :cond_10

    .line 236
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 238
    .line 239
    .line 240
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 241
    .line 242
    int-to-float v3, v3

    .line 243
    const v4, 0x3fb33333    # 1.4f

    .line 244
    .line 245
    .line 246
    mul-float v3, v3, v4

    .line 247
    .line 248
    int-to-float v4, v1

    .line 249
    mul-float v4, v4, v3

    .line 250
    .line 251
    int-to-float v5, v10

    .line 252
    sub-float/2addr v4, v5

    .line 253
    float-to-double v4, v4

    .line 254
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    mul-double v4, v4, v11

    .line 260
    .line 261
    iget v6, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->F:I

    .line 262
    .line 263
    int-to-double v13, v6

    .line 264
    div-double/2addr v4, v13

    .line 265
    div-double v11, v4, v11

    .line 266
    .line 267
    const-wide v13, 0x4066800000000000L    # 180.0

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    mul-double v11, v11, v13

    .line 273
    .line 274
    const-wide v13, 0x4056800000000000L    # 90.0

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    sub-double/2addr v13, v11

    .line 280
    double-to-float v6, v13

    .line 281
    const/high16 v11, 0x42b40000    # 90.0f

    .line 282
    .line 283
    cmpl-float v11, v6, v11

    .line 284
    .line 285
    if-gez v11, :cond_f

    .line 286
    .line 287
    const/high16 v11, -0x3d4c0000    # -90.0f

    .line 288
    .line 289
    cmpg-float v6, v6, v11

    .line 290
    .line 291
    if-gtz v6, :cond_a

    .line 292
    .line 293
    goto/16 :goto_7

    .line 294
    .line 295
    :cond_a
    aget-object v6, v8, v1

    .line 296
    .line 297
    invoke-direct {v0, v6}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-direct {v0, v6}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-direct {v0, v6}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    .line 308
    .line 309
    int-to-double v11, v11

    .line 310
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 311
    .line 312
    .line 313
    move-result-wide v13

    .line 314
    iget v15, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    .line 315
    .line 316
    move/from16 v16, v10

    .line 317
    .line 318
    int-to-double v9, v15

    .line 319
    mul-double v13, v13, v9

    .line 320
    .line 321
    sub-double/2addr v11, v13

    .line 322
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 323
    .line 324
    .line 325
    move-result-wide v9

    .line 326
    iget v13, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 327
    .line 328
    int-to-double v13, v13

    .line 329
    mul-double v9, v9, v13

    .line 330
    .line 331
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 332
    .line 333
    div-double/2addr v9, v13

    .line 334
    sub-double/2addr v11, v9

    .line 335
    double-to-float v9, v11

    .line 336
    const/4 v10, 0x0

    .line 337
    invoke-virtual {v7, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    .line 339
    .line 340
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 341
    .line 342
    .line 343
    move-result-wide v11

    .line 344
    double-to-float v11, v11

    .line 345
    const/high16 v12, 0x3f800000    # 1.0f

    .line 346
    .line 347
    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 348
    .line 349
    .line 350
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    .line 351
    .line 352
    const v13, 0x3f4ccccd    # 0.8f

    .line 353
    .line 354
    .line 355
    cmpg-float v14, v9, v11

    .line 356
    .line 357
    if-gtz v14, :cond_c

    .line 358
    .line 359
    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 360
    .line 361
    int-to-float v14, v14

    .line 362
    add-float/2addr v14, v9

    .line 363
    cmpl-float v14, v14, v11

    .line 364
    .line 365
    if-ltz v14, :cond_c

    .line 366
    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 368
    .line 369
    .line 370
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 371
    .line 372
    int-to-float v11, v11

    .line 373
    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    .line 374
    .line 375
    sub-float/2addr v14, v9

    .line 376
    invoke-virtual {v7, v10, v10, v11, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 377
    .line 378
    .line 379
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 380
    .line 381
    .line 382
    move-result-wide v14

    .line 383
    double-to-float v11, v14

    .line 384
    mul-float v11, v11, v13

    .line 385
    .line 386
    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 387
    .line 388
    .line 389
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->N:I

    .line 390
    .line 391
    int-to-float v11, v11

    .line 392
    iget v13, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 393
    .line 394
    int-to-float v13, v13

    .line 395
    iget-object v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 396
    .line 397
    invoke-virtual {v7, v6, v11, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 404
    .line 405
    .line 406
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->u:F

    .line 407
    .line 408
    sub-float/2addr v11, v9

    .line 409
    iget v9, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 410
    .line 411
    int-to-float v9, v9

    .line 412
    float-to-int v3, v3

    .line 413
    int-to-float v3, v3

    .line 414
    invoke-virtual {v7, v10, v11, v9, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 415
    .line 416
    .line 417
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 418
    .line 419
    .line 420
    move-result-wide v3

    .line 421
    double-to-float v3, v3

    .line 422
    mul-float v3, v3, v12

    .line 423
    .line 424
    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 425
    .line 426
    .line 427
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->M:I

    .line 428
    .line 429
    int-to-float v3, v3

    .line 430
    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 431
    .line 432
    int-to-float v4, v4

    .line 433
    sub-float/2addr v4, v2

    .line 434
    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 435
    .line 436
    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 440
    .line 441
    .line 442
    :cond_b
    :goto_5
    const/4 v10, 0x0

    .line 443
    goto/16 :goto_6

    .line 444
    .line 445
    :cond_c
    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->v:F

    .line 446
    .line 447
    cmpg-float v15, v9, v14

    .line 448
    .line 449
    if-gtz v15, :cond_d

    .line 450
    .line 451
    iget v15, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 452
    .line 453
    int-to-float v15, v15

    .line 454
    add-float/2addr v15, v9

    .line 455
    cmpl-float v15, v15, v14

    .line 456
    .line 457
    if-ltz v15, :cond_d

    .line 458
    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 460
    .line 461
    .line 462
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 463
    .line 464
    int-to-float v11, v11

    .line 465
    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->v:F

    .line 466
    .line 467
    sub-float/2addr v14, v9

    .line 468
    invoke-virtual {v7, v10, v10, v11, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 469
    .line 470
    .line 471
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 472
    .line 473
    .line 474
    move-result-wide v14

    .line 475
    double-to-float v11, v14

    .line 476
    mul-float v11, v11, v12

    .line 477
    .line 478
    invoke-virtual {v7, v12, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 479
    .line 480
    .line 481
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->M:I

    .line 482
    .line 483
    int-to-float v11, v11

    .line 484
    iget v14, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 485
    .line 486
    int-to-float v14, v14

    .line 487
    sub-float/2addr v14, v2

    .line 488
    iget-object v15, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 489
    .line 490
    invoke-virtual {v7, v6, v11, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 494
    .line 495
    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 497
    .line 498
    .line 499
    iget v11, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->v:F

    .line 500
    .line 501
    sub-float/2addr v11, v9

    .line 502
    iget v9, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 503
    .line 504
    int-to-float v9, v9

    .line 505
    float-to-int v3, v3

    .line 506
    int-to-float v3, v3

    .line 507
    invoke-virtual {v7, v10, v11, v9, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 508
    .line 509
    .line 510
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 511
    .line 512
    .line 513
    move-result-wide v3

    .line 514
    double-to-float v3, v3

    .line 515
    mul-float v3, v3, v13

    .line 516
    .line 517
    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 518
    .line 519
    .line 520
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->N:I

    .line 521
    .line 522
    int-to-float v3, v3

    .line 523
    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 524
    .line 525
    int-to-float v4, v4

    .line 526
    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 527
    .line 528
    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 532
    .line 533
    .line 534
    goto :goto_5

    .line 535
    :cond_d
    cmpl-float v10, v9, v11

    .line 536
    .line 537
    if-ltz v10, :cond_e

    .line 538
    .line 539
    iget v10, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 540
    .line 541
    int-to-float v10, v10

    .line 542
    add-float/2addr v10, v9

    .line 543
    cmpg-float v9, v10, v14

    .line 544
    .line 545
    if-gtz v9, :cond_e

    .line 546
    .line 547
    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 548
    .line 549
    float-to-int v3, v3

    .line 550
    const/4 v5, 0x0

    .line 551
    invoke-virtual {v7, v5, v5, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 552
    .line 553
    .line 554
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->M:I

    .line 555
    .line 556
    int-to-float v3, v3

    .line 557
    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 558
    .line 559
    int-to-float v4, v4

    .line 560
    sub-float/2addr v4, v2

    .line 561
    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 562
    .line 563
    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 564
    .line 565
    .line 566
    iget-object v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 567
    .line 568
    aget-object v4, v8, v1

    .line 569
    .line 570
    invoke-interface {v3, v4}, Lh/c;->indexOf(Ljava/lang/Object;)I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    const/4 v4, -0x1

    .line 575
    if-eq v3, v4, :cond_b

    .line 576
    .line 577
    iput v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->z:I

    .line 578
    .line 579
    goto/16 :goto_5

    .line 580
    .line 581
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 582
    .line 583
    .line 584
    iget v9, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 585
    .line 586
    float-to-int v3, v3

    .line 587
    const/4 v10, 0x0

    .line 588
    invoke-virtual {v7, v10, v10, v9, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 589
    .line 590
    .line 591
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 592
    .line 593
    .line 594
    move-result-wide v3

    .line 595
    double-to-float v3, v3

    .line 596
    mul-float v3, v3, v13

    .line 597
    .line 598
    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 599
    .line 600
    .line 601
    iget v3, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->N:I

    .line 602
    .line 603
    int-to-float v3, v3

    .line 604
    iget v4, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->o:I

    .line 605
    .line 606
    int-to-float v4, v4

    .line 607
    iget-object v5, v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 608
    .line 609
    invoke-virtual {v7, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 613
    .line 614
    .line 615
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 616
    .line 617
    .line 618
    goto :goto_8

    .line 619
    :cond_f
    :goto_7
    move/from16 v16, v10

    .line 620
    .line 621
    const/4 v10, 0x0

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 623
    .line 624
    .line 625
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 626
    .line 627
    move/from16 v10, v16

    .line 628
    .line 629
    const/4 v9, 0x0

    .line 630
    goto/16 :goto_4

    .line 631
    .line 632
    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->K:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k()V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->E:I

    .line 7
    .line 8
    iget p2, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->D:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->d:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-nez v0, :cond_6

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    .line 24
    .line 25
    int-to-float v1, v0

    .line 26
    sub-float/2addr v1, p1

    .line 27
    int-to-float p1, v0

    .line 28
    div-float/2addr v1, p1

    .line 29
    float-to-double v0, v1

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->G:I

    .line 35
    .line 36
    int-to-double v4, p1

    .line 37
    mul-double v0, v0, v4

    .line 38
    .line 39
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 40
    .line 41
    const/high16 v4, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float v4, p1, v4

    .line 44
    .line 45
    float-to-double v4, v4

    .line 46
    add-double/2addr v0, v4

    .line 47
    float-to-double v4, p1

    .line 48
    div-double/2addr v0, v4

    .line 49
    double-to-int v0, v0

    .line 50
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 51
    .line 52
    int-to-float v1, v1

    .line 53
    rem-float/2addr v1, p1

    .line 54
    add-float/2addr v1, p1

    .line 55
    rem-float/2addr v1, p1

    .line 56
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->C:I

    .line 57
    .line 58
    div-int/2addr v4, v3

    .line 59
    sub-int/2addr v0, v4

    .line 60
    int-to-float v0, v0

    .line 61
    mul-float v0, v0, p1

    .line 62
    .line 63
    sub-float/2addr v0, v1

    .line 64
    float-to-int p1, v0

    .line 65
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->H:I

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    iget-wide v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->J:J

    .line 72
    .line 73
    sub-long/2addr v0, v3

    .line 74
    const-wide/16 v3, 0x78

    .line 75
    .line 76
    cmp-long p1, v0, v3

    .line 77
    .line 78
    if-lez p1, :cond_0

    .line 79
    .line 80
    sget-object p1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;->DAGGLE:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_0
    sget-object p1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;->CLICK:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m(Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView$ACTION;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->I:F

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    sub-float/2addr v0, v1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->I:F

    .line 105
    .line 106
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 107
    .line 108
    int-to-float p1, p1

    .line 109
    add-float/2addr p1, v0

    .line 110
    float-to-int p1, p1

    .line 111
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 112
    .line 113
    iget-boolean p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:Z

    .line 114
    .line 115
    if-nez p1, :cond_6

    .line 116
    .line 117
    iget p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 118
    .line 119
    neg-int p1, p1

    .line 120
    int-to-float p1, p1

    .line 121
    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 122
    .line 123
    mul-float p1, p1, v1

    .line 124
    .line 125
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 126
    .line 127
    invoke-interface {v1}, Lh/c;->a()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    sub-int/2addr v1, v2

    .line 132
    iget v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 133
    .line 134
    sub-int/2addr v1, v3

    .line 135
    int-to-float v1, v1

    .line 136
    iget v3, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->p:F

    .line 137
    .line 138
    mul-float v1, v1, v3

    .line 139
    .line 140
    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 141
    .line 142
    int-to-double v5, v4

    .line 143
    float-to-double v7, v3

    .line 144
    const-wide v9, 0x3fd3333333333333L    # 0.3

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    mul-double v7, v7, v9

    .line 150
    .line 151
    sub-double/2addr v5, v7

    .line 152
    float-to-double v7, p1

    .line 153
    cmpg-double v11, v5, v7

    .line 154
    .line 155
    if-gez v11, :cond_2

    .line 156
    .line 157
    int-to-float p1, v4

    .line 158
    sub-float/2addr p1, v0

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    int-to-double v5, v4

    .line 161
    float-to-double v7, v3

    .line 162
    mul-double v7, v7, v9

    .line 163
    .line 164
    add-double/2addr v5, v7

    .line 165
    float-to-double v7, v1

    .line 166
    cmpl-double v3, v5, v7

    .line 167
    .line 168
    if-lez v3, :cond_3

    .line 169
    .line 170
    int-to-float v1, v4

    .line 171
    sub-float/2addr v1, v0

    .line 172
    :cond_3
    :goto_0
    int-to-float v0, v4

    .line 173
    cmpg-float v0, v0, p1

    .line 174
    .line 175
    if-gez v0, :cond_4

    .line 176
    .line 177
    float-to-int p1, p1

    .line 178
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    int-to-float p1, v4

    .line 182
    cmpl-float p1, p1, v1

    .line 183
    .line 184
    if-lez p1, :cond_6

    .line 185
    .line 186
    float-to-int p1, v1

    .line 187
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 191
    .line 192
    .line 193
    move-result-wide v0

    .line 194
    iput-wide v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->J:J

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->a()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->I:F

    .line 204
    .line 205
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 206
    .line 207
    .line 208
    return v2
.end method

.method public final setAdapter(Lh/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k:Lh/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->k()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->y:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->x:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->L:I

    .line 2
    .line 3
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnItemSelectedListener(Li/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->e:Li/c;

    .line 2
    .line 3
    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->b:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    mul-float v0, v0, p1

    .line 19
    .line 20
    float-to-int p1, v0

    .line 21
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->h:Landroid/graphics/Paint;

    .line 24
    .line 25
    int-to-float p1, p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->i:Landroid/graphics/Paint;

    .line 30
    .line 31
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->m:I

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
