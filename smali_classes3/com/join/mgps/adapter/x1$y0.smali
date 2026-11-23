.class Lcom/join/mgps/adapter/x1$y0;
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

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/x1$r1;

.field final synthetic f:Lcom/join/mgps/adapter/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1;IILjava/lang/String;Lcom/join/mgps/adapter/x1$r1;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$y0;->f:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/x1$y0;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/x1$y0;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/x1$y0;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/adapter/x1$y0;->e:Lcom/join/mgps/adapter/x1$r1;

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
    iget p1, p0, Lcom/join/mgps/adapter/x1$y0;->b:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/join/mgps/dto/InformationCommentBean;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

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
    iget v1, p0, Lcom/join/mgps/adapter/x1$y0;->b:I

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_3

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/adapter/x1$y0;->f:Lcom/join/mgps/adapter/x1;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/join/mgps/adapter/x1;->j(Lcom/join/mgps/adapter/x1;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v3, p0, Lcom/join/mgps/adapter/x1$y0;->c:I

    .line 27
    .line 28
    sub-int/2addr v3, v1

    .line 29
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/join/mgps/adapter/x1$n1;

    .line 34
    .line 35
    iget v3, v2, Lcom/join/mgps/adapter/x1$n1;->b:I

    .line 36
    .line 37
    const/16 v4, 0xf

    .line 38
    .line 39
    if-ne v3, v4, :cond_1

    .line 40
    .line 41
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$n1;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lcom/join/mgps/adapter/x1$r1;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 47
    :goto_1
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v3, p0, Lcom/join/mgps/adapter/x1$y0;->d:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v4, v2, Lcom/join/mgps/adapter/x1$r1;->a:Ljava/lang/String;

    .line 52
    .line 53
    if-ne v3, v4, :cond_2

    .line 54
    .line 55
    iget-object v2, v2, Lcom/join/mgps/adapter/x1$r1;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v1, 0x0

    .line 68
    :goto_2
    iget v2, p0, Lcom/join/mgps/adapter/x1$y0;->b:I

    .line 69
    .line 70
    if-gt v1, v2, :cond_4

    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/adapter/x1$y0;->f:Lcom/join/mgps/adapter/x1;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/join/mgps/adapter/x1;->j(Lcom/join/mgps/adapter/x1;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget v3, p0, Lcom/join/mgps/adapter/x1$y0;->c:I

    .line 79
    .line 80
    sub-int/2addr v3, v1

    .line 81
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setSub(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$y0;->f:Lcom/join/mgps/adapter/x1;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/adapter/x1$y0;->d:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/join/mgps/adapter/x1$y0;->e:Lcom/join/mgps/adapter/x1$r1;

    .line 95
    .line 96
    iget v2, v2, Lcom/join/mgps/adapter/x1$r1;->c:I

    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/join/mgps/adapter/x1;->p(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/x1$n1;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$y0;->f:Lcom/join/mgps/adapter/x1;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/join/mgps/adapter/x1;->j(Lcom/join/mgps/adapter/x1;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget v1, p0, Lcom/join/mgps/adapter/x1$y0;->c:I

    .line 110
    .line 111
    iget v2, p0, Lcom/join/mgps/adapter/x1$y0;->b:I

    .line 112
    .line 113
    sub-int/2addr v1, v2

    .line 114
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$y0;->f:Lcom/join/mgps/adapter/x1;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 120
    .line 121
    .line 122
    return-void
.end method
