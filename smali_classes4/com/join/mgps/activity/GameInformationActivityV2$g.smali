.class Lcom/join/mgps/activity/GameInformationActivityV2$g;
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

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

.field final synthetic f:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;IILjava/lang/String;Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->f:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->e:Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->b:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->b:I

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_3

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->f:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 23
    .line 24
    iget v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->c:I

    .line 25
    .line 26
    sub-int/2addr v3, v1

    .line 27
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/join/mgps/activity/GameInformationActivityV2$o;->b:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    sget-object v4, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->vaule()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ne v3, v4, :cond_1

    .line 46
    .line 47
    iget-object v2, v2, Lcom/join/mgps/activity/GameInformationActivityV2$o;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v2, 0x0

    .line 53
    :goto_1
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->d:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v4, v2, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->a:Ljava/lang/String;

    .line 58
    .line 59
    if-ne v3, v4, :cond_2

    .line 60
    .line 61
    iget-object v2, v2, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 v1, 0x0

    .line 74
    :goto_2
    iget v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->b:I

    .line 75
    .line 76
    if-gt v1, v2, :cond_4

    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->f:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 81
    .line 82
    iget v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->c:I

    .line 83
    .line 84
    sub-int/2addr v3, v1

    .line 85
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setReplyList(Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->f:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->d:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->e:Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

    .line 99
    .line 100
    iget v2, v2, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->c:I

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/join/mgps/activity/GameInformationActivityV2;->createCommentMessageReplyViewBean(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->f:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 110
    .line 111
    iget v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->c:I

    .line 112
    .line 113
    iget v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->b:I

    .line 114
    .line 115
    sub-int/2addr v1, v2

    .line 116
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->f:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$1300(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$g;->f:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 129
    .line 130
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2;->mListenr:Lcom/join/mgps/activity/GameInformationActivityV2$p;

    .line 131
    .line 132
    invoke-interface {p1}, Lcom/join/mgps/activity/GameInformationActivityV2$p;->d()V

    .line 133
    .line 134
    .line 135
    return-void
.end method
