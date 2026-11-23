.class Lru/noties/scrollable/ScrollableLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/noties/scrollable/ScrollableLayout;->x(I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$startY",
            "val$diff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$b;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    iput p2, p0, Lru/noties/scrollable/ScrollableLayout$b;->b:I

    .line 4
    .line 5
    iput p3, p0, Lru/noties/scrollable/ScrollableLayout$b;->c:I

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$b;->d:Lru/noties/scrollable/ScrollableLayout;

    .line 6
    .line 7
    iget v1, p0, Lru/noties/scrollable/ScrollableLayout$b;->b:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    iget v2, p0, Lru/noties/scrollable/ScrollableLayout$b;->c:I

    .line 11
    .line 12
    int-to-float v2, v2

    .line 13
    mul-float v2, v2, p1

    .line 14
    .line 15
    add-float/2addr v1, v2

    .line 16
    const/high16 p1, 0x3f000000    # 0.5f

    .line 17
    .line 18
    add-float/2addr v1, p1

    .line 19
    float-to-int p1, v1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1, p1}, Lru/noties/scrollable/ScrollableLayout;->scrollTo(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
