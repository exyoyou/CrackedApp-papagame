.class Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/recomend/RecommendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_GAME:I = 0x1

.field public static final ITEM_TYPE_TITLE:I


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/RecommendActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendBean;->getViewType()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "vh",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/join/mgps/activity/recomend/RecommendActivity;->allData:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    check-cast p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentTitleHolder;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentTitleHolder;->tv_text_1:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/activity/recomend/RecommendBean;->getTag()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentTitleHolder;->tv_text_1:Landroid/widget/TextView;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const v1, 0x7f071473

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentTitleHolder;->tv_text_1:Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const v1, 0x7f0713c2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 p2, 0x1

    .line 70
    if-ne v0, p2, :cond_3

    .line 71
    .line 72
    :try_start_0
    check-cast p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;

    .line 73
    .line 74
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;->appName:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;->appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/join/mgps/activity/recomend/RecommendBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const v3, 0x7f080caf

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v2, v3}, Lcom/join/android/app/common/utils/l;->p(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/join/mgps/activity/recomend/RecommendBean;->getIs_select()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-ne v0, p2, :cond_2

    .line 108
    .line 109
    iget-object p2, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;->selectbutn:Landroid/widget/ImageView;

    .line 110
    .line 111
    const v0, 0x7f0803ef

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object p2, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;->selectbutn:Landroid/widget/ImageView;

    .line 119
    .line 120
    const v0, 0x7f0803f2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    .line 125
    .line 126
    :goto_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 127
    .line 128
    new-instance v0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;

    .line 129
    .line 130
    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;Lcom/join/mgps/activity/recomend/RecommendBean;Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const v1, 0x7f0d047c

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentTitleHolder;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 22
    .line 23
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentTitleHolder;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivity;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    return-object p2

    .line 27
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/join/mgps/activity/recomend/RecommendActivity;->context:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const v1, 0x7f0d0477

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance p2, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 45
    .line 46
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;-><init>(Lcom/join/mgps/activity/recomend/RecommendActivity;Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    return-object p2
.end method
