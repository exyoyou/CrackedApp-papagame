.class Lcom/xuanyu/stickyheader/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xuanyu/stickyheader/i;->u(Landroidx/recyclerview/widget/RecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xuanyu/stickyheader/i;


# direct methods
.method constructor <init>(Lcom/xuanyu/stickyheader/i;)V
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
    iput-object p1, p0, Lcom/xuanyu/stickyheader/i$d;->b:Lcom/xuanyu/stickyheader/i;

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
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$d;->b:Lcom/xuanyu/stickyheader/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xuanyu/stickyheader/i;->g(Lcom/xuanyu/stickyheader/i;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$d;->b:Lcom/xuanyu/stickyheader/i;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/xuanyu/stickyheader/i;->g(Lcom/xuanyu/stickyheader/i;)Landroid/view/ViewGroup;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i$d;->b:Lcom/xuanyu/stickyheader/i;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/xuanyu/stickyheader/i;->h(Lcom/xuanyu/stickyheader/i;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i$d;->b:Lcom/xuanyu/stickyheader/i;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/xuanyu/stickyheader/i;->g(Lcom/xuanyu/stickyheader/i;)Landroid/view/ViewGroup;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i$d;->b:Lcom/xuanyu/stickyheader/i;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/xuanyu/stickyheader/i;->g(Lcom/xuanyu/stickyheader/i;)Landroid/view/ViewGroup;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    sub-int/2addr v1, v2

    .line 46
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
