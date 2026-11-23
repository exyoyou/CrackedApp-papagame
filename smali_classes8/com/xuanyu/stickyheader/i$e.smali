.class Lcom/xuanyu/stickyheader/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xuanyu/stickyheader/i;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/xuanyu/stickyheader/i;


# direct methods
.method constructor <init>(Lcom/xuanyu/stickyheader/i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xuanyu/stickyheader/i$e;->c:Lcom/xuanyu/stickyheader/i;

    .line 2
    .line 3
    iput p2, p0, Lcom/xuanyu/stickyheader/i$e;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$e;->c:Lcom/xuanyu/stickyheader/i;

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
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$e;->c:Lcom/xuanyu/stickyheader/i;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/xuanyu/stickyheader/i;->g(Lcom/xuanyu/stickyheader/i;)Landroid/view/ViewGroup;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/xuanyu/stickyheader/i$e;->b:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i$e;->c:Lcom/xuanyu/stickyheader/i;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/xuanyu/stickyheader/i;->h(Lcom/xuanyu/stickyheader/i;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/2addr v1, v2

    .line 27
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i$e;->c:Lcom/xuanyu/stickyheader/i;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/xuanyu/stickyheader/i;->g(Lcom/xuanyu/stickyheader/i;)Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    sub-int/2addr v1, v2

    .line 38
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
