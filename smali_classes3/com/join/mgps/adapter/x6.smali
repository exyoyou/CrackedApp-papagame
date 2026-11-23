.class public Lcom/join/mgps/adapter/x6;
.super Lcom/join/mgps/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/x6$f;,
        Lcom/join/mgps/adapter/x6$h;,
        Lcom/join/mgps/adapter/x6$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/a<",
        "Lcom/join/mgps/adapter/x6$h;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field j:Lcom/join/android/app/component/video/h;

.field private k:Lcom/join/mgps/adapter/x6$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContext",
            "videoHelper"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/base/a;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    iput-object v0, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/adapter/x6;->j:Lcom/join/android/app/component/video/h;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    const p2, 0x7f0d06db

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    const p2, 0x7f0d06da

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    const p2, 0x7f0d06dd

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x4

    .line 33
    const p2, 0x7f0d06dc

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x5

    .line 40
    const p2, 0x7f0d06d8

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x6

    .line 47
    const p2, 0x7f0d06d7

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x7

    .line 54
    const p2, 0x7f0d0482

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 58
    .line 59
    .line 60
    const/16 p1, 0xe

    .line 61
    .line 62
    const p2, 0x7f0d0483

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 66
    .line 67
    .line 68
    const/16 p1, 0xb

    .line 69
    .line 70
    const p2, 0x7f0d048c

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 74
    .line 75
    .line 76
    const/16 p1, 0xc

    .line 77
    .line 78
    const v0, 0x7f0d048d

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 82
    .line 83
    .line 84
    const/16 p1, 0x8

    .line 85
    .line 86
    const v1, 0x7f0d0337

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/base/a;->r(II)V

    .line 90
    .line 91
    .line 92
    const/16 p1, 0x9

    .line 93
    .line 94
    const v1, 0x7f0d06d4

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/base/a;->r(II)V

    .line 98
    .line 99
    .line 100
    const/16 p1, 0xa

    .line 101
    .line 102
    const v1, 0x7f0d06d6

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/base/a;->r(II)V

    .line 106
    .line 107
    .line 108
    const/16 p1, 0xd

    .line 109
    .line 110
    const v1, 0x7f0d048f

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/base/a;->r(II)V

    .line 114
    .line 115
    .line 116
    const/16 p1, 0xf

    .line 117
    .line 118
    const v1, 0x7f0d048e

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/base/a;->r(II)V

    .line 122
    .line 123
    .line 124
    const/16 p1, 0x10

    .line 125
    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 127
    .line 128
    .line 129
    const/16 p1, 0x11

    .line 130
    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public static synthetic A(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/x6;->l0(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/join/mgps/adapter/x6;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->j0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/x6;->m0(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/x6;->k0(Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/x6;->i0(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/join/mgps/adapter/x6;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->f0(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic G(Lcom/join/mgps/adapter/x6;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic H(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x6;->d0(Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic I(Lcom/join/mgps/adapter/x6;)Lcom/join/mgps/adapter/x6$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 2
    .line 3
    return-object p0
.end method

.method private K(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    instance-of v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const v0, 0x7f0a10d8

    .line 30
    .line 31
    .line 32
    const v2, 0x7f0a084f

    .line 33
    .line 34
    .line 35
    if-ne p2, v1, :cond_1

    .line 36
    .line 37
    const p2, 0x7f080ae2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->setImageResource(II)Lcom/join/mgps/base/b;

    .line 41
    .line 42
    .line 43
    const-string p2, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u5b83\u6e38\u620f"

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x2

    .line 50
    if-ne p2, v1, :cond_2

    .line 51
    .line 52
    const p2, 0x7f080ae0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->setImageResource(II)Lcom/join/mgps/base/b;

    .line 56
    .line 57
    .line 58
    const-string p2, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\u5355\n\u5df2\u4e3a\u60a8\u63a8\u8350\u70ed\u95e8\u6e38\u620f\u5355"

    .line 59
    .line 60
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 v1, 0x3

    .line 65
    if-ne p2, v1, :cond_3

    .line 66
    .line 67
    const p2, 0x7f080ae3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->setImageResource(II)Lcom/join/mgps/base/b;

    .line 71
    .line 72
    .line 73
    const-string p2, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u793e\u533a\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u4ed6\u70ed\u95e8\u793e\u533a"

    .line 74
    .line 75
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    return-void
.end method

.method private L(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const v0, 0x7f0a038b

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lcom/join/mgps/adapter/p6;

    .line 19
    .line 20
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/p6;-><init>(Lcom/join/mgps/adapter/x6;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private M(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 6
    .line 7
    const v0, 0x7f0a084f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getPic()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a10d8

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getTitle()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a048c

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getAuth_name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getGame_count()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "\u6b3e"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const v1, 0x7f0a0441

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 68
    .line 69
    .line 70
    const v0, 0x7f0a04e1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->isShowDivider()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 78
    .line 79
    .line 80
    const v0, 0x7f0a038b

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v0, Lcom/join/mgps/adapter/x6$d;

    .line 88
    .line 89
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/x6$d;-><init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private N(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "\u5305\u542b%s\u7684\u6e38\u620f\u5355"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object p2, v1, v2

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/text/SpannableString;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 25
    .line 26
    const-string v2, "#FFF47500"

    .line 27
    .line 28
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const/4 v2, 0x2

    .line 40
    add-int/2addr p2, v2

    .line 41
    const/16 v3, 0x12

    .line 42
    .line 43
    invoke-virtual {v1, v0, v2, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 44
    .line 45
    .line 46
    const p2, 0x7f0a1767

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method private O(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private P(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->b0(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Q(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/x6;->J(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->O(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a0a58

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/widget/ImageView;

    .line 24
    .line 25
    const v2, 0x7f0a0a59

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/widget/ImageView;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const-string v5, "#00000000"

    .line 54
    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    filled-new-array {v4, v0}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const-string v4, "#99000000"

    .line 82
    .line 83
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    filled-new-array {v0, v4}, [I

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->a0(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method private R(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    const-string v0, "#"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/x6;->J(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const v5, 0x7f0a1042

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v5, v4}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/widget/TextView;

    .line 41
    .line 42
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 43
    .line 44
    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 45
    .line 46
    .line 47
    const v4, 0x7f0a135c

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    new-instance v5, Lcom/join/mgps/adapter/t6;

    .line 55
    .line 56
    invoke-direct {v5, p0, v1, p2}, Lcom/join/mgps/adapter/t6;-><init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const v5, 0x7f0a14a2

    .line 81
    .line 82
    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 94
    .line 95
    invoke-static {v5, v4}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    const-string v6, ""

    .line 104
    .line 105
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_2

    .line 110
    .line 111
    if-eqz v4, :cond_2

    .line 112
    .line 113
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-lez v6, :cond_2

    .line 118
    .line 119
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 130
    .line 131
    invoke-static {v5, v4}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-ne v4, v2, :cond_3

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    const/4 v4, 0x0

    .line 143
    :goto_1
    const v5, 0x7f0a0790

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v5, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    const-wide/16 v6, 0x0

    .line 158
    .line 159
    const v8, 0x7f0a1a16

    .line 160
    .line 161
    .line 162
    cmpl-double v9, v4, v6

    .line 163
    .line 164
    if-lez v9, :cond_4

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->showScore()Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_4

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {p1, v8, v4}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v8, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {p1, v8, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 188
    .line 189
    .line 190
    :goto_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->P1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    const v5, 0x7f0a199d

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v5, v4}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 206
    .line 207
    .line 208
    :cond_5
    const v4, 0x7f0a054e

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v4}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    check-cast v4, Lcom/join/mgps/customview/DownloadNormalView;

    .line 216
    .line 217
    new-instance v5, Lm6/c;

    .line 218
    .line 219
    iget-object v6, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 220
    .line 221
    invoke-direct {v5, v6, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_6

    .line 236
    .line 237
    const v4, 0x7f0a1bea

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v4}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    check-cast v4, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 245
    .line 246
    if-eqz v4, :cond_6

    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v4, v5}, Lcom/join/android/app/component/video/MultiStandVideo;->l(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v5, p0, Lcom/join/mgps/adapter/x6;->j:Lcom/join/android/app/component/video/h;

    .line 256
    .line 257
    invoke-virtual {v5}, Lcom/join/android/app/component/video/h;->s()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-virtual {v4, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->hashCode()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-virtual {v4, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    const/4 v7, 0x0

    .line 276
    const/4 v8, 0x0

    .line 277
    const/4 v9, 0x0

    .line 278
    const-string v10, ""

    .line 279
    .line 280
    move-object v5, v4

    .line 281
    invoke-virtual/range {v5 .. v10}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 300
    .line 301
    .line 302
    new-instance v2, Lcom/join/mgps/adapter/x6$a;

    .line 303
    .line 304
    invoke-direct {v2, p0, v1, p2}, Lcom/join/mgps/adapter/x6$a;-><init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 308
    .line 309
    .line 310
    :cond_6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    const v2, 0x7f0a0ed9

    .line 319
    .line 320
    .line 321
    if-eqz v1, :cond_8

    .line 322
    .line 323
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_7

    .line 332
    .line 333
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result p2

    .line 368
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :catch_0
    move-exception p1

    .line 373
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 374
    .line 375
    .line 376
    goto :goto_3

    .line 377
    :cond_8
    const-string p2, "#994558"

    .line 378
    .line 379
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result p2

    .line 383
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;

    .line 384
    .line 385
    .line 386
    :goto_3
    return-void
.end method

.method private S(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->Z(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private T(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/x6;->J(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v2, Lcom/papa/sim/statistic/Event;->pdGameWish:Lcom/papa/sim/statistic/Event;

    .line 34
    .line 35
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 36
    .line 37
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "1"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setIsResultPage(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p2, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 67
    .line 68
    .line 69
    :cond_1
    const p2, 0x7f0a14a2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {p2, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {p2}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-class v2, Lcom/join/mgps/dto/WxProgram;

    .line 110
    .line 111
    invoke-virtual {v1, p2, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Lcom/join/mgps/dto/WxProgram;

    .line 116
    .line 117
    if-eqz p2, :cond_3

    .line 118
    .line 119
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 120
    .line 121
    new-instance v1, Lcom/join/mgps/adapter/q6;

    .line 122
    .line 123
    invoke-direct {v1, p0, p2, v0}, Lcom/join/mgps/adapter/q6;-><init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/WxProgram;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :cond_3
    :goto_0
    return-void
.end method

.method private U(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    const-string v0, "#"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/x6;->J(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f0a0790

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v2, :cond_5

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const v7, 0x7f0a1042

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v7, v6}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Landroid/widget/TextView;

    .line 45
    .line 46
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 47
    .line 48
    invoke-virtual {v6, v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 49
    .line 50
    .line 51
    const v6, 0x7f0a135c

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    new-instance v7, Lcom/join/mgps/adapter/v6;

    .line 59
    .line 60
    invoke-direct {v7, p0, v2, p2}, Lcom/join/mgps/adapter/v6;-><init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGameAdVideoUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGAmeAdPic()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    const v7, 0x7f0a14a2

    .line 85
    .line 86
    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGAmeAdPic()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {p1, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 98
    .line 99
    invoke-static {v7, v6}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const-string v8, ""

    .line 108
    .line 109
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_2

    .line 114
    .line 115
    if-eqz v6, :cond_2

    .line 116
    .line 117
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-lez v8, :cond_2

    .line 122
    .line 123
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p1, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 134
    .line 135
    invoke-static {v7, v6}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-ne v6, v4, :cond_3

    .line 143
    .line 144
    const/4 v6, 0x1

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    const/4 v6, 0x0

    .line 147
    :goto_1
    invoke-virtual {p1, v3, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 155
    .line 156
    .line 157
    move-result-wide v6

    .line 158
    const-wide/16 v8, 0x0

    .line 159
    .line 160
    const v10, 0x7f0a1a16

    .line 161
    .line 162
    .line 163
    cmpl-double v11, v6, v8

    .line 164
    .line 165
    if-lez v11, :cond_4

    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->showScore()Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-eqz v6, :cond_4

    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {p1, v10, v6}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v10, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_4
    invoke-virtual {p1, v10, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 189
    .line 190
    .line 191
    :goto_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->P1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    const v7, 0x7f0a199d

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v7, v6}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 207
    .line 208
    .line 209
    :cond_5
    const v6, 0x7f0a054e

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    check-cast v6, Lcom/join/mgps/customview/DownloadNormalView;

    .line 217
    .line 218
    new-instance v7, Lm6/c;

    .line 219
    .line 220
    iget-object v8, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 221
    .line 222
    invoke-direct {v7, v8, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v7}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGameAdVideoUrl()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-eqz v6, :cond_6

    .line 237
    .line 238
    const v6, 0x7f0a1bea

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    check-cast v6, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 246
    .line 247
    if-eqz v6, :cond_6

    .line 248
    .line 249
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGAmeAdPic()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v6, v7}, Lcom/join/android/app/component/video/MultiStandVideo;->l(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v7, p0, Lcom/join/mgps/adapter/x6;->j:Lcom/join/android/app/component/video/h;

    .line 257
    .line 258
    invoke-virtual {v7}, Lcom/join/android/app/component/video/h;->s()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-virtual {v6, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->hashCode()I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    invoke-virtual {v6, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGameAdVideoUrl()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    const/4 v9, 0x0

    .line 277
    const/4 v10, 0x0

    .line 278
    const/4 v11, 0x0

    .line 279
    const-string v12, ""

    .line 280
    .line 281
    move-object v7, v6

    .line 282
    invoke-virtual/range {v7 .. v12}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 301
    .line 302
    .line 303
    new-instance v4, Lcom/join/mgps/adapter/x6$b;

    .line 304
    .line 305
    invoke-direct {v4, p0, v2, p2}, Lcom/join/mgps/adapter/x6$b;-><init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 309
    .line 310
    .line 311
    :cond_6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    const v6, 0x7f0a0ed9

    .line 320
    .line 321
    .line 322
    if-eqz v4, :cond_8

    .line 323
    .line 324
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_7

    .line 333
    .line 334
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;

    .line 343
    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .line 371
    .line 372
    goto :goto_3

    .line 373
    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 375
    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_8
    const-string v0, "#994558"

    .line 379
    .line 380
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    invoke-virtual {p1, v6, v0}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;

    .line 385
    .line 386
    .line 387
    :goto_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 388
    .line 389
    .line 390
    move-result p2

    .line 391
    if-eqz p2, :cond_9

    .line 392
    .line 393
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 394
    .line 395
    .line 396
    goto/16 :goto_6

    .line 397
    .line 398
    :cond_9
    if-nez v1, :cond_a

    .line 399
    .line 400
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 401
    .line 402
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 403
    .line 404
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_6

    .line 408
    .line 409
    :cond_a
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 410
    .line 411
    .line 412
    move-result p2

    .line 413
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 418
    .line 419
    .line 420
    move-result-wide v3

    .line 421
    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    .line 422
    .line 423
    mul-double v3, v3, v5

    .line 424
    .line 425
    mul-double v3, v3, v5

    .line 426
    .line 427
    double-to-long v3, v3

    .line 428
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    const/16 v2, 0x2b

    .line 441
    .line 442
    if-lez v0, :cond_b

    .line 443
    .line 444
    const/16 p2, 0x2b

    .line 445
    .line 446
    :cond_b
    if-eqz p2, :cond_e

    .line 447
    .line 448
    const/16 v0, 0x30

    .line 449
    .line 450
    if-eq p2, v0, :cond_e

    .line 451
    .line 452
    const/4 v0, 0x2

    .line 453
    const v5, 0x7f0a129e

    .line 454
    .line 455
    .line 456
    const v6, 0x7f0a0f94

    .line 457
    .line 458
    .line 459
    const-string v7, "/"

    .line 460
    .line 461
    const v8, 0x7f0a00f7

    .line 462
    .line 463
    .line 464
    if-eq p2, v0, :cond_d

    .line 465
    .line 466
    const/4 v0, 0x3

    .line 467
    if-eq p2, v0, :cond_c

    .line 468
    .line 469
    const/4 v0, 0x5

    .line 470
    if-eq p2, v0, :cond_e

    .line 471
    .line 472
    const/4 v0, 0x6

    .line 473
    if-eq p2, v0, :cond_c

    .line 474
    .line 475
    const/4 v0, 0x7

    .line 476
    if-eq p2, v0, :cond_e

    .line 477
    .line 478
    const/16 v0, 0x2a

    .line 479
    .line 480
    if-eq p2, v0, :cond_e

    .line 481
    .line 482
    if-eq p2, v2, :cond_e

    .line 483
    .line 484
    const v0, 0x7f0a12a5

    .line 485
    .line 486
    .line 487
    packed-switch p2, :pswitch_data_0

    .line 488
    .line 489
    .line 490
    goto/16 :goto_6

    .line 491
    .line 492
    :pswitch_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 493
    .line 494
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 495
    .line 496
    invoke-virtual {p0, p1, p2, v2}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 497
    .line 498
    .line 499
    new-instance p2, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    invoke-virtual {p1, v8, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 526
    .line 527
    .line 528
    const-string p2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 529
    .line 530
    invoke-virtual {p1, v6, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    check-cast p1, Landroid/widget/ProgressBar;

    .line 538
    .line 539
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 540
    .line 541
    .line 542
    move-result-wide v0

    .line 543
    long-to-int p2, v0

    .line 544
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_6

    .line 548
    .line 549
    :pswitch_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 550
    .line 551
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 552
    .line 553
    invoke-virtual {p0, p1, p2, v2}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 554
    .line 555
    .line 556
    new-instance p2, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object p2

    .line 582
    invoke-virtual {p1, v8, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 583
    .line 584
    .line 585
    const-string p2, "\u89e3\u538b\u4e2d.."

    .line 586
    .line 587
    invoke-virtual {p1, v6, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    check-cast p1, Landroid/widget/ProgressBar;

    .line 595
    .line 596
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 597
    .line 598
    .line 599
    move-result-wide v0

    .line 600
    long-to-int p2, v0

    .line 601
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_6

    .line 605
    .line 606
    :pswitch_2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 607
    .line 608
    invoke-virtual {p0, p1, p2, p2}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 609
    .line 610
    .line 611
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 617
    .line 618
    .line 619
    move-result-wide v9

    .line 620
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object p2

    .line 641
    invoke-virtual {p1, v8, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 642
    .line 643
    .line 644
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 645
    .line 646
    .line 647
    move-result-object p2

    .line 648
    check-cast p2, Landroid/widget/ProgressBar;

    .line 649
    .line 650
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 651
    .line 652
    .line 653
    move-result-wide v0

    .line 654
    long-to-int v1, v0

    .line 655
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 656
    .line 657
    .line 658
    goto :goto_4

    .line 659
    :catch_1
    move-exception p2

    .line 660
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 661
    .line 662
    .line 663
    :goto_4
    const-string p2, "\u7b49\u5f85\u4e2d"

    .line 664
    .line 665
    invoke-virtual {p1, v6, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 666
    .line 667
    .line 668
    goto/16 :goto_6

    .line 669
    .line 670
    :cond_c
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 671
    .line 672
    invoke-virtual {p0, p1, p2, p2}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 673
    .line 674
    .line 675
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 681
    .line 682
    .line 683
    move-result-wide v9

    .line 684
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object p2

    .line 705
    invoke-virtual {p1, v8, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 706
    .line 707
    .line 708
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 709
    .line 710
    .line 711
    move-result-object p2

    .line 712
    check-cast p2, Landroid/widget/ProgressBar;

    .line 713
    .line 714
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 715
    .line 716
    .line 717
    move-result-wide v0

    .line 718
    long-to-int v1, v0

    .line 719
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 720
    .line 721
    .line 722
    goto :goto_5

    .line 723
    :catch_2
    move-exception p2

    .line 724
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 725
    .line 726
    .line 727
    :goto_5
    const-string p2, "\u6682\u505c\u4e2d"

    .line 728
    .line 729
    invoke-virtual {p1, v6, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 730
    .line 731
    .line 732
    goto :goto_6

    .line 733
    :cond_d
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 734
    .line 735
    .line 736
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 737
    .line 738
    invoke-virtual {p0, p1, p2, p2}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 739
    .line 740
    .line 741
    new-instance p2, Ljava/lang/StringBuilder;

    .line 742
    .line 743
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 747
    .line 748
    .line 749
    move-result-wide v9

    .line 750
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object p2

    .line 771
    invoke-virtual {p1, v8, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 772
    .line 773
    .line 774
    new-instance p2, Ljava/lang/StringBuilder;

    .line 775
    .line 776
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    const-string v0, "/S"

    .line 787
    .line 788
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object p2

    .line 795
    invoke-virtual {p1, v6, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 796
    .line 797
    .line 798
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 799
    .line 800
    .line 801
    move-result-object p1

    .line 802
    check-cast p1, Landroid/widget/ProgressBar;

    .line 803
    .line 804
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 805
    .line 806
    .line 807
    move-result-wide v0

    .line 808
    long-to-int p2, v0

    .line 809
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 810
    .line 811
    .line 812
    goto :goto_6

    .line 813
    :cond_e
    :pswitch_3
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 814
    .line 815
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 816
    .line 817
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 818
    .line 819
    .line 820
    :goto_6
    return-void

    .line 821
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private V(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const v1, 0x7f0a06b1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getView()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0a06a0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getComment()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const v1, 0x7f0a06aa

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPraise()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const v0, 0x7f0a038b

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->q0(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_0
    :goto_0
    return-void
.end method

.method private W(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getKeyword()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const v4, 0x7f0604b7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    add-int/2addr v1, v4

    .line 48
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-gt v1, v0, :cond_0

    .line 53
    .line 54
    if-ltz v4, :cond_0

    .line 55
    .line 56
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 57
    .line 58
    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 59
    .line 60
    .line 61
    const/16 v3, 0x21

    .line 62
    .line 63
    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Lcom/join/mgps/adapter/s6;

    .line 76
    .line 77
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/adapter/s6;-><init>(Lcom/join/mgps/adapter/x6;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const v0, 0x7f0a103e

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    const v1, 0x7f0a06a6

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    .line 95
    .line 96
    :try_start_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->isShowDivider()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_1

    .line 101
    .line 102
    const-string p2, "#3b3b3b"

    .line 103
    .line 104
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Landroid/widget/TextView;

    .line 116
    .line 117
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    invoke-virtual {p2, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    check-cast p2, Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const v2, 0x7f0713ee

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    const-string p2, "#FF4A4A4A"

    .line 142
    .line 143
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    check-cast p2, Landroid/widget/TextView;

    .line 155
    .line 156
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 157
    .line 158
    const/4 v3, 0x0

    .line 159
    invoke-virtual {p2, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 160
    .line 161
    .line 162
    const/4 p2, 0x0

    .line 163
    :goto_1
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 172
    .line 173
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :catch_1
    move-exception p2

    .line 184
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    :goto_2
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :catch_2
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    .line 198
    .line 199
    :cond_2
    :goto_3
    return-void
.end method

.method private X(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getKeyword()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const v4, 0x7f0604b7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    add-int/2addr v1, v4

    .line 49
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-gt v1, v0, :cond_1

    .line 54
    .line 55
    if-ltz v4, :cond_1

    .line 56
    .line 57
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 58
    .line 59
    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 60
    .line 61
    .line 62
    const/16 v3, 0x21

    .line 63
    .line 64
    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    const v0, 0x7f0a06af

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const v0, 0x7f0a0f31

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->q0(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method private Y(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 6
    .line 7
    const v0, 0x7f0a084f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getIcon_src()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a10d8

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a048c

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getDescription()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "\u4eca\u65e5\u66f4\u65b0:"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getToday_posts()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const v1, 0x7f0a0441

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 68
    .line 69
    .line 70
    const v0, 0x7f0a038b

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Lcom/join/mgps/adapter/u6;

    .line 78
    .line 79
    invoke-direct {v0, p2}, Lcom/join/mgps/adapter/u6;-><init>(Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private d0(Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commonGameInfoBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getStatistics()Lcom/join/mgps/dto/StatisticsBean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/StatisticsBean;->getMin_game_search_source()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    return-object v1
.end method

.method private synthetic f0(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 2
    .line 3
    check-cast p2, Lcom/join/mgps/activity/SearchListActivity1;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1;->setTab(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic g0(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tpl_two_position()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    sget-object p3, Lcom/papa/sim/statistic/Where;->search:Lcom/papa/sim/statistic/Where;

    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/x6;->d0(Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual/range {v1 .. v10}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-interface {p2, p3}, Lcom/join/mgps/adapter/x6$f;->c(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/x6$f;->e(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method private synthetic h0(Lcom/join/mgps/dto/WxProgram;Lcom/join/mgps/dto/DomainInfoBean;Landroid/view/View;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    sget-object v0, Lcom/papa/sim/statistic/Event;->pdGameWishClick:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "1"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setIsResultPage(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p3, v0, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 39
    .line 40
    .line 41
    const-string p2, "game_search_wish"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/WxProgram;->setSceneType(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->C4(Landroid/content/Context;Lcom/join/mgps/dto/WxProgram;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private synthetic i0(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tpl_two_position()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    sget-object p3, Lcom/papa/sim/statistic/Where;->search:Lcom/papa/sim/statistic/Where;

    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/x6;->d0(Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual/range {v1 .. v10}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-interface {p2, p3}, Lcom/join/mgps/adapter/x6$f;->c(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/x6$f;->e(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method private synthetic j0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/x6;->n0(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic k0(Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getFid()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0, v0}, Lcom/join/mgps/Util/r0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic l0(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tpl_two_position()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/x6;->d0(Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-virtual/range {v1 .. v10}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-interface {p2, p3}, Lcom/join/mgps/adapter/x6$f;->c(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/x6$f;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method private synthetic m0(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tpl_two_position()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/x6;->d0(Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-virtual/range {v1 .. v10}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-interface {p2, p3}, Lcom/join/mgps/adapter/x6$f;->c(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/x6$f;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public static synthetic y(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/x6;->g0(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/WxProgram;Lcom/join/mgps/dto/DomainInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/x6;->h0(Lcom/join/mgps/dto/WxProgram;Lcom/join/mgps/dto/DomainInfoBean;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method J(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commonGameInfoBean"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x93

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 21
    .line 22
    .line 23
    const-string v2, "147"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x67

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 38
    .line 39
    .line 40
    const-string v2, "103"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/x6;->d0(Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setDataFlag(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setKeyword(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "112"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/mgps/adapter/x6;->e0()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setWhere(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public Z(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Lcom/join/mgps/adapter/x6;->J(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_e

    .line 28
    .line 29
    iget-object v6, v1, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 30
    .line 31
    iget-boolean v7, v0, Lcom/join/mgps/adapter/x6$h;->d:Z

    .line 32
    .line 33
    const v8, 0x7f0a0e61

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2, v8}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v8}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    const/high16 v11, 0x3f800000    # 1.0f

    .line 71
    .line 72
    invoke-static {v9, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    float-to-int v10, v10

    .line 77
    const/4 v11, -0x1

    .line 78
    invoke-direct {v7, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    const v11, 0x7f0713d8

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 93
    .line 94
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 103
    .line 104
    invoke-virtual {v2, v8}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-boolean v0, v0, Lcom/join/mgps/adapter/x6$h;->d:Z

    .line 112
    .line 113
    invoke-virtual {v2, v8, v0}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 114
    .line 115
    .line 116
    const v0, 0x7f0a1042

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v2, v0, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const v7, 0x7f0a1043

    .line 135
    .line 136
    .line 137
    const/4 v8, 0x0

    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    invoke-virtual {v2, v7, v9}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {v2, v7, v8}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 152
    .line 153
    .line 154
    :goto_1
    const v0, 0x7f0a135c

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v7, Lcom/join/mgps/adapter/w6;

    .line 162
    .line 163
    invoke-direct {v7, v1, v5, v3}, Lcom/join/mgps/adapter/w6;-><init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const v7, 0x7f0a14a2

    .line 178
    .line 179
    .line 180
    if-eqz v0, :cond_4

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v2, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 191
    .line 192
    invoke-static {v7, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_4
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v10, ""

    .line 201
    .line 202
    invoke-static {v10}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-eqz v10, :cond_5

    .line 207
    .line 208
    if-eqz v0, :cond_5

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-lez v10, :cond_5

    .line 215
    .line 216
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v2, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 227
    .line 228
    invoke-static {v7, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-ne v0, v9, :cond_6

    .line 236
    .line 237
    const/4 v0, 0x1

    .line 238
    goto :goto_3

    .line 239
    :cond_6
    const/4 v0, 0x0

    .line 240
    :goto_3
    const v7, 0x7f0a0790

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 251
    .line 252
    .line 253
    move-result-wide v10

    .line 254
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    .line 255
    .line 256
    mul-double v10, v10, v12

    .line 257
    .line 258
    mul-double v10, v10, v12

    .line 259
    .line 260
    double-to-long v10, v10

    .line 261
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 266
    .line 267
    .line 268
    move-result-wide v12

    .line 269
    const-wide/16 v14, 0x0

    .line 270
    .line 271
    const v0, 0x7f0a1a16

    .line 272
    .line 273
    .line 274
    cmpl-double v16, v12, v14

    .line 275
    .line 276
    if-lez v16, :cond_7

    .line 277
    .line 278
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->showScore()Z

    .line 279
    .line 280
    .line 281
    move-result v12

    .line 282
    if-eqz v12, :cond_7

    .line 283
    .line 284
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    invoke-virtual {v2, v0, v12}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v0, v9}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_7
    invoke-virtual {v2, v0, v8}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 300
    .line 301
    .line 302
    :goto_4
    const v0, 0x7f0a054e

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 310
    .line 311
    new-instance v9, Lm6/c;

    .line 312
    .line 313
    invoke-direct {v9, v6, v3}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v9}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->Q1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const v3, 0x7f0a199d

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->isH5Game()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_8

    .line 342
    .line 343
    invoke-virtual {v2, v7, v8}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 344
    .line 345
    .line 346
    goto/16 :goto_7

    .line 347
    .line 348
    :cond_8
    if-nez v4, :cond_9

    .line 349
    .line 350
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 351
    .line 352
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 353
    .line 354
    invoke-virtual {v1, v2, v0, v3}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_7

    .line 358
    .line 359
    :cond_9
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-static {v3, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    const/16 v5, 0x2b

    .line 376
    .line 377
    if-lez v3, :cond_a

    .line 378
    .line 379
    const/16 v0, 0x2b

    .line 380
    .line 381
    :cond_a
    if-eqz v0, :cond_d

    .line 382
    .line 383
    const/16 v3, 0x30

    .line 384
    .line 385
    if-eq v0, v3, :cond_d

    .line 386
    .line 387
    const/4 v3, 0x2

    .line 388
    const v6, 0x7f0a129e

    .line 389
    .line 390
    .line 391
    const v7, 0x7f0a0f94

    .line 392
    .line 393
    .line 394
    const-string v8, "/"

    .line 395
    .line 396
    const v9, 0x7f0a00f7

    .line 397
    .line 398
    .line 399
    if-eq v0, v3, :cond_c

    .line 400
    .line 401
    const/4 v3, 0x3

    .line 402
    if-eq v0, v3, :cond_b

    .line 403
    .line 404
    const/4 v3, 0x5

    .line 405
    if-eq v0, v3, :cond_d

    .line 406
    .line 407
    const/4 v3, 0x6

    .line 408
    if-eq v0, v3, :cond_b

    .line 409
    .line 410
    const/4 v3, 0x7

    .line 411
    if-eq v0, v3, :cond_d

    .line 412
    .line 413
    const/16 v3, 0x2a

    .line 414
    .line 415
    if-eq v0, v3, :cond_d

    .line 416
    .line 417
    if-eq v0, v5, :cond_d

    .line 418
    .line 419
    const v3, 0x7f0a12a5

    .line 420
    .line 421
    .line 422
    packed-switch v0, :pswitch_data_0

    .line 423
    .line 424
    .line 425
    goto/16 :goto_7

    .line 426
    .line 427
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 428
    .line 429
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 430
    .line 431
    invoke-virtual {v1, v2, v0, v5}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 432
    .line 433
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 461
    .line 462
    .line 463
    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 464
    .line 465
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    check-cast v0, Landroid/widget/ProgressBar;

    .line 473
    .line 474
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 475
    .line 476
    .line 477
    move-result-wide v2

    .line 478
    long-to-int v3, v2

    .line 479
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_7

    .line 483
    .line 484
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 485
    .line 486
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 487
    .line 488
    invoke-virtual {v1, v2, v0, v5}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 489
    .line 490
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .line 495
    .line 496
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 518
    .line 519
    .line 520
    const-string v0, "\u89e3\u538b\u4e2d.."

    .line 521
    .line 522
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    check-cast v0, Landroid/widget/ProgressBar;

    .line 530
    .line 531
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 532
    .line 533
    .line 534
    move-result-wide v2

    .line 535
    long-to-int v3, v2

    .line 536
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_7

    .line 540
    .line 541
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 542
    .line 543
    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 544
    .line 545
    .line 546
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 552
    .line 553
    .line 554
    move-result-wide v12

    .line 555
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v2, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    check-cast v0, Landroid/widget/ProgressBar;

    .line 584
    .line 585
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 586
    .line 587
    .line 588
    move-result-wide v3

    .line 589
    long-to-int v4, v3

    .line 590
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .line 592
    .line 593
    goto :goto_5

    .line 594
    :catch_0
    move-exception v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 596
    .line 597
    .line 598
    :goto_5
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 599
    .line 600
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 601
    .line 602
    .line 603
    goto/16 :goto_7

    .line 604
    .line 605
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 606
    .line 607
    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 608
    .line 609
    .line 610
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 616
    .line 617
    .line 618
    move-result-wide v12

    .line 619
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    check-cast v0, Landroid/widget/ProgressBar;

    .line 648
    .line 649
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 650
    .line 651
    .line 652
    move-result-wide v3

    .line 653
    long-to-int v4, v3

    .line 654
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    .line 656
    .line 657
    goto :goto_6

    .line 658
    :catch_1
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 660
    .line 661
    .line 662
    :goto_6
    const-string v0, "\u6682\u505c\u4e2d"

    .line 663
    .line 664
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 665
    .line 666
    .line 667
    goto :goto_7

    .line 668
    :cond_c
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 669
    .line 670
    .line 671
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 672
    .line 673
    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 674
    .line 675
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 682
    .line 683
    .line 684
    move-result-wide v12

    .line 685
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 707
    .line 708
    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v3

    .line 718
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v3, "/S"

    .line 722
    .line 723
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v2, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    check-cast v0, Landroid/widget/ProgressBar;

    .line 738
    .line 739
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 740
    .line 741
    .line 742
    move-result-wide v2

    .line 743
    long-to-int v3, v2

    .line 744
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 745
    .line 746
    .line 747
    goto :goto_7

    .line 748
    :cond_d
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 749
    .line 750
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 751
    .line 752
    invoke-virtual {v1, v2, v0, v3}, Lcom/join/mgps/adapter/x6;->s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 753
    .line 754
    .line 755
    :cond_e
    :goto_7
    return-void

    .line 756
    nop

    .line 757
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a0(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Lcom/join/mgps/adapter/x6;->J(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_e

    .line 28
    .line 29
    iget-object v6, v1, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 30
    .line 31
    iget-boolean v7, v0, Lcom/join/mgps/adapter/x6$h;->d:Z

    .line 32
    .line 33
    const v8, 0x7f0a0e61

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2, v8}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v8}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    const/high16 v11, 0x3f800000    # 1.0f

    .line 71
    .line 72
    invoke-static {v9, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    float-to-int v10, v10

    .line 77
    const/4 v11, -0x1

    .line 78
    invoke-direct {v7, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    const v11, 0x7f0713d8

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 93
    .line 94
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 103
    .line 104
    invoke-virtual {v2, v8}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-boolean v0, v0, Lcom/join/mgps/adapter/x6$h;->d:Z

    .line 112
    .line 113
    invoke-virtual {v2, v8, v0}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 114
    .line 115
    .line 116
    const v0, 0x7f0a1042

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v2, v0, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const v7, 0x7f0a1043

    .line 135
    .line 136
    .line 137
    const/4 v8, 0x0

    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    invoke-virtual {v2, v7, v9}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {v2, v7, v8}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 152
    .line 153
    .line 154
    :goto_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 155
    .line 156
    new-instance v7, Lcom/join/mgps/adapter/r6;

    .line 157
    .line 158
    invoke-direct {v7, v1, v5, v3}, Lcom/join/mgps/adapter/r6;-><init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    const v7, 0x7f0a14a2

    .line 173
    .line 174
    .line 175
    if-eqz v0, :cond_4

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v2, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 186
    .line 187
    invoke-static {v7, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_4
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v10, ""

    .line 196
    .line 197
    invoke-static {v10}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_5

    .line 202
    .line 203
    if-eqz v0, :cond_5

    .line 204
    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-lez v10, :cond_5

    .line 210
    .line 211
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v2, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 222
    .line 223
    invoke-static {v7, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-ne v0, v9, :cond_6

    .line 231
    .line 232
    const/4 v0, 0x1

    .line 233
    goto :goto_3

    .line 234
    :cond_6
    const/4 v0, 0x0

    .line 235
    :goto_3
    const v7, 0x7f0a0790

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 246
    .line 247
    .line 248
    move-result-wide v10

    .line 249
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    .line 250
    .line 251
    mul-double v10, v10, v12

    .line 252
    .line 253
    mul-double v10, v10, v12

    .line 254
    .line 255
    double-to-long v10, v10

    .line 256
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 261
    .line 262
    .line 263
    move-result-wide v12

    .line 264
    const-wide/16 v14, 0x0

    .line 265
    .line 266
    const v0, 0x7f0a1a16

    .line 267
    .line 268
    .line 269
    cmpl-double v16, v12, v14

    .line 270
    .line 271
    if-lez v16, :cond_7

    .line 272
    .line 273
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->showScore()Z

    .line 274
    .line 275
    .line 276
    move-result v12

    .line 277
    if-eqz v12, :cond_7

    .line 278
    .line 279
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    invoke-virtual {v2, v0, v12}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v0, v9}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_7
    invoke-virtual {v2, v0, v8}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 295
    .line 296
    .line 297
    :goto_4
    const v0, 0x7f0a054e

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 305
    .line 306
    new-instance v9, Lm6/c;

    .line 307
    .line 308
    invoke-direct {v9, v6, v3}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v9}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->Q1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const v3, 0x7f0a199d

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->isH5Game()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_8

    .line 337
    .line 338
    invoke-virtual {v2, v7, v8}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 339
    .line 340
    .line 341
    goto/16 :goto_7

    .line 342
    .line 343
    :cond_8
    if-nez v4, :cond_9

    .line 344
    .line 345
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 346
    .line 347
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 348
    .line 349
    invoke-virtual {v1, v2, v0, v3}, Lcom/join/mgps/adapter/x6;->t0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_7

    .line 353
    .line 354
    :cond_9
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-static {v3, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    const/16 v5, 0x2b

    .line 371
    .line 372
    if-lez v3, :cond_a

    .line 373
    .line 374
    const/16 v0, 0x2b

    .line 375
    .line 376
    :cond_a
    if-eqz v0, :cond_d

    .line 377
    .line 378
    const/16 v3, 0x30

    .line 379
    .line 380
    if-eq v0, v3, :cond_d

    .line 381
    .line 382
    const/4 v3, 0x2

    .line 383
    const v6, 0x7f0a129e

    .line 384
    .line 385
    .line 386
    const v7, 0x7f0a0f94

    .line 387
    .line 388
    .line 389
    const-string v8, "/"

    .line 390
    .line 391
    const v9, 0x7f0a00f7

    .line 392
    .line 393
    .line 394
    if-eq v0, v3, :cond_c

    .line 395
    .line 396
    const/4 v3, 0x3

    .line 397
    if-eq v0, v3, :cond_b

    .line 398
    .line 399
    const/4 v3, 0x5

    .line 400
    if-eq v0, v3, :cond_d

    .line 401
    .line 402
    const/4 v3, 0x6

    .line 403
    if-eq v0, v3, :cond_b

    .line 404
    .line 405
    const/4 v3, 0x7

    .line 406
    if-eq v0, v3, :cond_d

    .line 407
    .line 408
    const/16 v3, 0x2a

    .line 409
    .line 410
    if-eq v0, v3, :cond_d

    .line 411
    .line 412
    if-eq v0, v5, :cond_d

    .line 413
    .line 414
    const v3, 0x7f0a12a5

    .line 415
    .line 416
    .line 417
    packed-switch v0, :pswitch_data_0

    .line 418
    .line 419
    .line 420
    goto/16 :goto_7

    .line 421
    .line 422
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 423
    .line 424
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 425
    .line 426
    invoke-virtual {v1, v2, v0, v5}, Lcom/join/mgps/adapter/x6;->t0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 427
    .line 428
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 456
    .line 457
    .line 458
    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 459
    .line 460
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    check-cast v0, Landroid/widget/ProgressBar;

    .line 468
    .line 469
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 470
    .line 471
    .line 472
    move-result-wide v2

    .line 473
    long-to-int v3, v2

    .line 474
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_7

    .line 478
    .line 479
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 480
    .line 481
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 482
    .line 483
    invoke-virtual {v1, v2, v0, v5}, Lcom/join/mgps/adapter/x6;->t0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 484
    .line 485
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 513
    .line 514
    .line 515
    const-string v0, "\u89e3\u538b\u4e2d.."

    .line 516
    .line 517
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    check-cast v0, Landroid/widget/ProgressBar;

    .line 525
    .line 526
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 527
    .line 528
    .line 529
    move-result-wide v2

    .line 530
    long-to-int v3, v2

    .line 531
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_7

    .line 535
    .line 536
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 537
    .line 538
    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/x6;->t0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 539
    .line 540
    .line 541
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 547
    .line 548
    .line 549
    move-result-wide v12

    .line 550
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    check-cast v0, Landroid/widget/ProgressBar;

    .line 579
    .line 580
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 581
    .line 582
    .line 583
    move-result-wide v3

    .line 584
    long-to-int v4, v3

    .line 585
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    .line 587
    .line 588
    goto :goto_5

    .line 589
    :catch_0
    move-exception v0

    .line 590
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 591
    .line 592
    .line 593
    :goto_5
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 594
    .line 595
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 596
    .line 597
    .line 598
    goto/16 :goto_7

    .line 599
    .line 600
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 601
    .line 602
    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/x6;->t0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 603
    .line 604
    .line 605
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 611
    .line 612
    .line 613
    move-result-wide v12

    .line 614
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    check-cast v0, Landroid/widget/ProgressBar;

    .line 643
    .line 644
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 645
    .line 646
    .line 647
    move-result-wide v3

    .line 648
    long-to-int v4, v3

    .line 649
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 650
    .line 651
    .line 652
    goto :goto_6

    .line 653
    :catch_1
    move-exception v0

    .line 654
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 655
    .line 656
    .line 657
    :goto_6
    const-string v0, "\u6682\u505c\u4e2d"

    .line 658
    .line 659
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 660
    .line 661
    .line 662
    goto :goto_7

    .line 663
    :cond_c
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 664
    .line 665
    .line 666
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 667
    .line 668
    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/x6;->t0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 669
    .line 670
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 677
    .line 678
    .line 679
    move-result-wide v12

    .line 680
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 702
    .line 703
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    .line 705
    .line 706
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    const-string v3, "/S"

    .line 717
    .line 718
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v2, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    check-cast v0, Landroid/widget/ProgressBar;

    .line 733
    .line 734
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 735
    .line 736
    .line 737
    move-result-wide v2

    .line 738
    long-to-int v3, v2

    .line 739
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 740
    .line 741
    .line 742
    goto :goto_7

    .line 743
    :cond_d
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 744
    .line 745
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 746
    .line 747
    invoke-virtual {v1, v2, v0, v3}, Lcom/join/mgps/adapter/x6;->t0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 748
    .line 749
    .line 750
    :cond_e
    :goto_7
    return-void

    .line 751
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b0(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "model"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/x6;->J(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_4

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v2, 0x0

    .line 59
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-ge v6, v7, :cond_1

    .line 71
    .line 72
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-lez v5, :cond_2

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    :cond_2
    const v5, 0x7f0a1486

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v5, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-lez v3, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getPic_position()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    new-instance v3, Lcom/join/mgps/adapter/i1;

    .line 112
    .line 113
    iget-object v6, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 114
    .line 115
    invoke-direct {v3, v6, v0, v1, v2}, Lcom/join/mgps/adapter/i1;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lit/sephiroth/android/library/widget/HListView;

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    .line 126
    .line 127
    if-ne v0, v4, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 134
    .line 135
    iget-object v2, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const v3, 0x7f0711b5

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 166
    .line 167
    iget-object v2, p0, Lcom/join/mgps/adapter/x6;->h:Landroid/content/Context;

    .line 168
    .line 169
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const v3, 0x7f07133d

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 190
    .line 191
    .line 192
    :goto_2
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    .line 197
    .line 198
    new-instance v0, Lcom/join/mgps/adapter/x6$c;

    .line 199
    .line 200
    invoke-direct {v0, p0, v1, p2}, Lcom/join/mgps/adapter/x6$c;-><init>(Lcom/join/mgps/adapter/x6;Ljava/util/List;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 204
    .line 205
    .line 206
    :cond_4
    return-void
.end method

.method protected c0(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
    .locals 1
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseViewHolder",
            "model"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x6$h;->getItemType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->U(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->T(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->Q(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->O(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->R(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->L(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->K(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->P(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->S(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->M(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_a
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->N(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->Y(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->V(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_d
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->W(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_e
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->X(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "baseViewHolder",
            "model"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/adapter/x6$h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x6;->c0(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x6;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public o0(Lcom/join/mgps/adapter/x6$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x6;->k:Lcom/join/mgps/adapter/x6$f;

    .line 2
    .line 3
    return-void
.end method

.method p0(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "tbPadding"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1, v0, p2, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public q0(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/x6$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/x6$e;-><init>(Lcom/join/mgps/adapter/x6;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mKeyword"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x6;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method s0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
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
    const v0, 0x7f0a0f07

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0a0e73

    .line 9
    .line 10
    .line 11
    const v2, 0x7f0a12a5

    .line 12
    .line 13
    .line 14
    const v3, 0x7f0a129e

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v1, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p1, v1, v4}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2, v4}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v3, v4}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p1, v0, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method t0(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
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
    const v0, 0x7f0a1043

    .line 6
    .line 7
    .line 8
    const v1, 0x7f0a13d9

    .line 9
    .line 10
    .line 11
    const v2, 0x7f0a0e73

    .line 12
    .line 13
    .line 14
    const v3, 0x7f0a12a5

    .line 15
    .line 16
    .line 17
    const v4, 0x7f0a129e

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v1, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v4, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v5}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1, v4, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1, v3, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v4, v5}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p1, v0, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method
