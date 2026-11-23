.class public Lcom/join/mgps/adapter/j0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/j0$a;,
        Lcom/join/mgps/adapter/j0$b;
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/join/mgps/adapter/j0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/j0;->f:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/j0;->e:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/j0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/j0;->d(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/j0;->g:Lcom/join/mgps/adapter/j0$a;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/j0$a;->I(Lcom/join/mgps/dto/FriendBean;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j0;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/join/mgps/adapter/j0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j0;->g:Lcom/join/mgps/adapter/j0$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/j0;->f:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public f(Lcom/join/mgps/adapter/j0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAddFriendListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/j0;->g:Lcom/join/mgps/adapter/j0$a;

    .line 2
    .line 3
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j0;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j0;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/join/mgps/adapter/j0$b;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p1, Lcom/join/mgps/adapter/j0$b;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/j0;->f:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/join/mgps/dto/FriendBean;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/join/mgps/adapter/j0$b;->d:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lcom/join/mgps/adapter/j0$b;->e:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getAccount()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lcom/join/mgps/adapter/j0$b;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getFriendRequestType()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getFriendRequestType()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "ACCEPT"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x0

    .line 63
    const/4 v2, 0x1

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    iget-object p2, p1, Lcom/join/mgps/adapter/j0$b;->f:Landroid/widget/TextView;

    .line 67
    .line 68
    const-string v0, "\u5df2\u6dfb\u52a0"

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p1, Lcom/join/mgps/adapter/j0$b;->f:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lcom/join/mgps/adapter/j0$b;->f:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getFriendRequestType()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v3, "REJECT"

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getFriendRequestType()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v3, "INIT"

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/j0$b;->f:Landroid/widget/TextView;

    .line 110
    .line 111
    const-string v1, "\u52a0\u597d\u53cb"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p1, Lcom/join/mgps/adapter/j0$b;->f:Landroid/widget/TextView;

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p1, Lcom/join/mgps/adapter/j0$b;->f:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v0, Lcom/join/mgps/adapter/i0;

    .line 125
    .line 126
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/i0;-><init>(Lcom/join/mgps/adapter/j0;Lcom/join/mgps/dto/FriendBean;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/j0$b;->f:Landroid/widget/TextView;

    .line 134
    .line 135
    const-string v0, "\u5df2\u53d1\u9001"

    .line 136
    .line 137
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p1, Lcom/join/mgps/adapter/j0$b;->f:Landroid/widget/TextView;

    .line 141
    .line 142
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p1, Lcom/join/mgps/adapter/j0$b;->f:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/j0$b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/j0;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d040f

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/j0$b;-><init>(Lcom/join/mgps/adapter/j0;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/j0;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method
