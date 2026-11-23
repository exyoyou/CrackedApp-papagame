.class Lcom/mingle/widget/LoadingView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mingle/widget/LoadingView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mingle/widget/LoadingView;


# direct methods
.method constructor <init>(Lcom/mingle/widget/LoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mingle/widget/LoadingView$c;->a:Lcom/mingle/widget/LoadingView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mingle/widget/LoadingView$c;->a:Lcom/mingle/widget/LoadingView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mingle/widget/LoadingView;->a(Lcom/mingle/widget/LoadingView;)Lcom/mingle/widget/ShapeLoadingView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/mingle/widget/ShapeLoadingView;->a()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/mingle/widget/LoadingView$c;->a:Lcom/mingle/widget/LoadingView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mingle/widget/LoadingView;->g()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method
