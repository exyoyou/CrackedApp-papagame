.class Lcom/join/mgps/adapter/k1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/k1;->f(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
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

.field final synthetic f:Lcom/join/mgps/adapter/k1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/k1;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/k1$d;->f:Lcom/join/mgps/adapter/k1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/k1$d;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/k1$d;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/k1$d;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/adapter/k1$d;->e:Landroid/widget/TextView;

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
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/k1$d;->f:Lcom/join/mgps/adapter/k1;

    .line 6
    .line 7
    iget-wide v2, p1, Lcom/join/mgps/adapter/k1;->g:J

    .line 8
    .line 9
    sub-long v2, v0, v2

    .line 10
    .line 11
    const-wide/16 v4, 0x1f4

    .line 12
    .line 13
    cmp-long v6, v2, v4

    .line 14
    .line 15
    if-gez v6, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput-wide v0, p1, Lcom/join/mgps/adapter/k1;->g:J

    .line 19
    .line 20
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/join/mgps/adapter/k1$d;->f:Lcom/join/mgps/adapter/k1;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/adapter/k1;->a(Lcom/join/mgps/adapter/k1;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/k1$d;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v0, 0x1

    .line 47
    if-ne p1, v0, :cond_4

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/adapter/k1$d;->f:Lcom/join/mgps/adapter/k1;

    .line 50
    .line 51
    iget v0, p0, Lcom/join/mgps/adapter/k1$d;->c:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/k1;->i(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/adapter/k1$d;->d:Landroid/widget/ImageView;

    .line 57
    .line 58
    const v0, 0x7f081324

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/adapter/k1$d;->f:Lcom/join/mgps/adapter/k1;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/join/mgps/adapter/k1;->f:Lcom/join/mgps/adapter/x1$p1;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/adapter/k1$d;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 71
    .line 72
    iget v1, p0, Lcom/join/mgps/adapter/k1$d;->c:I

    .line 73
    .line 74
    const/4 v2, 0x2

    .line 75
    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/adapter/x1$p1;->onPraise(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void

    .line 79
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/k1$d;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/adapter/k1$d;->f:Lcom/join/mgps/adapter/k1;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/join/mgps/adapter/k1;->a(Lcom/join/mgps/adapter/k1;)Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/adapter/k1$d;->d:Landroid/widget/ImageView;

    .line 101
    .line 102
    const v0, 0x7f081329

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/adapter/k1$d;->f:Lcom/join/mgps/adapter/k1;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/join/mgps/adapter/k1;->a(Lcom/join/mgps/adapter/k1;)Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const v0, 0x7f010095

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/join/mgps/adapter/k1$d;->d:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/join/mgps/adapter/k1$d$a;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/k1$d$a;-><init>(Lcom/join/mgps/adapter/k1$d;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/join/mgps/adapter/k1$d;->f:Lcom/join/mgps/adapter/k1;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/join/mgps/adapter/k1;->a(Lcom/join/mgps/adapter/k1;)Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 146
    .line 147
    .line 148
    :goto_0
    return-void
.end method
