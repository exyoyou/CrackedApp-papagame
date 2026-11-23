.class Lru/noties/scrollable/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/noties/scrollable/m;->c(Lru/noties/scrollable/ScrollableLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lru/noties/scrollable/ScrollableLayout;

.field final synthetic c:F

.field final synthetic d:Lru/noties/scrollable/m;


# direct methods
.method constructor <init>(Lru/noties/scrollable/m;Lru/noties/scrollable/ScrollableLayout;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/m$a;->d:Lru/noties/scrollable/m;

    .line 2
    .line 3
    iput-object p2, p0, Lru/noties/scrollable/m$a;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 4
    .line 5
    iput p3, p0, Lru/noties/scrollable/m$a;->c:F

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lru/noties/scrollable/m$a;->d:Lru/noties/scrollable/m;

    .line 6
    .line 7
    invoke-static {v0}, Lru/noties/scrollable/m;->d(Lru/noties/scrollable/m;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lru/noties/scrollable/m$a;->d:Lru/noties/scrollable/m;

    .line 12
    .line 13
    invoke-static {v2}, Lru/noties/scrollable/m;->d(Lru/noties/scrollable/m;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    mul-float v2, v2, p1

    .line 19
    .line 20
    float-to-int v2, v2

    .line 21
    sub-int/2addr v1, v2

    .line 22
    invoke-static {v0, v1}, Lru/noties/scrollable/m;->e(Lru/noties/scrollable/m;I)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lru/noties/scrollable/m$a;->d:Lru/noties/scrollable/m;

    .line 26
    .line 27
    iget-object v1, p0, Lru/noties/scrollable/m$a;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 28
    .line 29
    iget v2, p0, Lru/noties/scrollable/m$a;->c:F

    .line 30
    .line 31
    mul-float p1, p1, v2

    .line 32
    .line 33
    sub-float/2addr v2, p1

    .line 34
    invoke-virtual {v0, v1, v2}, Lru/noties/scrollable/m;->j(Lru/noties/scrollable/ScrollableLayout;F)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
