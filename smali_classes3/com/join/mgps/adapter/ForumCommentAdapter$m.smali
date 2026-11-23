.class Lcom/join/mgps/adapter/ForumCommentAdapter$m;
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

.field final synthetic c:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

.field final synthetic f:I

.field final synthetic g:Lcom/join/mgps/adapter/ForumCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter;ILcom/join/mgps/dto/ForumBean$ForumCommentBean;ILcom/join/mgps/adapter/ForumCommentAdapter$z$d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$size",
            "val$forumCommentBean",
            "val$cid",
            "val$commentMessageReply",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->g:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->c:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->d:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->e:Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 10
    .line 11
    iput p6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->f:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->b:I

    .line 6
    .line 7
    if-ge v0, v3, :cond_3

    .line 8
    .line 9
    new-instance v6, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->c:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 12
    .line 13
    invoke-direct {v6, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v10, v0, 0x3

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v11, 0x1

    .line 32
    if-ge v10, v5, :cond_0

    .line 33
    .line 34
    invoke-interface {v3, v0, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-interface {v3, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    :goto_1
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->g:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 58
    .line 59
    iget v5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->d:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->e:Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 62
    .line 63
    iget v7, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->c:I

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    const/4 v8, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    const/4 v8, 0x0

    .line 70
    :goto_2
    iget-boolean v9, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->e:Z

    .line 71
    .line 72
    invoke-virtual/range {v4 .. v9}, Lcom/join/mgps/adapter/ForumCommentAdapter;->Q(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 81
    .line 82
    iput v1, v3, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->f:I

    .line 83
    .line 84
    iput-boolean v2, v3, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->g:Z

    .line 85
    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    goto :goto_3

    .line 90
    :cond_2
    const/4 v4, 0x0

    .line 91
    :goto_3
    iput-boolean v4, v3, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->d:Z

    .line 92
    .line 93
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->g:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 94
    .line 95
    xor-int/lit8 v4, v2, 0x1

    .line 96
    .line 97
    invoke-virtual {v3, v0, v4}, Lcom/join/mgps/adapter/ForumCommentAdapter;->i0(Lcom/join/mgps/adapter/ForumCommentAdapter$z;Z)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->g:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 101
    .line 102
    iget v4, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->f:I

    .line 103
    .line 104
    add-int/2addr v4, v1

    .line 105
    add-int/2addr v4, v11

    .line 106
    invoke-virtual {v3, v4, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    move v0, v10

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->g:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 114
    .line 115
    iget v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->f:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/a;->remove(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$m;->g:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 123
    .line 124
    .line 125
    return-void
.end method
