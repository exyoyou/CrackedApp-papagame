.class Lcom/join/mgps/adapter/d2$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d2;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameScore;->getSgc_switch()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/adapter/d2;->g(Lcom/join/mgps/adapter/d2;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/join/mgps/activity/CommentAllListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->i(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIs_started()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->g(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->j(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$x;->b:Lcom/join/mgps/adapter/d2;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 128
    .line 129
    .line 130
    return-void
.end method
