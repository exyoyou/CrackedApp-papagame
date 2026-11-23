.class Lcom/join/mgps/adapter/x1$z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1;->F(Landroid/view/View;Lcom/join/mgps/adapter/x1$r1;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dto/InformationCommentBean;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/adapter/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;I)V
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
            "val$size",
            "val$forumCommentBean",
            "val$cid",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$z0;->f:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/x1$z0;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/x1$z0;->c:Lcom/join/mgps/dto/InformationCommentBean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/x1$z0;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/adapter/x1$z0;->e:I

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
    iget v3, p0, Lcom/join/mgps/adapter/x1$z0;->b:I

    .line 6
    .line 7
    if-ge v0, v3, :cond_3

    .line 8
    .line 9
    new-instance v3, Lcom/join/mgps/dto/InformationCommentBean;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/join/mgps/adapter/x1$z0;->c:Lcom/join/mgps/dto/InformationCommentBean;

    .line 12
    .line 13
    invoke-direct {v3, v4}, Lcom/join/mgps/dto/InformationCommentBean;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

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
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/InformationCommentBean;->setSub(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$z0;->f:Lcom/join/mgps/adapter/x1;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/join/mgps/adapter/x1$z0;->d:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    const/4 v5, 0x0

    .line 66
    :goto_2
    invoke-virtual {v0, v4, v3, p1, v5}, Lcom/join/mgps/adapter/x1;->p(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/x1$n1;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v3, v0, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Lcom/join/mgps/adapter/x1$r1;

    .line 73
    .line 74
    iput v1, v3, Lcom/join/mgps/adapter/x1$r1;->e:I

    .line 75
    .line 76
    iput-boolean v2, v3, Lcom/join/mgps/adapter/x1$r1;->f:Z

    .line 77
    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    const/4 v4, 0x0

    .line 83
    :goto_3
    iput-boolean v4, v3, Lcom/join/mgps/adapter/x1$r1;->d:Z

    .line 84
    .line 85
    iget-object v3, p0, Lcom/join/mgps/adapter/x1$z0;->f:Lcom/join/mgps/adapter/x1;

    .line 86
    .line 87
    xor-int/lit8 v4, v2, 0x1

    .line 88
    .line 89
    invoke-virtual {v3, v0, v4}, Lcom/join/mgps/adapter/x1;->J(Lcom/join/mgps/adapter/x1$n1;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v3, p0, Lcom/join/mgps/adapter/x1$z0;->f:Lcom/join/mgps/adapter/x1;

    .line 93
    .line 94
    invoke-static {v3}, Lcom/join/mgps/adapter/x1;->j(Lcom/join/mgps/adapter/x1;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget v4, p0, Lcom/join/mgps/adapter/x1$z0;->e:I

    .line 99
    .line 100
    add-int/2addr v4, v1

    .line 101
    add-int/2addr v4, v8

    .line 102
    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    move v0, v6

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$z0;->f:Lcom/join/mgps/adapter/x1;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->j(Lcom/join/mgps/adapter/x1;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget v0, p0, Lcom/join/mgps/adapter/x1$z0;->e:I

    .line 116
    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$z0;->f:Lcom/join/mgps/adapter/x1;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 123
    .line 124
    .line 125
    return-void
.end method
