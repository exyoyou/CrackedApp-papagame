.class Lru/noties/scrollable/ScrollableLayout$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/noties/scrollable/ScrollableLayout$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lru/noties/scrollable/ScrollableLayout$e;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout$e;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$nowY",
            "val$diff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$e$a;->d:Lru/noties/scrollable/ScrollableLayout$e;

    .line 2
    .line 3
    iput p2, p0, Lru/noties/scrollable/ScrollableLayout$e$a;->b:I

    .line 4
    .line 5
    iput p3, p0, Lru/noties/scrollable/ScrollableLayout$e$a;->c:I

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
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$e$a;->d:Lru/noties/scrollable/ScrollableLayout$e;

    .line 6
    .line 7
    iget-object v0, v0, Lru/noties/scrollable/ScrollableLayout$e;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 8
    .line 9
    iget v1, p0, Lru/noties/scrollable/ScrollableLayout$e$a;->b:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    iget v2, p0, Lru/noties/scrollable/ScrollableLayout$e$a;->c:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    mul-float v2, v2, p1

    .line 16
    .line 17
    add-float/2addr v1, v2

    .line 18
    const/high16 p1, 0x3f000000    # 0.5f

    .line 19
    .line 20
    add-float/2addr v1, p1

    .line 21
    float-to-int p1, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1, p1}, Lru/noties/scrollable/ScrollableLayout;->scrollTo(II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
