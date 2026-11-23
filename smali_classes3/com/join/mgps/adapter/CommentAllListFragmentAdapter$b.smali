.class Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;I)V
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
            "val$finalCommentViewHolder1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->e:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-lez v4, :cond_5

    .line 31
    .line 32
    sub-int/2addr v4, v3

    .line 33
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->e:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget v4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->d:I

    .line 61
    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/16 v4, 0x73

    .line 108
    .line 109
    if-le v0, v4, :cond_4

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->c:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_0
    return-void
.end method
