.class public Lit/sephiroth/android/library/widget/ExpandableHListView;
.super Lit/sephiroth/android/library/widget/HListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/ExpandableHListView$d;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$e;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$f;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$c;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$b;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;
    }
.end annotation


# static fields
.field public static final A4:I = 0x2

.field public static final B4:J = 0xffffffffL

.field private static final C4:J = 0xffffffffL

.field private static final D4:J = 0x7fffffff00000000L

.field private static final E4:J = -0x8000000000000000L

.field private static final F4:J = 0x20L

.field private static final G4:J = 0x3fL

.field private static final H4:J = -0x1L

.field private static final I4:J = 0x7fffffffL

.field public static final J4:I = -0x1

.field private static final K4:I = -0x2

.field private static final L4:[I

.field private static final M4:[I

.field private static final N4:[I

.field private static final O4:[I

.field private static final P4:[[I

.field private static final Q4:[I

.field public static final y4:I = 0x0

.field public static final z4:I = 0x1


# instance fields
.field private d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

.field private e4:Landroid/widget/ExpandableListAdapter;

.field private f4:I

.field private g4:I

.field private h4:I

.field private i4:I

.field private j4:I

.field private k4:I

.field private l4:Landroid/graphics/drawable/Drawable;

.field private m4:Landroid/graphics/drawable/Drawable;

.field private n4:Landroid/graphics/drawable/Drawable;

.field private final o4:Landroid/graphics/Rect;

.field private final p4:Landroid/graphics/Rect;

.field private q4:I

.field private r4:I

.field private s4:I

.field private t4:I

.field private u4:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

.field private v4:Lit/sephiroth/android/library/widget/ExpandableHListView$f;

.field private w4:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

.field private x4:Lit/sephiroth/android/library/widget/ExpandableHListView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    sput-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->L4:[I

    .line 5
    .line 6
    const v2, 0x10100a8

    .line 7
    .line 8
    .line 9
    filled-new-array {v2}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sput-object v3, Lit/sephiroth/android/library/widget/ExpandableHListView;->M4:[I

    .line 14
    .line 15
    const v4, 0x10100a9

    .line 16
    .line 17
    .line 18
    filled-new-array {v4}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    sput-object v5, Lit/sephiroth/android/library/widget/ExpandableHListView;->N4:[I

    .line 23
    .line 24
    filled-new-array {v2, v4}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sput-object v2, Lit/sephiroth/android/library/widget/ExpandableHListView;->O4:[I

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    new-array v4, v4, [[I

    .line 32
    .line 33
    aput-object v1, v4, v0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object v3, v4, v0

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    aput-object v5, v4, v0

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    aput-object v2, v4, v0

    .line 43
    .line 44
    sput-object v4, Lit/sephiroth/android/library/widget/ExpandableHListView;->P4:[[I

    .line 45
    .line 46
    const v0, 0x10100a6

    .line 47
    .line 48
    .line 49
    filled-new-array {v0}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->Q4:[I

    .line 54
    .line 55
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
    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const v0, 0x7f040318

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->o4:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->p4:Landroid/graphics/Rect;

    .line 6
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->ExpandableHListView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x7

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->g4:I

    const/16 p2, 0x8

    .line 10
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->f4:I

    const/4 p2, 0x6

    .line 11
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->h4:I

    const/4 p2, 0x2

    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->i4:I

    const/4 p2, 0x3

    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->k4:I

    const/4 p2, 0x4

    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->j4:I

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->n4:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private g2(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flatListPosition"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr p1, v0

    .line 6
    return p1
.end method

.method private h2(Lit/sephiroth/android/library/widget/a;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p1, Lit/sephiroth/android/library/widget/a;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e4:Landroid/widget/ExpandableListAdapter;

    .line 7
    .line 8
    iget v1, p1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 9
    .line 10
    iget p1, p1, Lit/sephiroth/android/library/widget/a;->b:I

    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e4:Landroid/widget/ExpandableListAdapter;

    .line 18
    .line 19
    iget p1, p1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 20
    .line 21
    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method

.method private k2(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flatListPosition"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    return p1
.end method

.method private l2(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 2
    .line 3
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->d:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->l4:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    iget-object v2, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget v4, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 24
    .line 25
    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 26
    .line 27
    if-ne v4, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 33
    :goto_1
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_2
    or-int/2addr p1, v1

    .line 42
    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->P4:[[I

    .line 43
    .line 44
    aget-object p1, v1, p1

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 47
    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->m4:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    iget-object v1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 61
    .line 62
    iget v1, v1, Lit/sephiroth/android/library/widget/a;->c:I

    .line 63
    .line 64
    iget-object p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 65
    .line 66
    iget p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 67
    .line 68
    if-ne v1, p1, :cond_4

    .line 69
    .line 70
    sget-object p1, Lit/sephiroth/android/library/widget/ExpandableHListView;->Q4:[I

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    sget-object p1, Lit/sephiroth/android/library/widget/ExpandableHListView;->L4:[I

    .line 74
    .line 75
    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static m2(J)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packedPosition"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    const-wide v1, 0xffffffffL

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    and-long v5, p0, v3

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    return v0

    :cond_1
    and-long/2addr p0, v1

    long-to-int p1, p0

    return p1
.end method

.method public static n2(II)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupPosition",
            "childPosition"
        }
    .end annotation

    .line 1
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long p0, p1

    const-wide/16 v2, -0x1

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static o2(I)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupPosition"
        }
    .end annotation

    .line 1
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static p2(J)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packedPosition"
        }
    .end annotation

    .line 1
    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr p0, v0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static q2(J)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packedPosition"
        }
    .end annotation

    .line 1
    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private t2(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFooterViewsCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lt p1, v1, :cond_1

    .line 13
    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 20
    :goto_1
    return p1
.end method

.method private u2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->m4:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->s4:I

    .line 10
    .line 11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->m4:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->t4:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->s4:I

    .line 22
    .line 23
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->t4:I

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private v2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->l4:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->q4:I

    .line 10
    .line 11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->l4:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->r4:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->q4:I

    .line 22
    .line 23
    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->r4:I

    .line 24
    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "flatListPosition",
            "id"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->t2(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lit/sephiroth/android/library/widget/AdapterView$b;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AdapterView$b;-><init>(Landroid/view/View;IJ)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k2(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-object p3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 18
    .line 19
    invoke-virtual {p3, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 24
    .line 25
    invoke-direct {p0, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView;->h2(Lit/sephiroth/android/library/widget/a;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    invoke-virtual {p3}, Lit/sephiroth/android/library/widget/a;->a()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 34
    .line 35
    .line 36
    new-instance p2, Lit/sephiroth/android/library/widget/ExpandableHListView$b;

    .line 37
    .line 38
    move-object v0, p2

    .line 39
    move-object v1, p1

    .line 40
    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ExpandableHListView$b;-><init>(Landroid/view/View;JJ)V

    .line 41
    .line 42
    .line 43
    return-object p2
.end method

.method public d2(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupPos"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->u4:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView$e;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->m4:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->l4:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFooterViewsCount()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    sub-int/2addr v1, v0

    .line 25
    const/4 v2, 0x1

    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->o4:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    iget v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 38
    .line 39
    sub-int/2addr v6, v0

    .line 40
    const/4 v0, -0x4

    .line 41
    const/4 v7, 0x0

    .line 42
    :goto_0
    if-ge v7, v5, :cond_a

    .line 43
    .line 44
    if-gez v6, :cond_1

    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_1
    if-le v6, v1, :cond_2

    .line 49
    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-ltz v10, :cond_9

    .line 65
    .line 66
    if-le v9, v3, :cond_3

    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_3
    iget-object v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 71
    .line 72
    invoke-virtual {v11, v6}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    iget-object v12, v11, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 77
    .line 78
    iget v12, v12, Lit/sephiroth/android/library/widget/a;->d:I

    .line 79
    .line 80
    if-eq v12, v0, :cond_5

    .line 81
    .line 82
    if-ne v12, v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->j4:I

    .line 89
    .line 90
    add-int/2addr v0, v12

    .line 91
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget v8, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->j4:I

    .line 98
    .line 99
    add-int/2addr v0, v8

    .line 100
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->f4:I

    .line 108
    .line 109
    add-int/2addr v0, v12

    .line 110
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 111
    .line 112
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iget v8, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->f4:I

    .line 117
    .line 118
    add-int/2addr v0, v8

    .line 119
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 120
    .line 121
    :goto_1
    iget-object v0, v11, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 122
    .line 123
    iget v0, v0, Lit/sephiroth/android/library/widget/a;->d:I

    .line 124
    .line 125
    :cond_5
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 128
    .line 129
    if-eq v8, v12, :cond_8

    .line 130
    .line 131
    iget-object v8, v11, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 132
    .line 133
    iget v8, v8, Lit/sephiroth/android/library/widget/a;->d:I

    .line 134
    .line 135
    if-ne v8, v2, :cond_6

    .line 136
    .line 137
    iget v8, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->k4:I

    .line 138
    .line 139
    add-int/2addr v9, v8

    .line 140
    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 141
    .line 142
    add-int/2addr v10, v8

    .line 143
    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    iget v8, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->g4:I

    .line 147
    .line 148
    add-int/2addr v9, v8

    .line 149
    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 150
    .line 151
    add-int/2addr v10, v8

    .line 152
    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 153
    .line 154
    :goto_2
    invoke-direct {p0, v11}, Lit/sephiroth/android/library/widget/ExpandableHListView;->l2(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    if-eqz v8, :cond_8

    .line 159
    .line 160
    iget-object v9, v11, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 161
    .line 162
    iget v9, v9, Lit/sephiroth/android/library/widget/a;->d:I

    .line 163
    .line 164
    if-ne v9, v2, :cond_7

    .line 165
    .line 166
    iget v9, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->i4:I

    .line 167
    .line 168
    iget v10, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->s4:I

    .line 169
    .line 170
    iget v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->t4:I

    .line 171
    .line 172
    iget-object v13, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->p4:Landroid/graphics/Rect;

    .line 173
    .line 174
    invoke-static {v9, v10, v12, v4, v13}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_7
    iget v9, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->h4:I

    .line 179
    .line 180
    iget v10, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->q4:I

    .line 181
    .line 182
    iget v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->r4:I

    .line 183
    .line 184
    iget-object v13, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->p4:Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-static {v9, v10, v12, v4, v13}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 187
    .line 188
    .line 189
    :goto_3
    iget-object v9, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->p4:Landroid/graphics/Rect;

    .line 190
    .line 191
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    .line 196
    .line 197
    :cond_8
    invoke-virtual {v11}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 198
    .line 199
    .line 200
    :cond_9
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 201
    .line 202
    add-int/lit8 v6, v6, 0x1

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_a
    :goto_5
    return-void
.end method

.method public e2(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupPos"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->f2(IZ)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public f2(IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupPos",
            "animate"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-static {v0, p1, v1, v1}, Lit/sephiroth/android/library/widget/a;->c(IIII)Lit/sephiroth/android/library/widget/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->v4:Lit/sephiroth/android/library/widget/ExpandableHListView$f;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView$f;->a(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget-object p2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 32
    .line 33
    iget p2, p2, Lit/sephiroth/android/library/widget/a;->c:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/2addr p2, v2

    .line 40
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e4:Landroid/widget/ExpandableListAdapter;

    .line 41
    .line 42
    invoke-interface {v2, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    add-int/2addr p1, p2

    .line 47
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->Q0(II)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    invoke-super {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e4:Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedId()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getSelectedPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->p2(J)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->q2(J)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e4:Landroid/widget/ExpandableListAdapter;

    .line 28
    .line 29
    invoke-interface {v0, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    return-wide v0

    .line 34
    :cond_1
    iget-object v3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e4:Landroid/widget/ExpandableListAdapter;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->m2(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-interface {v3, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->i2(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public i2(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flatListPosition"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->t2(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide v0, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k2(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/a;->a()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 30
    .line 31
    .line 32
    return-wide v0
.end method

.method public j2(J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packedPosition"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lit/sephiroth/android/library/widget/a;->f(J)Lit/sephiroth/android/library/widget/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 15
    .line 16
    iget p1, p1, Lit/sephiroth/android/library/widget/a;->c:I

    .line 17
    .line 18
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g2(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lit/sephiroth/android/library/widget/ExpandableHListView;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lit/sephiroth/android/library/widget/ExpandableHListView;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->n(Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutDirection"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->v2()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->u2()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    .line 6
    .line 7
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->h()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-direct {v1, v0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public q(Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "position",
            "id"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->t2(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->q(Landroid/view/View;IJ)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k2(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/ExpandableHListView;->r2(Landroid/view/View;IJ)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method r1(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "bounds",
            "childIndex"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 2
    .line 3
    add-int/2addr p3, v0

    .line 4
    if-ltz p3, :cond_2

    .line 5
    .line 6
    invoke-direct {p0, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k2(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 17
    .line 18
    iget v1, v1, Lit/sephiroth/android/library/widget/a;->d:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    .line 30
    .line 31
    iget v2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    .line 32
    .line 33
    iget v1, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    .line 34
    .line 35
    if-eq v2, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    iget-object p3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->n4:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;->r1(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method r2(Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "position",
            "id"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 2
    .line 3
    invoke-virtual {p3, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->j(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 8
    .line 9
    invoke-direct {p0, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView;->h2(Lit/sephiroth/android/library/widget/a;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 14
    .line 15
    iget p4, p3, Lit/sephiroth/android/library/widget/a;->d:I

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v7, 0x0

    .line 19
    if-ne p4, v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->w4:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

    .line 22
    .line 23
    const/4 p4, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget v3, p3, Lit/sephiroth/android/library/widget/a;->a:I

    .line 27
    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    move-wide v4, v5

    .line 31
    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ExpandableHListView$d;->a(Lit/sephiroth/android/library/widget/ExpandableHListView;Landroid/view/View;IJ)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 38
    .line 39
    .line 40
    return p4

    .line 41
    :cond_0
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->u4:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 60
    .line 61
    iget p3, p3, Lit/sephiroth/android/library/widget/a;->a:I

    .line 62
    .line 63
    invoke-interface {p1, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView$e;->a(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->e(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->v4:Lit/sephiroth/android/library/widget/ExpandableHListView$f;

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    iget-object p3, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 80
    .line 81
    iget p3, p3, Lit/sephiroth/android/library/widget/a;->a:I

    .line 82
    .line 83
    invoke-interface {p1, p3}, Lit/sephiroth/android/library/widget/ExpandableHListView$f;->a(I)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p1, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 87
    .line 88
    iget p3, p1, Lit/sephiroth/android/library/widget/a;->a:I

    .line 89
    .line 90
    iget p1, p1, Lit/sephiroth/android/library/widget/a;->c:I

    .line 91
    .line 92
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHeaderViewsCount()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    add-int/2addr p1, v0

    .line 97
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e4:Landroid/widget/ExpandableListAdapter;

    .line 98
    .line 99
    invoke-interface {v0, p3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    add-int/2addr p3, p1

    .line 104
    invoke-virtual {p0, p3, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->Q0(II)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    const/4 v7, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    iget-object p3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->x4:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

    .line 110
    .line 111
    if-eqz p3, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->x4:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

    .line 117
    .line 118
    iget-object p2, p2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 119
    .line 120
    iget v3, p2, Lit/sephiroth/android/library/widget/a;->a:I

    .line 121
    .line 122
    iget v4, p2, Lit/sephiroth/android/library/widget/a;->b:I

    .line 123
    .line 124
    move-object v1, p0

    .line 125
    move-object v2, p1

    .line 126
    invoke-interface/range {v0 .. v6}, Lit/sephiroth/android/library/widget/ExpandableHListView$c;->a(Lit/sephiroth/android/library/widget/ExpandableHListView;Landroid/view/View;IIJ)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    return p1

    .line 131
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 132
    .line 133
    .line 134
    return v7
.end method

.method public s2(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupPosition"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->k(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->e4:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 6
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childDivider"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->n4:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childIndicator"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->m4:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->u2()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupIndicator"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->l4:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->v2()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnChildClickListener(Lit/sephiroth/android/library/widget/ExpandableHListView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onChildClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->x4:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

    .line 2
    .line 3
    return-void
.end method

.method public setOnGroupClickListener(Lit/sephiroth/android/library/widget/ExpandableHListView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGroupClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->w4:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

    .line 2
    .line 3
    return-void
.end method

.method public setOnGroupCollapseListener(Lit/sephiroth/android/library/widget/ExpandableHListView$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGroupCollapseListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->u4:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

    .line 2
    .line 3
    return-void
.end method

.method public setOnGroupExpandListener(Lit/sephiroth/android/library/widget/ExpandableHListView$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGroupExpandListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->v4:Lit/sephiroth/android/library/widget/ExpandableHListView$f;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V
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
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setSelectedGroup(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupPosition"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lit/sephiroth/android/library/widget/a;->e(I)Lit/sephiroth/android/library/widget/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 15
    .line 16
    iget p1, p1, Lit/sephiroth/android/library/widget/a;->c:I

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g2(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setSelection(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public w2(IIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupPosition",
            "childPosition",
            "shouldExpandGroup"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lit/sephiroth/android/library/widget/a;->d(II)Lit/sephiroth/android/library/widget/a;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->e2(I)Z

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->d4:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->i(Lit/sephiroth/android/library/widget/a;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string p2, "Could not find child"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_2
    :goto_0
    iget-object p1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/a;

    .line 38
    .line 39
    iget p1, p1, Lit/sephiroth/android/library/widget/a;->c:I

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g2(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setSelection(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/a;->g()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->d()V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    return p1
.end method
