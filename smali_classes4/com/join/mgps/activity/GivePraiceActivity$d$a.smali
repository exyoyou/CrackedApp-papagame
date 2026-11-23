.class Lcom/join/mgps/activity/GivePraiceActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GivePraiceActivity$d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/GivePraiceActivity$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GivePraiceActivity$d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->c:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:I

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->c:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 4
    .line 5
    iget v0, p1, Lcom/join/mgps/activity/GivePraiceActivity;->type:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->c:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:I

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getPid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->c:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/r0;->w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/activity/GivePraiceActivity;->showToast()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/activity/GivePraiceActivity;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->c:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 66
    .line 67
    iget v2, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:I

    .line 68
    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getGame_id()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->c:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 93
    .line 94
    iget v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:I

    .line 95
    .line 96
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getOriginal_text_id()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, ""

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->c:Lcom/join/mgps/activity/GivePraiceActivity$d;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 148
    .line 149
    iget v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d$a;->b:I

    .line 150
    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getComment_score_switch()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 166
    .line 167
    .line 168
    :goto_0
    return-void
.end method
