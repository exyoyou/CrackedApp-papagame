.class Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->o(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic c:I

.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
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
            "val$commitDataBean",
            "val$position",
            "val$view",
            "val$tv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->f:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->e:Landroid/widget/TextView;

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
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->f:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x1

    .line 28
    if-ne p1, v0, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->f:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 31
    .line 32
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->c:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->r(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->d:Landroid/widget/ImageView;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->f:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->n:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 52
    .line 53
    iget v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->c:I

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;->onPraise(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->f:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->d:Landroid/widget/ImageView;

    .line 82
    .line 83
    const v0, 0x7f081329

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->f:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const v0, 0x7f010095

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->d:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e$a;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e$a;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;->f:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void
.end method
