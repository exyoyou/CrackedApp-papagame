.class public Lcom/join/mgps/adapter/x0;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/x0$a;,
        Lcom/join/mgps/adapter/x0$b;
    }
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/Context;

.field d:Lcom/join/mgps/adapter/x0$a;


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
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/adapter/x0;->b:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/x0;->c:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/x0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x0;->e(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic e(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/x0;->d:Lcom/join/mgps/adapter/x0$a;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/x0$a;->f(Lcom/join/mgps/dto/FriendBean;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public b(I)Lcom/join/mgps/dto/FriendBean;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/x0;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/FriendBean;

    .line 8
    .line 9
    return-object p1
.end method

.method public c()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/x0;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/join/mgps/adapter/x0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x0;->d:Lcom/join/mgps/adapter/x0$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
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
    iput-object p1, p0, Lcom/join/mgps/adapter/x0;->b:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public g(Lcom/join/mgps/adapter/x0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFriendLikeListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x0;->d:Lcom/join/mgps/adapter/x0$a;

    .line 2
    .line 3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x0;->b:Ljava/util/List;

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

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/x0;->b(I)Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p2, Lcom/join/mgps/adapter/x0$b;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/x0$b;-><init>(Lcom/join/mgps/adapter/x0;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/x0;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f0d0414

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const v1, 0x7f0a0134

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    .line 31
    iput-object v1, p2, Lcom/join/mgps/adapter/x0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    const v1, 0x7f0a10d8

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v1, p2, Lcom/join/mgps/adapter/x0$b;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const v1, 0x7f0a10a4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v1, p2, Lcom/join/mgps/adapter/x0$b;->c:Landroid/widget/TextView;

    .line 54
    .line 55
    const v1, 0x7f0a174b

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v1, p2, Lcom/join/mgps/adapter/x0$b;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v1, 0x7f0a0e5f

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p2, Lcom/join/mgps/adapter/x0$b;->e:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    check-cast p3, Lcom/join/mgps/adapter/x0$b;

    .line 84
    .line 85
    move-object v3, p3

    .line 86
    move-object p3, p2

    .line 87
    move-object p2, v3

    .line 88
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/x0;->b(I)Lcom/join/mgps/dto/FriendBean;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object v1, p2, Lcom/join/mgps/adapter/x0$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p2, Lcom/join/mgps/adapter/x0$b;->b:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p2, Lcom/join/mgps/adapter/x0$b;->c:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p2, Lcom/join/mgps/adapter/x0$b;->d:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getTime()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getReadFlag()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    const/4 v2, 0x1

    .line 133
    if-ne v1, v2, :cond_1

    .line 134
    .line 135
    iget-object p2, p2, Lcom/join/mgps/adapter/x0$b;->e:Landroid/view/View;

    .line 136
    .line 137
    const/16 v0, 0x8

    .line 138
    .line 139
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    iget-object p2, p2, Lcom/join/mgps/adapter/x0$b;->e:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :goto_1
    new-instance p2, Lcom/join/mgps/adapter/w0;

    .line 149
    .line 150
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/w0;-><init>(Lcom/join/mgps/adapter/x0;Lcom/join/mgps/dto/FriendBean;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    return-object p3
.end method
