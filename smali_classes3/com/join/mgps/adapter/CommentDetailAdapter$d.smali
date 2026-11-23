.class Lcom/join/mgps/adapter/CommentDetailAdapter$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter;->p(Landroid/view/View;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILcom/join/mgps/customview/CopyTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/customview/CopyTextView;

.field final synthetic e:Lcom/join/mgps/adapter/CommentDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentDetailAdapter;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILcom/join/mgps/customview/CopyTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$commitDataBean",
            "val$position",
            "val$message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->d:Lcom/join/mgps/customview/CopyTextView;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter;->d:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->c:I

    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/CommentDetailAdapter$h;->onReply(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$d;->d:Lcom/join/mgps/customview/CopyTextView;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
