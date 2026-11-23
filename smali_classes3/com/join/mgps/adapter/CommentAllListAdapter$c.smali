.class Lcom/join/mgps/adapter/CommentAllListAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentAllListAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

.field final synthetic c:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic d:Lcom/join/mgps/adapter/CommentAllListAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalCommentViewHolder",
            "val$commitDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->d:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->c:Lcom/join/mgps/dto/CommentBaseBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "\u67e5\u770b\u5168\u90e8"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const v0, 0x7fffffff

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "\u6536\u8d77"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->c:Lcom/join/mgps/dto/CommentBaseBean;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v1, 0x5

    .line 60
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->c:Lcom/join/mgps/dto/CommentBaseBean;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method
