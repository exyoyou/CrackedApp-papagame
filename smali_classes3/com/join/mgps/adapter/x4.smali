.class public Lcom/join/mgps/adapter/x4;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/x4$k;,
        Lcom/join/mgps/adapter/x4$l;,
        Lcom/join/mgps/adapter/x4$n;,
        Lcom/join/mgps/adapter/x4$j;,
        Lcom/join/mgps/adapter/x4$h;,
        Lcom/join/mgps/adapter/x4$m;,
        Lcom/join/mgps/adapter/x4$i;,
        Lcom/join/mgps/adapter/x4$f;,
        Lcom/join/mgps/adapter/x4$d;,
        Lcom/join/mgps/adapter/x4$g;,
        Lcom/join/mgps/adapter/x4$e;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:I

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/x4;->d:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/x4;->c:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/adapter/x4;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/dto/PaPaBean;->getTypes()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/2addr p1, v0

    .line 16
    iput p1, p0, Lcom/join/mgps/adapter/x4;->d:I

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/x4;Lcom/join/mgps/dto/AppBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x4;->d(Lcom/join/mgps/dto/AppBean;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/adapter/x4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x4;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/x4;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x4;->e:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic d(Lcom/join/mgps/dto/AppBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/x4;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewHolderListItem",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->m(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/LinearLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p1, Lcom/join/mgps/adapter/x4$h;->f:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p1, Lcom/join/mgps/adapter/x4$h;->e:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->i(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->m(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/LinearLayout;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    iget-object p2, p1, Lcom/join/mgps/adapter/x4$h;->f:Landroid/widget/ProgressBar;

    .line 49
    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p1, Lcom/join/mgps/adapter/x4$h;->e:Landroid/widget/ProgressBar;

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/x4$h;->e:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p1, Lcom/join/mgps/adapter/x4$h;->f:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->i(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void
.end method

.method private g(Landroid/view/View;Lcom/join/mgps/adapter/x4$i;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "convertView",
            "standAloneCompanyHolder",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Ljava/util/List;

    .line 6
    .line 7
    const v0, 0x7f0a1204

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/join/mgps/adapter/x4$f;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/adapter/x4$f;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/adapter/x4;->c:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/adapter/x4$f;-><init>(Lcom/join/mgps/adapter/x4;Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p2, Lcom/join/mgps/adapter/x4$i;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Lcom/join/mgps/adapter/x4$f;->setListDatas(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private h(Landroid/view/View;Lcom/join/mgps/adapter/x4$j;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "convertView",
            "standAloneHorizontalHolder",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Ljava/util/List;

    .line 6
    .line 7
    const v0, 0x7f0a1206

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/join/mgps/adapter/x4$d;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/adapter/x4$d;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/adapter/x4;->c:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/adapter/x4$d;-><init>(Lcom/join/mgps/adapter/x4;Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p2, Lcom/join/mgps/adapter/x4$j;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Lcom/join/mgps/adapter/x4$d;->setListDatas(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private i(Lcom/join/mgps/adapter/x4$k;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "standAloneLine20Holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/x4$k;->a:Landroid/view/View;

    .line 4
    .line 5
    const/16 p2, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/x4$k;->a:Landroid/view/View;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private j(Lcom/join/mgps/adapter/x4$l;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "standAloneLine40Holder",
            "paPaBean"
        }
    .end annotation

    .line 1
    return-void
.end method

.method private k(Lcom/join/mgps/adapter/x4$m;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "standAloneTagHolder",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/util/List;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->o(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/LinearLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->c(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/LinearLayout;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->i(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/LinearLayout;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ge v1, v2, :cond_3

    .line 36
    .line 37
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->q(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getTitle()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->a(Lcom/join/mgps/adapter/x4$m;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getPic()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->o(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/LinearLayout;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->o(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/LinearLayout;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v4, Lcom/join/mgps/adapter/x4$a;

    .line 79
    .line 80
    invoke-direct {v4, p0, v2}, Lcom/join/mgps/adapter/x4$a;-><init>(Lcom/join/mgps/adapter/x4;Lcom/join/mgps/dto/StandAloneListBean$ListBean;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    const/4 v3, 0x1

    .line 88
    if-ne v1, v3, :cond_1

    .line 89
    .line 90
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->e(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/TextView;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getTitle()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->g(Lcom/join/mgps/adapter/x4$m;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getPic()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->c(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/LinearLayout;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->c(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/LinearLayout;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    new-instance v4, Lcom/join/mgps/adapter/x4$b;

    .line 124
    .line 125
    invoke-direct {v4, p0, v2}, Lcom/join/mgps/adapter/x4$b;-><init>(Lcom/join/mgps/adapter/x4;Lcom/join/mgps/dto/StandAloneListBean$ListBean;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    const/4 v3, 0x2

    .line 133
    if-ne v1, v3, :cond_2

    .line 134
    .line 135
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->k(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/TextView;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getTitle()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->m(Lcom/join/mgps/adapter/x4$m;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getPic()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->i(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/LinearLayout;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$m;->i(Lcom/join/mgps/adapter/x4$m;)Landroid/widget/LinearLayout;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    new-instance v4, Lcom/join/mgps/adapter/x4$c;

    .line 169
    .line 170
    invoke-direct {v4, p0, v2}, Lcom/join/mgps/adapter/x4$c;-><init>(Lcom/join/mgps/adapter/x4;Lcom/join/mgps/dto/StandAloneListBean$ListBean;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_3
    return-void
.end method

.method private l(Lcom/join/mgps/adapter/x4$n;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "standAloneTitleHolder",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/CollectionInfo;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/x4$n;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionInfo;->getTitle()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private m(Lcom/join/mgps/adapter/x4$h;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolderListItem",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/AppBean;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->c(Lcom/join/mgps/adapter/x4$h;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f080caf

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->e(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/ImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->g(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->i(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getAppSize()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    .line 61
    .line 62
    mul-double v2, v2, v4

    .line 63
    .line 64
    double-to-long v2, v2

    .line 65
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getScore()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getDown_count()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getAppSize()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->o(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/LinearLayout;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    iget-object v10, p0, Lcom/join/mgps/adapter/x4;->c:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static/range {v4 .. v10}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->k(Lcom/join/mgps/adapter/x4$h;)Lcom/join/mgps/customview/DownloadNormalView;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-instance v5, Lm6/c;

    .line 103
    .line 104
    iget-object v6, p0, Lcom/join/mgps/adapter/x4;->c:Landroid/content/Context;

    .line 105
    .line 106
    invoke-direct {v5, v6, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_0

    .line 117
    .line 118
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->o(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/LinearLayout;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->e(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/ImageView;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_4

    .line 133
    .line 134
    :cond_0
    if-nez v0, :cond_1

    .line 135
    .line 136
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    const/16 v5, 0x2b

    .line 162
    .line 163
    if-lez v4, :cond_2

    .line 164
    .line 165
    const/16 v1, 0x2b

    .line 166
    .line 167
    :cond_2
    if-eqz v1, :cond_9

    .line 168
    .line 169
    const/16 v4, 0x30

    .line 170
    .line 171
    if-eq v1, v4, :cond_8

    .line 172
    .line 173
    const/4 v4, 0x2

    .line 174
    const-wide/16 v6, 0x0

    .line 175
    .line 176
    const-string v8, "/"

    .line 177
    .line 178
    if-eq v1, v4, :cond_6

    .line 179
    .line 180
    const/4 v4, 0x3

    .line 181
    if-eq v1, v4, :cond_4

    .line 182
    .line 183
    const/4 v4, 0x5

    .line 184
    if-eq v1, v4, :cond_3

    .line 185
    .line 186
    const/4 v4, 0x6

    .line 187
    if-eq v1, v4, :cond_4

    .line 188
    .line 189
    const/4 v4, 0x7

    .line 190
    if-eq v1, v4, :cond_9

    .line 191
    .line 192
    const/16 v4, 0x2a

    .line 193
    .line 194
    if-eq v1, v4, :cond_3

    .line 195
    .line 196
    if-eq v1, v5, :cond_9

    .line 197
    .line 198
    packed-switch v1, :pswitch_data_0

    .line 199
    .line 200
    .line 201
    goto/16 :goto_4

    .line 202
    .line 203
    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 204
    .line 205
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-direct {p0, p1, v1, v4}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 211
    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->k:Landroid/widget/TextView;

    .line 242
    .line 243
    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->e:Landroid/widget/ProgressBar;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 251
    .line 252
    .line 253
    move-result-wide v2

    .line 254
    long-to-int v0, v2

    .line 255
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_4

    .line 259
    .line 260
    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 261
    .line 262
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-direct {p0, p1, v1, v4}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 268
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->k:Landroid/widget/TextView;

    .line 299
    .line 300
    const-string v2, "\u89e3\u538b\u4e2d.."

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->e:Landroid/widget/ProgressBar;

    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 308
    .line 309
    .line 310
    move-result-wide v2

    .line 311
    long-to-int v0, v2

    .line 312
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_4

    .line 316
    .line 317
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 318
    .line 319
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 320
    .line 321
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_4

    .line 325
    .line 326
    :pswitch_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 327
    .line 328
    invoke-direct {p0, p1, v1, v1}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 329
    .line 330
    .line 331
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 332
    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 339
    .line 340
    .line 341
    move-result-wide v5

    .line 342
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    :try_start_0
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->f:Landroid/widget/ProgressBar;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 369
    .line 370
    .line 371
    move-result-wide v2

    .line 372
    long-to-int v0, v2

    .line 373
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .line 375
    .line 376
    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    .line 380
    .line 381
    :goto_0
    iget-object v0, p1, Lcom/join/mgps/adapter/x4$h;->k:Landroid/widget/TextView;

    .line 382
    .line 383
    const-string v1, "\u7b49\u5f85\u4e2d"

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_4

    .line 389
    .line 390
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 391
    .line 392
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 393
    .line 394
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_4

    .line 398
    .line 399
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 400
    .line 401
    invoke-direct {p0, p1, v0, v0}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 407
    .line 408
    invoke-direct {p0, p1, v1, v1}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 409
    .line 410
    .line 411
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 412
    .line 413
    .line 414
    move-result-wide v4

    .line 415
    cmp-long v1, v4, v6

    .line 416
    .line 417
    if-nez v1, :cond_5

    .line 418
    .line 419
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 420
    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 427
    .line 428
    .line 429
    move-result-wide v5

    .line 430
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    goto :goto_1

    .line 455
    :cond_5
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 456
    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 463
    .line 464
    .line 465
    move-result-wide v5

    .line 466
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .line 489
    .line 490
    :goto_1
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->f:Landroid/widget/ProgressBar;

    .line 491
    .line 492
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 493
    .line 494
    .line 495
    move-result-wide v2

    .line 496
    long-to-int v0, v2

    .line 497
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    .line 499
    .line 500
    goto :goto_2

    .line 501
    :catch_1
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 503
    .line 504
    .line 505
    :goto_2
    iget-object v0, p1, Lcom/join/mgps/adapter/x4$h;->k:Landroid/widget/TextView;

    .line 506
    .line 507
    const-string v1, "\u6682\u505c\u4e2d"

    .line 508
    .line 509
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_4

    .line 513
    .line 514
    :cond_6
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 515
    .line 516
    .line 517
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 518
    .line 519
    invoke-direct {p0, p1, v1, v1}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 523
    .line 524
    .line 525
    move-result-wide v4

    .line 526
    cmp-long v1, v4, v6

    .line 527
    .line 528
    if-nez v1, :cond_7

    .line 529
    .line 530
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 531
    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 538
    .line 539
    .line 540
    move-result-wide v5

    .line 541
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    goto :goto_3

    .line 566
    :cond_7
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 567
    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 574
    .line 575
    .line 576
    move-result-wide v5

    .line 577
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    .line 600
    .line 601
    :goto_3
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->f:Landroid/widget/ProgressBar;

    .line 602
    .line 603
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 604
    .line 605
    .line 606
    move-result-wide v2

    .line 607
    long-to-int v3, v2

    .line 608
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    iget-object v1, p1, Lcom/join/mgps/adapter/x4$h;->k:Landroid/widget/TextView;

    .line 616
    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v0, "/S"

    .line 626
    .line 627
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    .line 636
    .line 637
    goto :goto_4

    .line 638
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 639
    .line 640
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 641
    .line 642
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 643
    .line 644
    .line 645
    goto :goto_4

    .line 646
    :cond_9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 647
    .line 648
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 649
    .line 650
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/adapter/x4;->f(Lcom/join/mgps/adapter/x4$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 651
    .line 652
    .line 653
    :goto_4
    invoke-static {p1}, Lcom/join/mgps/adapter/x4$h;->a(Lcom/join/mgps/adapter/x4$h;)Landroid/widget/RelativeLayout;

    .line 654
    .line 655
    .line 656
    move-result-object p1

    .line 657
    new-instance v0, Lcom/join/mgps/adapter/w4;

    .line 658
    .line 659
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/w4;-><init>(Lcom/join/mgps/adapter/x4;Lcom/join/mgps/dto/AppBean;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    .line 664
    .line 665
    return-void

    .line 666
    nop

    .line 667
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public e(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x4;->e:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x4;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/x4;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
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
    iget-object v0, p0, Lcom/join/mgps/adapter/x4;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/PaPaBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
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
    iget-object v0, p0, Lcom/join/mgps/adapter/x4;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/mgps/dto/PaPaBean;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/x4;->getItemViewType(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez p2, :cond_6

    .line 15
    .line 16
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_20:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    new-instance p2, Lcom/join/mgps/adapter/x4$k;

    .line 25
    .line 26
    invoke-direct {p2}, Lcom/join/mgps/adapter/x4$k;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const v3, 0x7f0d04ac

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const v3, 0x7f0a0e6b

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iput-object v3, p2, Lcom/join/mgps/adapter/x4$k;->a:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    move-object v3, v2

    .line 57
    move-object v4, v3

    .line 58
    move-object v5, v4

    .line 59
    move-object v6, v5

    .line 60
    move-object v7, v6

    .line 61
    move-object v2, p2

    .line 62
    move-object p2, p3

    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_0
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_40:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v1, v3, :cond_1

    .line 72
    .line 73
    new-instance p2, Lcom/join/mgps/adapter/x4$l;

    .line 74
    .line 75
    invoke-direct {p2}, Lcom/join/mgps/adapter/x4$l;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    const v3, 0x7f0d04ad

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v3, v2

    .line 97
    move-object v4, v3

    .line 98
    move-object v5, v4

    .line 99
    move-object v6, v5

    .line 100
    move-object v7, v6

    .line 101
    move-object v9, p3

    .line 102
    move-object p3, p2

    .line 103
    move-object p2, v9

    .line 104
    goto/16 :goto_a

    .line 105
    .line 106
    :cond_1
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TITLE:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-ne v1, v3, :cond_2

    .line 113
    .line 114
    new-instance p2, Lcom/join/mgps/adapter/x4$n;

    .line 115
    .line 116
    invoke-direct {p2}, Lcom/join/mgps/adapter/x4$n;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    const v3, 0x7f0d04af

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    const v3, 0x7f0a1785

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Landroid/widget/TextView;

    .line 142
    .line 143
    iput-object v3, p2, Lcom/join/mgps/adapter/x4$n;->a:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    move-object v3, p2

    .line 149
    move-object p2, p3

    .line 150
    goto/16 :goto_5

    .line 151
    .line 152
    :cond_2
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const v4, 0x7f0a0fdc

    .line 159
    .line 160
    .line 161
    if-ne v1, v3, :cond_3

    .line 162
    .line 163
    new-instance p2, Lcom/join/mgps/adapter/x4$j;

    .line 164
    .line 165
    invoke-direct {p2}, Lcom/join/mgps/adapter/x4$j;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    const v3, 0x7f0d04ab

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 188
    .line 189
    iput-object v3, p2, Lcom/join/mgps/adapter/x4$j;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 190
    .line 191
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    move-object v4, p2

    .line 195
    move-object p2, p3

    .line 196
    goto/16 :goto_6

    .line 197
    .line 198
    :cond_3
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-ne v1, v3, :cond_4

    .line 205
    .line 206
    new-instance p2, Lcom/join/mgps/adapter/x4$h;

    .line 207
    .line 208
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/x4$h;-><init>(Lcom/join/mgps/adapter/x4;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    const v3, 0x7f0d04b0

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    const v3, 0x7f0a135c

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 234
    .line 235
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$h;->b(Lcom/join/mgps/adapter/x4$h;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 236
    .line 237
    .line 238
    const v3, 0x7f0a1044

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 246
    .line 247
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$h;->d(Lcom/join/mgps/adapter/x4$h;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 248
    .line 249
    .line 250
    const v3, 0x7f0a0790

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Landroid/widget/ImageView;

    .line 258
    .line 259
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$h;->f(Lcom/join/mgps/adapter/x4$h;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 260
    .line 261
    .line 262
    const v3, 0x7f0a1042

    .line 263
    .line 264
    .line 265
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Landroid/widget/TextView;

    .line 270
    .line 271
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$h;->h(Lcom/join/mgps/adapter/x4$h;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 272
    .line 273
    .line 274
    const v3, 0x7f0a12a5

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    check-cast v3, Landroid/widget/ProgressBar;

    .line 282
    .line 283
    iput-object v3, p2, Lcom/join/mgps/adapter/x4$h;->e:Landroid/widget/ProgressBar;

    .line 284
    .line 285
    const v3, 0x7f0a129e

    .line 286
    .line 287
    .line 288
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    check-cast v3, Landroid/widget/ProgressBar;

    .line 293
    .line 294
    iput-object v3, p2, Lcom/join/mgps/adapter/x4$h;->f:Landroid/widget/ProgressBar;

    .line 295
    .line 296
    const v3, 0x7f0a1043

    .line 297
    .line 298
    .line 299
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Landroid/widget/TextView;

    .line 304
    .line 305
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$h;->j(Lcom/join/mgps/adapter/x4$h;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 306
    .line 307
    .line 308
    const v3, 0x7f0a054e

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 316
    .line 317
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$h;->l(Lcom/join/mgps/adapter/x4$h;Lcom/join/mgps/customview/DownloadNormalView;)Lcom/join/mgps/customview/DownloadNormalView;

    .line 318
    .line 319
    .line 320
    const v3, 0x7f0a0e73

    .line 321
    .line 322
    .line 323
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    check-cast v3, Landroid/widget/LinearLayout;

    .line 328
    .line 329
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$h;->n(Lcom/join/mgps/adapter/x4$h;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 330
    .line 331
    .line 332
    const v3, 0x7f0a00f7

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Landroid/widget/TextView;

    .line 340
    .line 341
    iput-object v3, p2, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 342
    .line 343
    const v3, 0x7f0a0f94

    .line 344
    .line 345
    .line 346
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    check-cast v3, Landroid/widget/TextView;

    .line 351
    .line 352
    iput-object v3, p2, Lcom/join/mgps/adapter/x4$h;->k:Landroid/widget/TextView;

    .line 353
    .line 354
    const v3, 0x7f0a1764

    .line 355
    .line 356
    .line 357
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    check-cast v3, Landroid/widget/LinearLayout;

    .line 362
    .line 363
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$h;->p(Lcom/join/mgps/adapter/x4$h;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    move-object v5, p2

    .line 370
    move-object p2, p3

    .line 371
    goto/16 :goto_7

    .line 372
    .line 373
    :cond_4
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TAG:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 374
    .line 375
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-ne v1, v3, :cond_5

    .line 380
    .line 381
    new-instance p2, Lcom/join/mgps/adapter/x4$m;

    .line 382
    .line 383
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/x4$m;-><init>(Lcom/join/mgps/adapter/x4;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 387
    .line 388
    .line 389
    move-result-object p3

    .line 390
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 391
    .line 392
    .line 393
    move-result-object p3

    .line 394
    const v3, 0x7f0d04ae

    .line 395
    .line 396
    .line 397
    invoke-virtual {p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 398
    .line 399
    .line 400
    move-result-object p3

    .line 401
    const v3, 0x7f0a1607

    .line 402
    .line 403
    .line 404
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    check-cast v3, Landroid/widget/LinearLayout;

    .line 409
    .line 410
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$m;->p(Lcom/join/mgps/adapter/x4$m;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 411
    .line 412
    .line 413
    const v3, 0x7f0a1608

    .line 414
    .line 415
    .line 416
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    check-cast v3, Landroid/widget/TextView;

    .line 421
    .line 422
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$m;->r(Lcom/join/mgps/adapter/x4$m;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 423
    .line 424
    .line 425
    const v3, 0x7f0a1606

    .line 426
    .line 427
    .line 428
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 433
    .line 434
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$m;->b(Lcom/join/mgps/adapter/x4$m;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 435
    .line 436
    .line 437
    const v3, 0x7f0a160d

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    check-cast v3, Landroid/widget/LinearLayout;

    .line 445
    .line 446
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$m;->d(Lcom/join/mgps/adapter/x4$m;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 447
    .line 448
    .line 449
    const v3, 0x7f0a160e

    .line 450
    .line 451
    .line 452
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    check-cast v3, Landroid/widget/TextView;

    .line 457
    .line 458
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$m;->f(Lcom/join/mgps/adapter/x4$m;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 459
    .line 460
    .line 461
    const v3, 0x7f0a160c

    .line 462
    .line 463
    .line 464
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 469
    .line 470
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$m;->h(Lcom/join/mgps/adapter/x4$m;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 471
    .line 472
    .line 473
    const v3, 0x7f0a160a

    .line 474
    .line 475
    .line 476
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    check-cast v3, Landroid/widget/LinearLayout;

    .line 481
    .line 482
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$m;->j(Lcom/join/mgps/adapter/x4$m;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 483
    .line 484
    .line 485
    const v3, 0x7f0a160b

    .line 486
    .line 487
    .line 488
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    check-cast v3, Landroid/widget/TextView;

    .line 493
    .line 494
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$m;->l(Lcom/join/mgps/adapter/x4$m;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 495
    .line 496
    .line 497
    const v3, 0x7f0a1609

    .line 498
    .line 499
    .line 500
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 505
    .line 506
    invoke-static {p2, v3}, Lcom/join/mgps/adapter/x4$m;->n(Lcom/join/mgps/adapter/x4$m;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 507
    .line 508
    .line 509
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    move-object v6, p2

    .line 513
    move-object p2, p3

    .line 514
    goto/16 :goto_8

    .line 515
    .line 516
    :cond_5
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_COMPANY:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 517
    .line 518
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-ne v1, v3, :cond_d

    .line 523
    .line 524
    new-instance p2, Lcom/join/mgps/adapter/x4$i;

    .line 525
    .line 526
    invoke-direct {p2}, Lcom/join/mgps/adapter/x4$i;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 530
    .line 531
    .line 532
    move-result-object p3

    .line 533
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 534
    .line 535
    .line 536
    move-result-object p3

    .line 537
    const v3, 0x7f0d04a9

    .line 538
    .line 539
    .line 540
    invoke-virtual {p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 541
    .line 542
    .line 543
    move-result-object p3

    .line 544
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    check-cast v3, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 549
    .line 550
    iput-object v3, p2, Lcom/join/mgps/adapter/x4$i;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 551
    .line 552
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    move-object v7, p2

    .line 556
    move-object p2, p3

    .line 557
    goto/16 :goto_9

    .line 558
    .line 559
    :cond_6
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_20:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 560
    .line 561
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 562
    .line 563
    .line 564
    move-result p3

    .line 565
    if-ne v1, p3, :cond_7

    .line 566
    .line 567
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object p3

    .line 571
    check-cast p3, Lcom/join/mgps/adapter/x4$k;

    .line 572
    .line 573
    move-object v3, v2

    .line 574
    move-object v4, v3

    .line 575
    move-object v5, v4

    .line 576
    move-object v6, v5

    .line 577
    move-object v7, v6

    .line 578
    move-object v2, p3

    .line 579
    :goto_0
    move-object p3, v7

    .line 580
    goto/16 :goto_a

    .line 581
    .line 582
    :cond_7
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_40:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 583
    .line 584
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 585
    .line 586
    .line 587
    move-result p3

    .line 588
    if-ne v1, p3, :cond_8

    .line 589
    .line 590
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object p3

    .line 594
    check-cast p3, Lcom/join/mgps/adapter/x4$l;

    .line 595
    .line 596
    move-object v3, v2

    .line 597
    :goto_1
    move-object v4, v3

    .line 598
    :goto_2
    move-object v5, v4

    .line 599
    :goto_3
    move-object v6, v5

    .line 600
    :goto_4
    move-object v7, v6

    .line 601
    goto/16 :goto_a

    .line 602
    .line 603
    :cond_8
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TITLE:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 604
    .line 605
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 606
    .line 607
    .line 608
    move-result p3

    .line 609
    if-ne v1, p3, :cond_9

    .line 610
    .line 611
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object p3

    .line 615
    check-cast p3, Lcom/join/mgps/adapter/x4$n;

    .line 616
    .line 617
    move-object v3, p3

    .line 618
    :goto_5
    move-object p3, v2

    .line 619
    move-object v4, p3

    .line 620
    goto :goto_2

    .line 621
    :cond_9
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 622
    .line 623
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 624
    .line 625
    .line 626
    move-result p3

    .line 627
    if-ne v1, p3, :cond_a

    .line 628
    .line 629
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object p3

    .line 633
    check-cast p3, Lcom/join/mgps/adapter/x4$j;

    .line 634
    .line 635
    move-object v4, p3

    .line 636
    :goto_6
    move-object p3, v2

    .line 637
    move-object v3, p3

    .line 638
    move-object v5, v3

    .line 639
    goto :goto_3

    .line 640
    :cond_a
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 641
    .line 642
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 643
    .line 644
    .line 645
    move-result p3

    .line 646
    if-ne v1, p3, :cond_b

    .line 647
    .line 648
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object p3

    .line 652
    check-cast p3, Lcom/join/mgps/adapter/x4$h;

    .line 653
    .line 654
    move-object v5, p3

    .line 655
    :goto_7
    move-object p3, v2

    .line 656
    move-object v3, p3

    .line 657
    move-object v4, v3

    .line 658
    move-object v6, v4

    .line 659
    goto :goto_4

    .line 660
    :cond_b
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TAG:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 661
    .line 662
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 663
    .line 664
    .line 665
    move-result p3

    .line 666
    if-ne v1, p3, :cond_c

    .line 667
    .line 668
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object p3

    .line 672
    check-cast p3, Lcom/join/mgps/adapter/x4$m;

    .line 673
    .line 674
    move-object v6, p3

    .line 675
    :goto_8
    move-object p3, v2

    .line 676
    move-object v3, p3

    .line 677
    move-object v4, v3

    .line 678
    move-object v5, v4

    .line 679
    move-object v7, v5

    .line 680
    goto :goto_a

    .line 681
    :cond_c
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_COMPANY:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 682
    .line 683
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 684
    .line 685
    .line 686
    move-result p3

    .line 687
    if-ne v1, p3, :cond_d

    .line 688
    .line 689
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object p3

    .line 693
    check-cast p3, Lcom/join/mgps/adapter/x4$i;

    .line 694
    .line 695
    move-object v7, p3

    .line 696
    :goto_9
    move-object p3, v2

    .line 697
    move-object v3, p3

    .line 698
    move-object v4, v3

    .line 699
    move-object v5, v4

    .line 700
    move-object v6, v5

    .line 701
    goto :goto_a

    .line 702
    :cond_d
    move-object p3, v2

    .line 703
    move-object v3, p3

    .line 704
    goto :goto_1

    .line 705
    :goto_a
    sget-object v8, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_20:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 706
    .line 707
    invoke-virtual {v8}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 708
    .line 709
    .line 710
    move-result v8

    .line 711
    if-ne v1, v8, :cond_e

    .line 712
    .line 713
    invoke-direct {p0, v2, p1}, Lcom/join/mgps/adapter/x4;->i(Lcom/join/mgps/adapter/x4$k;I)V

    .line 714
    .line 715
    .line 716
    goto :goto_b

    .line 717
    :cond_e
    sget-object p1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_40:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 718
    .line 719
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 720
    .line 721
    .line 722
    move-result p1

    .line 723
    if-ne v1, p1, :cond_f

    .line 724
    .line 725
    invoke-direct {p0, p3, v0}, Lcom/join/mgps/adapter/x4;->j(Lcom/join/mgps/adapter/x4$l;Lcom/join/mgps/dto/PaPaBean;)V

    .line 726
    .line 727
    .line 728
    goto :goto_b

    .line 729
    :cond_f
    sget-object p1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TITLE:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 730
    .line 731
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 732
    .line 733
    .line 734
    move-result p1

    .line 735
    if-ne v1, p1, :cond_10

    .line 736
    .line 737
    invoke-direct {p0, v3, v0}, Lcom/join/mgps/adapter/x4;->l(Lcom/join/mgps/adapter/x4$n;Lcom/join/mgps/dto/PaPaBean;)V

    .line 738
    .line 739
    .line 740
    goto :goto_b

    .line 741
    :cond_10
    sget-object p1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 742
    .line 743
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 744
    .line 745
    .line 746
    move-result p1

    .line 747
    if-ne v1, p1, :cond_11

    .line 748
    .line 749
    invoke-direct {p0, p2, v4, v0}, Lcom/join/mgps/adapter/x4;->h(Landroid/view/View;Lcom/join/mgps/adapter/x4$j;Lcom/join/mgps/dto/PaPaBean;)V

    .line 750
    .line 751
    .line 752
    goto :goto_b

    .line 753
    :cond_11
    sget-object p1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 754
    .line 755
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 756
    .line 757
    .line 758
    move-result p1

    .line 759
    if-ne v1, p1, :cond_12

    .line 760
    .line 761
    invoke-direct {p0, v5, v0}, Lcom/join/mgps/adapter/x4;->m(Lcom/join/mgps/adapter/x4$h;Lcom/join/mgps/dto/PaPaBean;)V

    .line 762
    .line 763
    .line 764
    goto :goto_b

    .line 765
    :cond_12
    sget-object p1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TAG:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 766
    .line 767
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 768
    .line 769
    .line 770
    move-result p1

    .line 771
    if-ne v1, p1, :cond_13

    .line 772
    .line 773
    invoke-direct {p0, v6, v0}, Lcom/join/mgps/adapter/x4;->k(Lcom/join/mgps/adapter/x4$m;Lcom/join/mgps/dto/PaPaBean;)V

    .line 774
    .line 775
    .line 776
    goto :goto_b

    .line 777
    :cond_13
    sget-object p1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_COMPANY:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 778
    .line 779
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 780
    .line 781
    .line 782
    move-result p1

    .line 783
    if-ne v1, p1, :cond_14

    .line 784
    .line 785
    invoke-direct {p0, p2, v7, v0}, Lcom/join/mgps/adapter/x4;->g(Landroid/view/View;Lcom/join/mgps/adapter/x4$i;Lcom/join/mgps/dto/PaPaBean;)V

    .line 786
    .line 787
    .line 788
    :cond_14
    :goto_b
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/x4;->d:I

    .line 2
    .line 3
    return v0
.end method
