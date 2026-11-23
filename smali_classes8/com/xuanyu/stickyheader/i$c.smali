.class Lcom/xuanyu/stickyheader/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xuanyu/stickyheader/i;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/ViewGroup;I)V
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
    iput-object p1, p0, Lcom/xuanyu/stickyheader/i$c;->b:Lcom/xuanyu/stickyheader/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$c;->b:Lcom/xuanyu/stickyheader/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xuanyu/stickyheader/i;->d(Lcom/xuanyu/stickyheader/i;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i$c;->b:Lcom/xuanyu/stickyheader/i;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/xuanyu/stickyheader/i;->b(Lcom/xuanyu/stickyheader/i;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
