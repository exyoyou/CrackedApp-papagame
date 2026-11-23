.class Lcom/join/mgps/adapter/CommentDetailAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter;->o(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field final synthetic c:I

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/join/mgps/adapter/CommentDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentDetailAdapter;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;ILandroid/widget/TextView;)V
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
            "val$position",
            "val$tv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->d:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->a(Lcom/join/mgps/adapter/CommentDetailAdapter;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 31
    .line 32
    iget v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->c:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->q(I)V

    .line 35
    .line 36
    .line 37
    check-cast p1, Landroid/widget/ImageView;

    .line 38
    .line 39
    const v0, 0x7f081324

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentDetailAdapter;->d:Lcom/join/mgps/adapter/CommentDetailAdapter$h;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 52
    .line 53
    iget v1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->c:I

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/adapter/CommentDetailAdapter$h;->onPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->b:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->a(Lcom/join/mgps/adapter/CommentDetailAdapter;)Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    move-object v0, p1

    .line 82
    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .line 84
    const v1, 0x7f080c51

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->a(Lcom/join/mgps/adapter/CommentDetailAdapter;)Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const v1, 0x7f010095

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/join/mgps/adapter/CommentDetailAdapter$b$a;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/CommentDetailAdapter$b$a;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter$b;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$b;->e:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentDetailAdapter;->a(Lcom/join/mgps/adapter/CommentDetailAdapter;)Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method
