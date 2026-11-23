.class public Lcom/byazt/ff/TTRatingBar2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8e,
        0x3f3
    }
.end annotation


# instance fields
.field public a:I

.field public c:Landroid/widget/LinearLayout;

.field public i:I

.field public n:D

.field public sp:I

.field public tt:Landroid/widget/LinearLayout;

.field public uj:I

.field public ve:I

.field public x:I


# direct methods
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
    iput-object p1, p0, Lcom/byazt/ff/TTRatingBar2;->c:Landroid/widget/LinearLayout;

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
    iput-object p1, p0, Lcom/byazt/ff/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/byazt/ff/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/byazt/ff/TTRatingBar2;->c:Landroid/widget/LinearLayout;

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
    iget-object p1, p0, Lcom/byazt/ff/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/byazt/ff/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ff/TTRatingBar2;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ff/TTRatingBar2;->getStarImageView()Landroid/widget/ImageView;

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
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    iget v2, p0, Lcom/byazt/ff/TTRatingBar2;->ve:I

    .line 13
    .line 14
    iget v3, p0, Lcom/byazt/ff/TTRatingBar2;->uj:I

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/byazt/ff/TTRatingBar2;->a:I

    .line 20
    .line 21
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 22
    .line 23
    iget v2, p0, Lcom/byazt/ff/TTRatingBar2;->sp:I

    .line 24
    .line 25
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 26
    .line 27
    iget v2, p0, Lcom/byazt/ff/TTRatingBar2;->x:I

    .line 28
    .line 29
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 30
    .line 31
    iget v2, p0, Lcom/byazt/ff/TTRatingBar2;->i:I

    .line 32
    .line 33
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/byazt/ff/TTRatingBar2$1;

    invoke-direct {v1, p0}, Lcom/byazt/ff/TTRatingBar2$1;-><init>(Lcom/byazt/ff/TTRatingBar2;)V

    const-string v2, "tt_ratingbar_full_star2"

    const/16 v3, 0x140

    invoke-static {v0, v2, v1, v3}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/byazt/ff/TTRatingBar2$2;

    invoke-direct {v1, p0}, Lcom/byazt/ff/TTRatingBar2$2;-><init>(Lcom/byazt/ff/TTRatingBar2;)V

    const-string v2, "tt_ratingbar_empty_star2"

    invoke-static {v0, v2, v1, v3}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 7
    iget-object v0, p0, Lcom/byazt/ff/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/ff/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public c(II)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/byazt/ff/TTRatingBar2;->ve:I

    .line 3
    iput p1, p0, Lcom/byazt/ff/TTRatingBar2;->uj:I

    return-void
.end method

.method public c(IIII)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/byazt/ff/TTRatingBar2;->a:I

    .line 11
    iput p2, p0, Lcom/byazt/ff/TTRatingBar2;->sp:I

    .line 12
    iput p3, p0, Lcom/byazt/ff/TTRatingBar2;->x:I

    .line 13
    iput p4, p0, Lcom/byazt/ff/TTRatingBar2;->i:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ff/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 7
    .line 8
    .line 9
    iget-wide p1, p0, Lcom/byazt/ff/TTRatingBar2;->n:D

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    iget v0, p0, Lcom/byazt/ff/TTRatingBar2;->a:I

    .line 16
    .line 17
    iget v1, p0, Lcom/byazt/ff/TTRatingBar2;->x:I

    .line 18
    .line 19
    add-int/2addr v1, v0

    .line 20
    iget v2, p0, Lcom/byazt/ff/TTRatingBar2;->ve:I

    .line 21
    .line 22
    add-int/2addr v1, v2

    .line 23
    int-to-double v3, v1

    .line 24
    mul-double v3, v3, p1

    .line 25
    .line 26
    int-to-double v0, v0

    .line 27
    add-double/2addr v3, v0

    .line 28
    iget-wide v0, p0, Lcom/byazt/ff/TTRatingBar2;->n:D

    .line 29
    .line 30
    sub-double/2addr v0, p1

    .line 31
    int-to-double p1, v2

    .line 32
    mul-double v0, v0, p1

    .line 33
    .line 34
    add-double/2addr v3, v0

    .line 35
    iget-object p1, p0, Lcom/byazt/ff/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    double-to-int p2, v3

    .line 38
    const/high16 v0, 0x40000000    # 2.0f

    .line 39
    .line 40
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget-object v1, p0, Lcom/byazt/ff/TTRatingBar2;->c:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public setRating(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ff/TTRatingBar2;->n:D

    .line 2
    .line 3
    return-void
.end method
