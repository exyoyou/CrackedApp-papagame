.class Lcom/join/mgps/customview/ForumIndexHeaderView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ForumIndexHeaderView;->c(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/RecommendLabelTag;

.field final synthetic c:Lcom/join/mgps/customview/ForumIndexHeaderView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ForumIndexHeaderView;Lcom/join/mgps/dto/RecommendLabelTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const/4 v0, 0x3

    .line 76
    if-lt p1, v0, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 79
    .line 80
    iget-object v0, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->q:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const v1, 0x7f120133

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->q:Landroid/widget/TextView;

    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 106
    .line 107
    iget-object v0, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->q:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const v1, 0x7f120134

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->c:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->q:Landroid/widget/TextView;

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void
.end method
