.class Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

.field final synthetic c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;->c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;->c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->q:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->n:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;->v()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
