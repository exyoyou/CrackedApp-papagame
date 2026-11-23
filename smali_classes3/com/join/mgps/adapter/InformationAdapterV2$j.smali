.class Lcom/join/mgps/adapter/InformationAdapterV2$j;
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

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

.field final synthetic f:Lcom/join/mgps/adapter/InformationAdapterV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/InformationAdapterV2;IILjava/lang/String;Lcom/join/mgps/adapter/InformationAdapterV2$n$b;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->f:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->e:Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

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
    iget p1, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->b:I

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
    iget v1, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->b:I

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_3

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->f:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2;->b(Lcom/join/mgps/adapter/InformationAdapterV2;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v3, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->c:I

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
    check-cast v2, Lcom/join/mgps/adapter/InformationAdapterV2$n;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$n;->b()Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    sget-object v4, Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;->REPLY:Lcom/join/mgps/adapter/InformationAdapterV2$ViewType;

    .line 40
    .line 41
    if-ne v3, v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/adapter/InformationAdapterV2$n;->a()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :goto_1
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object v3, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->d:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v4, v2, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->a:Ljava/lang/String;

    .line 56
    .line 57
    if-ne v3, v4, :cond_2

    .line 58
    .line 59
    iget-object v2, v2, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v1, 0x0

    .line 72
    :goto_2
    iget v2, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->b:I

    .line 73
    .line 74
    if-gt v1, v2, :cond_4

    .line 75
    .line 76
    iget-object v2, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->f:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/join/mgps/adapter/InformationAdapterV2;->b(Lcom/join/mgps/adapter/InformationAdapterV2;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget v3, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->c:I

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
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->f:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->d:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->e:Lcom/join/mgps/adapter/InformationAdapterV2$n$b;

    .line 99
    .line 100
    iget v2, v2, Lcom/join/mgps/adapter/InformationAdapterV2$n$b;->c:I

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/join/mgps/adapter/InformationAdapterV2;->d(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)Lcom/join/mgps/adapter/InformationAdapterV2$n;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->f:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/join/mgps/adapter/InformationAdapterV2;->b(Lcom/join/mgps/adapter/InformationAdapterV2;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget v1, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->c:I

    .line 114
    .line 115
    iget v2, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->b:I

    .line 116
    .line 117
    sub-int/2addr v1, v2

    .line 118
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapterV2$j;->f:Lcom/join/mgps/adapter/InformationAdapterV2;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/join/mgps/adapter/InformationAdapterV2;->notifyDataSetChanged()V

    .line 124
    .line 125
    .line 126
    return-void
.end method
