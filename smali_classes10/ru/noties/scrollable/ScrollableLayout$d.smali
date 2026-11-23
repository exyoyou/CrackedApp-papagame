.class Lru/noties/scrollable/ScrollableLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout;)V
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
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$d;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$d;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lru/noties/scrollable/n;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$d;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lru/noties/scrollable/ScrollableLayout;->p(Lru/noties/scrollable/ScrollableLayout;Z)Z

    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$d;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 19
    .line 20
    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lru/noties/scrollable/n;->f()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$d;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sub-int v1, v0, v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$d;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2, v0}, Lru/noties/scrollable/ScrollableLayout;->scrollTo(II)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$d;->b:Lru/noties/scrollable/ScrollableLayout;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
