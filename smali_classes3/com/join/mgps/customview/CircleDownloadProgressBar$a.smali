.class Lcom/join/mgps/customview/CircleDownloadProgressBar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CircleDownloadProgressBar;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/CircleDownloadProgressBar;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CircleDownloadProgressBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;->b:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;->b:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    mul-int/lit16 p1, p1, 0x168

    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->b()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    div-int/2addr p1, v1

    .line 20
    invoke-static {v0, p1}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->a(Lcom/join/mgps/customview/CircleDownloadProgressBar;I)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;->b:Lcom/join/mgps/customview/CircleDownloadProgressBar;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
