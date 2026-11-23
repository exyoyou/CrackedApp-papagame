.class Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 8
    .line 9
    const/16 v0, 0xff

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->start()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 22
    .line 23
    iget-boolean v0, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;->onRefresh()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method
