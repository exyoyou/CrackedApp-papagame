.class Lcom/join/mgps/adapter/InformationAdapterV2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/InformationAdapterV2;->j(Landroid/view/View;Lcom/join/mgps/adapter/InformationAdapterV2$n$b;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dto/InformationCommentBeanV2;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

.field final synthetic f:I

.field final synthetic g:Lcom/join/mgps/adapter/InformationAdapterV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/InformationAdapterV2;ILcom/join/mgps/dto/InformationCommentBeanV2;Ljava/lang/String;Lcom/join/mgps/adapter/InformationAdapterV2$n$b;I)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->g:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->c:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->e:Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

    .line 10
    .line 11
    iput p6, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->f:I

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
    iget v3, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->b:I

    .line 6
    .line 7
    if-ge v0, v3, :cond_3

    .line 8
    .line 9
    new-instance v3, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->c:Lcom/join/mgps/dto/InformationCommentBeanV2;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->g:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->d:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->e:Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

    .line 62
    .line 63
    iget v5, v5, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->c:I

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
    invoke-virtual {v0, v4, v3, v5, v7}, Lcom/join/mgps/adapter/InformationAdapterV2;->d(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)Lcom/join/mgps/adapter/InformationAdapterV2$n;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/adapter/InformationAdapterV2$n;->a()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

    .line 79
    .line 80
    iput v1, v3, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->e:I

    .line 81
    .line 82
    iput-boolean v2, v3, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->f:Z

    .line 83
    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    const/4 v4, 0x0

    .line 89
    :goto_3
    iput-boolean v4, v3, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->d:Z

    .line 90
    .line 91
    iget-object v3, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->g:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 92
    .line 93
    xor-int/lit8 v4, v2, 0x1

    .line 94
    .line 95
    invoke-virtual {v3, v0, v4}, Lcom/join/mgps/adapter/InformationAdapterV2;->k(Lcom/join/mgps/adapter/InformationAdapterV2$n;Z)V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->g:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 99
    .line 100
    invoke-static {v3}, Lcom/join/mgps/adapter/InformationAdapterV2;->b(Lcom/join/mgps/adapter/InformationAdapterV2;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget v4, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->f:I

    .line 105
    .line 106
    add-int/2addr v4, v1

    .line 107
    add-int/2addr v4, v8

    .line 108
    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    move v0, v6

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->g:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->b(Lcom/join/mgps/adapter/InformationAdapterV2;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->f:I

    .line 122
    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapterV2$a;->g:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->notifyDataSetChanged()V

    .line 129
    .line 130
    .line 131
    return-void
.end method
