.class Lcom/join/android/app/component/video/MultiStandVideo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/MultiStandVideo;->k(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/join/android/app/component/video/MultiStandVideo;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/MultiStandVideo;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$a;->c:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/video/MultiStandVideo$a;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$a;->c:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->f(Lcom/join/android/app/component/video/MultiStandVideo;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$a;->c:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->g(Lcom/join/android/app/component/video/MultiStandVideo;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x7

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$a;->c:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->h(Lcom/join/android/app/component/video/MultiStandVideo;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x5

    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$a;->c:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->i(Lcom/join/android/app/component/video/MultiStandVideo;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x6

    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$a;->b:Landroid/view/View;

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$a;->b:Landroid/view/View;

    .line 44
    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$a;->c:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_1
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
