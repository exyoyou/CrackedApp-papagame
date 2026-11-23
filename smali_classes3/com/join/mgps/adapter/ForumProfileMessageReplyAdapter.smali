.class public Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;,
        Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$v;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

.field g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

.field h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ForumProfileMessageReplyAdapter"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->q(Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->h(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 2
    .line 3
    return-object p0
.end method

.method private h(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 28
    .line 29
    const v2, 0x7f070ed4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-int/2addr v1, v0

    .line 37
    int-to-float v0, v1

    .line 38
    const/16 v1, 0x1e

    .line 39
    .line 40
    int-to-float v1, v1

    .line 41
    mul-float v1, v1, p1

    .line 42
    .line 43
    sub-float/2addr v0, v1

    .line 44
    float-to-int v0, v0

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    int-to-float v2, v0

    .line 48
    mul-float v2, v2, v1

    .line 49
    .line 50
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 51
    .line 52
    div-float/2addr v2, v1

    .line 53
    float-to-int v1, v2

    .line 54
    const/4 v2, 0x4

    .line 55
    int-to-float v2, v2

    .line 56
    mul-float v2, v2, p1

    .line 57
    .line 58
    float-to-int p1, v2

    .line 59
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .line 61
    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {v2, v0, p1, v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    .line 72
    return-object p1
.end method

.method private k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d0711

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a03e0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$q;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 53
    .line 54
    if-eqz p3, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->c:Ljava/util/List;

    .line 59
    .line 60
    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->b:I

    .line 61
    .line 62
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->p(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->j(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    .line 81
    iget v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;->a:I

    .line 82
    .line 83
    iget v0, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;->b:I

    .line 84
    .line 85
    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    const/16 v0, 0x8

    .line 89
    .line 90
    int-to-float v0, v0

    .line 91
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 102
    .line 103
    mul-float v0, v0, v2

    .line 104
    .line 105
    float-to-int v0, v0

    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p3, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->a:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p0, p3, v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->b:I

    .line 125
    .line 126
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$a;->c:Ljava/util/List;

    .line 127
    .line 128
    invoke-static {p3, v0, p1}, Lcom/join/mgps/Util/r0;->C1(Landroid/widget/ImageView;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_2
    return-object p2
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06d0

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a06a1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->e:Landroid/view/View;

    .line 37
    .line 38
    const v0, 0x7f0a069e

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    .line 47
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    const v0, 0x7f0a06a8

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->c:Landroid/widget/TextView;

    .line 59
    .line 60
    const v0, 0x7f0a069d

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->d:Landroid/widget/TextView;

    .line 70
    .line 71
    const v0, 0x7f0a06a2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/LinearLayout;

    .line 79
    .line 80
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->f:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    const v0, 0x7f0a06ad

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .line 91
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->g:Landroid/widget/ImageView;

    .line 92
    .line 93
    const v0, 0x7f0a1ba6

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 101
    .line 102
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->h:Lcom/join/mgps/customview/VipView;

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItem(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .line 113
    if-nez p1, :cond_1

    .line 114
    .line 115
    return-object p2

    .line 116
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 117
    .line 118
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->c:Landroid/widget/TextView;

    .line 119
    .line 120
    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->h:I

    .line 121
    .line 122
    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->i:I

    .line 123
    .line 124
    const v4, 0x7f06014c

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->R3(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 128
    .line 129
    .line 130
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->h:Lcom/join/mgps/customview/VipView;

    .line 131
    .line 132
    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->h:I

    .line 133
    .line 134
    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->i:I

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->a:Z

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    .line 149
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->e:Landroid/view/View;

    .line 150
    .line 151
    const/16 v2, 0x8

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->e:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->c:Landroid/widget/TextView;

    .line 163
    .line 164
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->c:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->d:Landroid/widget/TextView;

    .line 170
    .line 171
    iget-wide v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->d:J

    .line 172
    .line 173
    const-wide/16 v4, 0x3e8

    .line 174
    .line 175
    mul-long v2, v2, v4

    .line 176
    .line 177
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 185
    .line 186
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->b:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 192
    .line 193
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$e;

    .line 194
    .line 195
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    const/4 p1, 0x3

    .line 202
    new-array p1, p1, [Landroid/view/View;

    .line 203
    .line 204
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 205
    .line 206
    aput-object v0, p1, v1

    .line 207
    .line 208
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->c:Landroid/widget/TextView;

    .line 209
    .line 210
    const/4 v2, 0x1

    .line 211
    aput-object v0, p1, v2

    .line 212
    .line 213
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->d:Landroid/widget/TextView;

    .line 214
    .line 215
    const/4 v3, 0x2

    .line 216
    aput-object v0, p1, v3

    .line 217
    .line 218
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    new-array p1, v2, [Landroid/view/View;

    .line 222
    .line 223
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$r;->h:Lcom/join/mgps/customview/VipView;

    .line 224
    .line 225
    aput-object p3, p1, v1

    .line 226
    .line 227
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :catch_1
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    .line 234
    .line 235
    :goto_3
    return-object p2
.end method

.method private m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06d1

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a1057

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0a1054

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;->c:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItem(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;->c:Landroid/view/View;

    .line 62
    .line 63
    const/16 v1, 0x8

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$s;->b:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;->b:Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, ""

    .line 73
    .line 74
    invoke-static {p3, p1, v0}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-object p2
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d06d2

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a03ee

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->b:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    const v0, 0x7f0a03f0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->c:Landroid/view/View;

    .line 48
    .line 49
    const v0, 0x7f0a03ef

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->d:Landroid/widget/TextView;

    .line 59
    .line 60
    const v0, 0x7f0a03f1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->e:Landroid/widget/TextView;

    .line 70
    .line 71
    const v0, 0x7f0a0e61

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->f:Landroid/view/View;

    .line 79
    .line 80
    const v0, 0x7f0a0215

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->g:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItem(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    .line 97
    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    return-object p2

    .line 101
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 102
    .line 103
    if-nez v1, :cond_2

    .line 104
    .line 105
    return-object p2

    .line 106
    :cond_2
    iget-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->g:Z

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    const/16 v3, 0x8

    .line 110
    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->c:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->c:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :goto_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->d:Z

    .line 125
    .line 126
    if-nez v1, :cond_4

    .line 127
    .line 128
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->f:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->g:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->f:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->g:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->b:Landroid/widget/LinearLayout;

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    invoke-direct {p0, p3, v0, v1, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->r(Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;ZI)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$t;->b:Landroid/widget/LinearLayout;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :goto_3
    return-object p2
.end method

.method private q(Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "parent",
            "commentMessageReply",
            "hideMore"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget v10, v9, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->a:I

    .line 8
    .line 9
    iget-object v0, v9, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v11

    .line 15
    move-object v12, v8

    .line 16
    check-cast v12, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 19
    .line 20
    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    add-int/2addr v0, v1

    .line 29
    if-ge v14, v0, :cond_9

    .line 30
    .line 31
    const v0, 0x7fffffff

    .line 32
    .line 33
    .line 34
    if-le v14, v0, :cond_0

    .line 35
    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_0
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const v3, 0x7f0d016e

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v15

    .line 54
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    .line 56
    const/4 v3, -0x1

    .line 57
    const/4 v4, -0x2

    .line 58
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v15, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    const v2, 0x7f0a03ef

    .line 65
    .line 66
    .line 67
    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/widget/TextView;

    .line 72
    .line 73
    const v3, 0x7f0a03f1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/16 v5, 0x8

    .line 87
    .line 88
    if-ne v14, v4, :cond_1

    .line 89
    .line 90
    if-le v4, v0, :cond_1

    .line 91
    .line 92
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    const-string v0, "\u6536\u8d77"

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;

    .line 104
    .line 105
    invoke-direct {v0, v7, v8, v9}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_1
    if-ne v14, v0, :cond_2

    .line 114
    .line 115
    if-eqz p3, :cond_2

    .line 116
    .line 117
    if-le v4, v0, :cond_2

    .line 118
    .line 119
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    .line 131
    sub-int/2addr v4, v0

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    aput-object v0, v1, v13

    .line 137
    .line 138
    const v0, 0x7f1200b4

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$i;

    .line 149
    .line 150
    invoke-direct {v0, v7, v8, v9}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-ge v14, v4, :cond_8

    .line 163
    .line 164
    if-lt v14, v0, :cond_3

    .line 165
    .line 166
    if-eqz p3, :cond_3

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_3
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRnickname()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    .line 184
    .line 185
    .line 186
    move-result v16

    .line 187
    if-nez v16, :cond_4

    .line 188
    .line 189
    const-string v6, ""

    .line 190
    .line 191
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v2, v4, v6, v1}, Lcom/join/mgps/Util/r0;->u1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v7, v15, v10, v5, v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->A(Landroid/view/View;IILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 220
    .line 221
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iget v2, v9, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->c:I

    .line 230
    .line 231
    if-eqz v0, :cond_5

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-ne v1, v0, :cond_5

    .line 238
    .line 239
    const/4 v0, 0x1

    .line 240
    goto :goto_1

    .line 241
    :cond_5
    const/4 v0, 0x0

    .line 242
    :goto_1
    const/4 v1, 0x3

    .line 243
    if-eq v2, v1, :cond_7

    .line 244
    .line 245
    const/16 v1, 0x63

    .line 246
    .line 247
    if-eq v2, v1, :cond_7

    .line 248
    .line 249
    if-eqz v0, :cond_6

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_6
    const/4 v2, 0x0

    .line 253
    goto :goto_3

    .line 254
    :cond_7
    :goto_2
    const/4 v2, 0x1

    .line 255
    :goto_3
    xor-int/lit8 v3, v0, 0x1

    .line 256
    .line 257
    move-object/from16 v0, p0

    .line 258
    .line 259
    move-object v1, v15

    .line 260
    move v4, v10

    .line 261
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->z(Landroid/view/View;ZZIILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_4
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 265
    .line 266
    .line 267
    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_9
    return-void
.end method

.method private r(Landroid/view/View;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;ZI)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "parent",
            "commentMessageReply",
            "hideMore",
            "position"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    iget v9, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->a:I

    .line 6
    .line 7
    iget v10, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->e:I

    .line 8
    .line 9
    iget-boolean v11, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->f:Z

    .line 10
    .line 11
    iget-object v12, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 12
    .line 13
    invoke-virtual {v12}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v13

    .line 17
    move-object/from16 v14, p1

    .line 18
    .line 19
    check-cast v14, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v15

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    add-int/lit8 v0, v15, 0x1

    .line 31
    .line 32
    if-ge v5, v0, :cond_b

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-le v5, v0, :cond_0

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    move/from16 v16, v10

    .line 40
    .line 41
    move/from16 v17, v11

    .line 42
    .line 43
    move-object/from16 v18, v12

    .line 44
    .line 45
    move-object v0, v14

    .line 46
    const/4 v14, 0x0

    .line 47
    move v11, v5

    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_0
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const v2, 0x7f0d016e

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    .line 66
    const/4 v2, -0x1

    .line 67
    const/4 v3, -0x2

    .line 68
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a03ef

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/widget/TextView;

    .line 82
    .line 83
    const v2, 0x7f0a03f1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/widget/TextView;

    .line 91
    .line 92
    const/16 v3, 0x8

    .line 93
    .line 94
    if-ne v5, v15, :cond_1

    .line 95
    .line 96
    if-gt v15, v0, :cond_2

    .line 97
    .line 98
    :cond_1
    if-lez v10, :cond_3

    .line 99
    .line 100
    if-eqz v11, :cond_3

    .line 101
    .line 102
    if-ne v5, v15, :cond_3

    .line 103
    .line 104
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    const-string v0, "\u6536\u8d77"

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$f;

    .line 116
    .line 117
    move-object v0, v3

    .line 118
    move-object/from16 v1, p0

    .line 119
    .line 120
    move v2, v10

    .line 121
    move-object v6, v3

    .line 122
    move/from16 v3, p4

    .line 123
    .line 124
    move/from16 v16, v10

    .line 125
    .line 126
    move-object v10, v4

    .line 127
    move v4, v9

    .line 128
    move/from16 v17, v11

    .line 129
    .line 130
    move v11, v5

    .line 131
    move-object/from16 v5, p2

    .line 132
    .line 133
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;IIILcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    move-object/from16 v18, v12

    .line 140
    .line 141
    move-object v0, v14

    .line 142
    const/4 v14, 0x0

    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :cond_3
    move/from16 v16, v10

    .line 146
    .line 147
    move/from16 v17, v11

    .line 148
    .line 149
    move-object v10, v4

    .line 150
    move v11, v5

    .line 151
    const/4 v4, 0x1

    .line 152
    if-ne v11, v0, :cond_4

    .line 153
    .line 154
    if-eqz p3, :cond_4

    .line 155
    .line 156
    if-le v15, v0, :cond_4

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-array v1, v4, [Ljava/lang/Object;

    .line 170
    .line 171
    add-int/lit8 v3, v15, -0x3

    .line 172
    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    aput-object v3, v1, v6

    .line 178
    .line 179
    const v3, 0x7f1200b4

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    new-instance v5, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$g;

    .line 190
    .line 191
    move-object v0, v5

    .line 192
    move-object/from16 v1, p0

    .line 193
    .line 194
    move v2, v15

    .line 195
    move-object v3, v12

    .line 196
    move v4, v9

    .line 197
    move-object/from16 v18, v12

    .line 198
    .line 199
    move-object v12, v5

    .line 200
    move-object/from16 v5, p2

    .line 201
    .line 202
    move-object/from16 p1, v14

    .line 203
    .line 204
    const/4 v14, 0x0

    .line 205
    move/from16 v6, p4

    .line 206
    .line 207
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;ILcom/join/mgps/dto/ForumBean$ForumCommentBean;ILcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    :goto_1
    move-object/from16 v0, p1

    .line 214
    .line 215
    goto/16 :goto_5

    .line 216
    .line 217
    :cond_4
    move-object/from16 v18, v12

    .line 218
    .line 219
    move-object/from16 p1, v14

    .line 220
    .line 221
    const/4 v14, 0x0

    .line 222
    if-ge v11, v15, :cond_a

    .line 223
    .line 224
    if-lt v11, v0, :cond_5

    .line 225
    .line 226
    if-eqz p3, :cond_5

    .line 227
    .line 228
    goto/16 :goto_6

    .line 229
    .line 230
    :cond_5
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 235
    .line 236
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRnickname()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    .line 245
    .line 246
    .line 247
    move-result v19

    .line 248
    if-nez v19, :cond_6

    .line 249
    .line 250
    const-string v12, ""

    .line 251
    .line 252
    :cond_6
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    invoke-static {v1, v6, v12, v4}, Lcom/join/mgps/Util/r0;->u1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    invoke-virtual {v7, v10, v9, v6, v12}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->A(Landroid/view/View;IILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 281
    .line 282
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    iget v3, v8, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->c:I

    .line 291
    .line 292
    if-eqz v2, :cond_7

    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-ne v1, v2, :cond_7

    .line 299
    .line 300
    const/4 v1, 0x1

    .line 301
    goto :goto_2

    .line 302
    :cond_7
    const/4 v1, 0x0

    .line 303
    :goto_2
    if-eq v3, v0, :cond_9

    .line 304
    .line 305
    const/16 v0, 0x63

    .line 306
    .line 307
    if-eq v3, v0, :cond_9

    .line 308
    .line 309
    if-eqz v1, :cond_8

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_8
    const/4 v2, 0x0

    .line 313
    goto :goto_4

    .line 314
    :cond_9
    :goto_3
    const/4 v2, 0x1

    .line 315
    :goto_4
    xor-int/lit8 v3, v1, 0x1

    .line 316
    .line 317
    move-object/from16 v0, p0

    .line 318
    .line 319
    move-object v1, v10

    .line 320
    move v4, v9

    .line 321
    move v5, v6

    .line 322
    move-object v6, v12

    .line 323
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->z(Landroid/view/View;ZZIILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto :goto_1

    .line 327
    :goto_5
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 328
    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_a
    :goto_6
    move-object/from16 v0, p1

    .line 332
    .line 333
    :goto_7
    add-int/lit8 v5, v11, 0x1

    .line 334
    .line 335
    move-object v14, v0

    .line 336
    move/from16 v10, v16

    .line 337
    .line 338
    move/from16 v11, v17

    .line 339
    .line 340
    move-object/from16 v12, v18

    .line 341
    .line 342
    const/4 v6, 0x0

    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :cond_b
    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "v",
            "cid",
            "rid",
            "rNickname"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cid="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " rid="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " rNickname="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "setOnCommentReplyReply"

    .line 35
    .line 36
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;

    .line 44
    .line 45
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public B(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "fid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$k;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public C(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mForumProfileMessageReplyListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->f:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 2
    .line 3
    return-void
.end method

.method D(Landroid/view/View;IZZIILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "eventFlag",
            "showDelete",
            "showReport",
            "cid",
            "rid",
            "nickname"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 15
    .line 16
    invoke-virtual {v0, p5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->n(I)V

    .line 17
    .line 18
    .line 19
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 20
    .line 21
    invoke-virtual {p5, p6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->u(I)V

    .line 22
    .line 23
    .line 24
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 25
    .line 26
    invoke-virtual {p5, p2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->r(I)V

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    const/16 p5, 0x8

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->q(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 41
    .line 42
    invoke-virtual {p3, p5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->q(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    if-eqz p4, :cond_2

    .line 46
    .line 47
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 48
    .line 49
    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->t(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 54
    .line 55
    invoke-virtual {p2, p5}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->t(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-static {p7}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    const-string p7, ""

    .line 65
    .line 66
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 67
    .line 68
    invoke-virtual {p2, p7}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->s(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$n;->showAsDropDown(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method e(Ljava/lang/String;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->h:Ljava/util/Hashtable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Hashtable;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->h:Ljava/util/Hashtable;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->h:Ljava/util/Hashtable;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->h:Ljava/util/Hashtable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method g(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZ)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pid",
            "bean",
            "myAuth",
            "showDivider"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_REPLY_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    .line 6
    .line 7
    invoke-direct {v2, p1, p2, p3, p4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;-><init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;->b()Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_COMMENT_IMAGE:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->PROFILE_MESSAGE_REPLY_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    :cond_3
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method j(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->h:Ljava/util/Hashtable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;

    .line 12
    .line 13
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "view",
            "src"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 6
    .line 7
    const v1, 0x7f080caf

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->J(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$j;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->I(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/join/android/app/common/utils/l;->I(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "imgUrl"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/r0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget-object v2, v0, v2

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    aget-object v0, v0, v3

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .line 36
    const v4, 0x7f070ed4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    mul-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    sub-int/2addr v3, v4

    .line 46
    int-to-float v3, v3

    .line 47
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 52
    .line 53
    const/high16 v4, 0x42680000    # 58.0f

    .line 54
    .line 55
    mul-float p1, p1, v4

    .line 56
    .line 57
    sub-float/2addr v3, p1

    .line 58
    float-to-int p1, v3

    .line 59
    int-to-float v3, p1

    .line 60
    const/high16 v4, 0x3f800000    # 1.0f

    .line 61
    .line 62
    mul-float v3, v3, v4

    .line 63
    .line 64
    int-to-float v0, v0

    .line 65
    mul-float v0, v0, v4

    .line 66
    .line 67
    int-to-float v2, v2

    .line 68
    div-float/2addr v0, v2

    .line 69
    mul-float v3, v3, v0

    .line 70
    .line 71
    float-to-int v0, v3

    .line 72
    iput p1, v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;->a:I

    .line 73
    .line 74
    iput v0, v1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;->b:I

    .line 75
    .line 76
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->e(Ljava/lang/String;Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$p;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method s(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "view",
            "imageInfo"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/g;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/g;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .line 35
    const v4, 0x7f070ed4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    mul-int/lit8 v2, v2, 0x2

    .line 43
    .line 44
    sub-int/2addr v3, v2

    .line 45
    int-to-float v2, v3

    .line 46
    const/16 v3, 0x28

    .line 47
    .line 48
    int-to-float v3, v3

    .line 49
    mul-float v3, v3, v1

    .line 50
    .line 51
    sub-float/2addr v2, v3

    .line 52
    float-to-int v2, v2

    .line 53
    int-to-float v3, v2

    .line 54
    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    .line 56
    mul-float v3, v3, v4

    .line 57
    .line 58
    const/4 v5, 0x4

    .line 59
    int-to-float v5, v5

    .line 60
    mul-float v5, v5, v1

    .line 61
    .line 62
    float-to-int v1, v5

    .line 63
    int-to-float v5, p3

    .line 64
    mul-float v5, v5, v4

    .line 65
    .line 66
    int-to-float v4, v0

    .line 67
    div-float/2addr v5, v4

    .line 68
    mul-float v3, v3, v5

    .line 69
    .line 70
    float-to-int v3, v3

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->b:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, "setCommentImageItemParams-->rawHeight="

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p3, " rawWidth="

    .line 90
    .line 91
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p3, " ratio="

    .line 98
    .line 99
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p3, " itemHeight="

    .line 106
    .line 107
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p3, " itemWidth="

    .line 114
    .line 115
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p3, "\n"

    .line 122
    .line 123
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    filled-new-array {p1}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    .line 142
    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    .line 144
    .line 145
    const/4 p3, 0x0

    .line 146
    invoke-virtual {p1, p3, v1, p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    return-object p1

    .line 153
    :cond_0
    const/4 p1, 0x0

    .line 154
    return-object p1
.end method

.method t(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "hideBottom"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;

    .line 9
    .line 10
    iput-boolean p2, p1, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public v(Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "v",
            "cid",
            "uid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public w(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "v",
            "cid",
            "cNickname"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public x(Landroid/view/View;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public y(Landroid/view/View;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "v",
            "cid",
            "rid",
            "ruid"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cid="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " rid="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " ruid="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "setOnCommentReplyLongClick"

    .line 35
    .line 36
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;

    .line 44
    .line 45
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;III)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public z(Landroid/view/View;ZZIILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "v",
            "showDelete",
            "showReport",
            "cid",
            "rid",
            "nickname"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move v2, p4

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p5

    .line 9
    move-object v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;IZZILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
