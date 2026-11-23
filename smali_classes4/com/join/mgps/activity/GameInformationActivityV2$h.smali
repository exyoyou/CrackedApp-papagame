.class Lcom/join/mgps/activity/GameInformationActivityV2$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;->processCommentReply(Landroid/view/View;Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dto/InformationCommentBeanV2;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

.field final synthetic f:I

.field final synthetic g:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;ILcom/join/mgps/dto/InformationCommentBeanV2;Ljava/lang/String;Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;I)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->g:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->c:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->e:Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

    .line 10
    .line 11
    iput p6, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->f:I

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
    .locals 9
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
    iget v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->b:I

    .line 6
    .line 7
    if-ge v0, v3, :cond_3

    .line 8
    .line 9
    new-instance v3, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->c:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 12
    .line 13
    invoke-direct {v3, v4}, Lcom/join/mgps/dto/InformationCommentBeanV2;-><init>(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v6, v0, 0x3

    .line 26
    .line 27
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/4 v8, 0x1

    .line 32
    if-ge v6, v7, :cond_0

    .line 33
    .line 34
    invoke-interface {v4, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-interface {v4, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    :goto_1
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setReplyList(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->g:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->d:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->e:Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

    .line 62
    .line 63
    iget v5, v5, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->c:I

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    const/4 v7, 0x0

    .line 70
    :goto_2
    invoke-virtual {v0, v4, v3, v5, v7}, Lcom/join/mgps/activity/GameInformationActivityV2;->createCommentMessageReplyViewBean(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v3, v0, Lcom/join/mgps/activity/GameInformationActivityV2$o;->a:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

    .line 77
    .line 78
    iput v1, v3, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->e:I

    .line 79
    .line 80
    iput-boolean v2, v3, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->f:Z

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    const/4 v4, 0x0

    .line 87
    :goto_3
    iput-boolean v4, v3, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->d:Z

    .line 88
    .line 89
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->g:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 90
    .line 91
    xor-int/lit8 v4, v2, 0x1

    .line 92
    .line 93
    invoke-virtual {v3, v0, v4}, Lcom/join/mgps/activity/GameInformationActivityV2;->setCommentMessageReplyBottomVisibility(Lcom/join/mgps/activity/GameInformationActivityV2$o;Z)V

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->g:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 99
    .line 100
    iget v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->f:I

    .line 101
    .line 102
    add-int/2addr v4, v1

    .line 103
    add-int/2addr v4, v8

    .line 104
    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    move v0, v6

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->g:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 114
    .line 115
    iget v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->f:I

    .line 116
    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->g:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$1300(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$h;->g:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->mListenr:Lcom/join/mgps/activity/GameInformationActivityV2$p;

    .line 132
    .line 133
    invoke-interface {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$p;->d()V

    .line 134
    .line 135
    .line 136
    return-void
.end method
