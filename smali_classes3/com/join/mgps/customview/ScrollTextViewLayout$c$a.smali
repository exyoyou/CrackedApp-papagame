.class Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ScrollTextViewLayout$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ScrollTextViewLayout$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollTextViewLayout$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$c;

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
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->f(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$c;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout;->j:Ljava/lang/Runnable;

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$c$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$c;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$c;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x4

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
