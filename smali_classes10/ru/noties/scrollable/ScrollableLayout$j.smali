.class Lru/noties/scrollable/ScrollableLayout$j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method private constructor <init>(Lru/noties/scrollable/ScrollableLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->c:Lru/noties/scrollable/ScrollableLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lru/noties/scrollable/ScrollableLayout$j;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
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
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout$j;->b:Z

    .line 4
    .line 5
    invoke-static {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->s(Lru/noties/scrollable/ScrollableLayout;Z)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
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
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout$j;->b:Z

    .line 4
    .line 5
    invoke-static {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->s(Lru/noties/scrollable/ScrollableLayout;Z)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
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
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    invoke-static {p1}, Lru/noties/scrollable/ScrollableLayout;->r(Lru/noties/scrollable/ScrollableLayout;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->b:Z

    .line 8
    .line 9
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->s(Lru/noties/scrollable/ScrollableLayout;Z)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
