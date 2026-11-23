.class Lcom/join/mgps/activity/CommentDetailActivity$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->initHeadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1200(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1100(Lcom/join/mgps/activity/CommentDetailActivity;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$000(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$200(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/join/mgps/activity/CommentCreatActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->gameId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->commentId:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1200(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStars_score()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->e(F)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->gameType:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const/4 v0, 0x1

    .line 117
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->i(Z)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 126
    .line 127
    iget v0, v0, Lcom/join/mgps/activity/CommentDetailActivity;->bespeakSwitch:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1200(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMobile_phone_model()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->k(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$q;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1200(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getContent()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 162
    .line 163
    .line 164
    :cond_1
    return-void
.end method
