.class public Lcom/byazt/oq/TTRatingBar2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x3f3
    }
.end annotation


# static fields
.field public static final sp:I

.field public static final x:I


# instance fields
.field public a:F

.field public c:Landroid/widget/LinearLayout;

.field public n:D

.field public tt:Landroid/widget/LinearLayout;

.field public uj:F

.field public ve:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2}, Lcom/byazt/du/sl;->tt(Ljava/lang/String;FZ)[I

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    aget v3, v3, v2

    .line 10
    .line 11
    div-int/lit8 v3, v3, 0x2

    .line 12
    .line 13
    add-int/2addr v3, v2

    .line 14
    sput v3, Lcom/byazt/oq/TTRatingBar2;->sp:I

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/byazt/du/sl;->tt(Ljava/lang/String;FZ)[I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    aget v0, v0, v2

    .line 21
    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x3

    .line 25
    .line 26
    sput v0, Lcom/byazt/oq/TTRatingBar2;->x:I

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/widget/LinearLayout;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    new-instance p1, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const v0, 0x800003

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic c(Lcom/byazt/oq/TTRatingBar2;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/oq/TTRatingBar2;->getStarImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private getStarImageView()Landroid/widget/ImageView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    iget v2, p0, Lcom/byazt/oq/TTRatingBar2;->ve:F

    .line 13
    .line 14
    float-to-int v2, v2

    .line 15
    iget v3, p0, Lcom/byazt/oq/TTRatingBar2;->uj:F

    .line 16
    .line 17
    float-to-int v3, v3

    .line 18
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    sget v1, Lcom/byazt/oq/TTRatingBar2;->sp:I

    .line 25
    .line 26
    sget v2, Lcom/byazt/oq/TTRatingBar2;->x:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method


# virtual methods
.method public c(DIII)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p4, p4

    invoke-static {v0, p4}, Lcom/byazt/or/x;->ve(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/byazt/oq/TTRatingBar2;->ve:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/byazt/or/x;->ve(Landroid/content/Context;F)F

    move-result p4

    float-to-int p4, p4

    int-to-float p4, p4

    iput p4, p0, Lcom/byazt/oq/TTRatingBar2;->uj:F

    .line 4
    iput-wide p1, p0, Lcom/byazt/oq/TTRatingBar2;->n:D

    int-to-float p1, p5

    .line 5
    iput p1, p0, Lcom/byazt/oq/TTRatingBar2;->a:F

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/byazt/oq/TTRatingBar2$1;

    invoke-direct {p2, p0, p3}, Lcom/byazt/oq/TTRatingBar2$1;-><init>(Lcom/byazt/oq/TTRatingBar2;I)V

    const-string p3, "tt_star"

    const/16 p4, 0x140

    invoke-static {p1, p3, p2, p4}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/byazt/oq/TTRatingBar2$2;

    invoke-direct {p2, p0}, Lcom/byazt/oq/TTRatingBar2$2;-><init>(Lcom/byazt/oq/TTRatingBar2;)V

    const-string p3, "tt_star_thick"

    invoke-static {p1, p3, p2, p4}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 9
    iget-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/oq/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 7
    .line 8
    .line 9
    iget-wide p1, p0, Lcom/byazt/oq/TTRatingBar2;->n:D

    .line 10
    .line 11
    double-to-int v0, p1

    .line 12
    int-to-float v0, v0

    .line 13
    iget v1, p0, Lcom/byazt/oq/TTRatingBar2;->ve:F

    .line 14
    .line 15
    mul-float v0, v0, v1

    .line 16
    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    add-float/2addr v0, v2

    .line 20
    float-to-double v2, v0

    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    .line 23
    sub-float/2addr v1, v0

    .line 24
    float-to-double v0, v1

    .line 25
    double-to-int v4, p1

    .line 26
    int-to-double v4, v4

    .line 27
    sub-double/2addr p1, v4

    .line 28
    mul-double v0, v0, p1

    .line 29
    .line 30
    add-double/2addr v2, v0

    .line 31
    iget-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    double-to-int p2, v2

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    .line 35
    .line 36
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iget-object v1, p0, Lcom/byazt/oq/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 51
    .line 52
    .line 53
    iget p1, p0, Lcom/byazt/oq/TTRatingBar2;->a:F

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    cmpl-float p1, p1, p2

    .line 57
    .line 58
    if-lez p1, :cond_0

    .line 59
    .line 60
    iget-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    int-to-float p2, p2

    .line 67
    iget v0, p0, Lcom/byazt/oq/TTRatingBar2;->a:F

    .line 68
    .line 69
    sub-float/2addr p2, v0

    .line 70
    float-to-int p2, p2

    .line 71
    div-int/lit8 p2, p2, 0x2

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/byazt/oq/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    iget-object p2, p0, Lcom/byazt/oq/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    int-to-float p2, p2

    .line 86
    iget v1, p0, Lcom/byazt/oq/TTRatingBar2;->a:F

    .line 87
    .line 88
    sub-float/2addr p2, v1

    .line 89
    float-to-int p2, p2

    .line 90
    div-int/lit8 p2, p2, 0x2

    .line 91
    .line 92
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    .line 94
    .line 95
    :cond_0
    return-void
.end method
