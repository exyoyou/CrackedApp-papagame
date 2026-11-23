.class Lcom/join/mgps/adapter/ForumCommentAdapter$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter;->f0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

.field final synthetic f:Lcom/join/mgps/adapter/ForumCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter;IIILcom/join/mgps/adapter/ForumCommentAdapter$z$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$itemIndex",
            "val$position",
            "val$cid",
            "val$commentMessageReply"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->f:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->c:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->d:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->e:Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->b:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 7
    .line 8
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->b:I

    .line 17
    .line 18
    :goto_0
    if-ltz v0, :cond_3

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->f:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 21
    .line 22
    iget v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->c:I

    .line 23
    .line 24
    sub-int/2addr v3, v0

    .line 25
    invoke-virtual {v1, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->b()Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget-object v4, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_MESSAGE_REPLY:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 36
    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_1
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->d:I

    .line 50
    .line 51
    iget v4, v1, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->a:I

    .line 52
    .line 53
    if-ne v3, v4, :cond_2

    .line 54
    .line 55
    iget-object v1, v1, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v0, 0x0

    .line 68
    :goto_2
    iget v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->b:I

    .line 69
    .line 70
    if-gt v0, v1, :cond_4

    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->f:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 73
    .line 74
    iget v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->c:I

    .line 75
    .line 76
    sub-int/2addr v3, v0

    .line 77
    invoke-virtual {v1, v3}, Lcom/join/mgps/base/a;->remove(I)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->f:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 87
    .line 88
    iget v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->d:I

    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->e:Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 91
    .line 92
    iget v3, p1, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->c:I

    .line 93
    .line 94
    const/4 v4, 0x1

    .line 95
    iget-boolean v5, p1, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->e:Z

    .line 96
    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumCommentAdapter;->Q(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->f:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 102
    .line 103
    iget v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->c:I

    .line 104
    .line 105
    iget v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->b:I

    .line 106
    .line 107
    sub-int/2addr v1, v2

    .line 108
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$l;->f:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 114
    .line 115
    .line 116
    return-void
.end method
