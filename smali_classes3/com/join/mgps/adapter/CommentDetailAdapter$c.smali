.class Lcom/join/mgps/adapter/CommentDetailAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter;->n(Landroid/view/View;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/adapter/CommentDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentDetailAdapter;ILcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;I)V
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
            "val$position",
            "val$sub",
            "val$pn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->c:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->d:I

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->b:I

    .line 2
    .line 3
    :goto_0
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->b(Lcom/join/mgps/adapter/CommentDetailAdapter;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;->b()Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->b(Lcom/join/mgps/adapter/CommentDetailAdapter;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;->a()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string p1, ""

    .line 54
    .line 55
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/join/mgps/adapter/CommentDetailAdapter;->d:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->c:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

    .line 62
    .line 63
    iget v2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$c;->d:I

    .line 64
    .line 65
    invoke-interface {v0, v1, v2, p1}, Lcom/join/mgps/adapter/CommentDetailAdapter$h;->onReplyReply(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method
