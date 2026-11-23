.class public Lcom/join/mgps/adapter/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/e$r;,
        Lcom/join/mgps/adapter/e$i0;,
        Lcom/join/mgps/adapter/e$g0;,
        Lcom/join/mgps/adapter/e$d0;,
        Lcom/join/mgps/adapter/e$e0;,
        Lcom/join/mgps/adapter/e$f0;,
        Lcom/join/mgps/adapter/e$s;,
        Lcom/join/mgps/adapter/e$u;,
        Lcom/join/mgps/adapter/e$w;,
        Lcom/join/mgps/adapter/e$t;,
        Lcom/join/mgps/adapter/e$v;,
        Lcom/join/mgps/adapter/e$o;,
        Lcom/join/mgps/adapter/e$n;,
        Lcom/join/mgps/adapter/e$c0;,
        Lcom/join/mgps/adapter/e$b0;,
        Lcom/join/mgps/adapter/e$m;,
        Lcom/join/mgps/adapter/e$x;,
        Lcom/join/mgps/adapter/e$a0;,
        Lcom/join/mgps/adapter/e$z;,
        Lcom/join/mgps/adapter/e$y;,
        Lcom/join/mgps/adapter/e$h0;,
        Lcom/join/mgps/adapter/e$p;,
        Lcom/join/mgps/adapter/e$q;
    }
.end annotation


# static fields
.field public static final A:I = 0x11

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:I = 0x6

.field public static final q:I = 0x7

.field public static final r:I = 0x8

.field public static final s:I = 0x9

.field public static final t:I = 0xa

.field public static final u:I = 0xb

.field public static final v:I = 0xc

.field public static final w:I = 0xd

.field public static final x:I = 0xe

.field public static final y:I = 0xf

.field public static final z:I = 0x10


# instance fields
.field private final e:Landroid/content/Context;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/e$i0;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field h:Lcom/join/mgps/adapter/e$r;

.field private volatile i:I


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
            "Lcom/join/mgps/adapter/e$i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x12

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/adapter/e;->i:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->D(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private A(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    check-cast p1, Lcom/join/mgps/adapter/e$g0;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->d()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Lcom/join/mgps/adapter/e$g0;->e:Landroid/widget/TextView;

    .line 22
    .line 23
    const-string v1, "\u6765\u81ea\u4f60\u7684\u6d4f\u89c8\u63a8\u8350"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Lcom/join/mgps/adapter/e$g0;->f:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->d()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/4 v0, 0x2

    .line 38
    if-ne p2, v0, :cond_2

    .line 39
    .line 40
    iget-object p2, p1, Lcom/join/mgps/adapter/e$g0;->e:Landroid/widget/TextView;

    .line 41
    .line 42
    const-string v0, "\u6765\u81ea\u5e7f\u544a\u8d5e\u52a9"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/adapter/e$g0;->f:Landroid/view/View;

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p2, p1, Lcom/join/mgps/adapter/e$g0;->e:Landroid/widget/TextView;

    .line 55
    .line 56
    const-string v0, "\u6765\u81ea\u7f16\u8f91\u63a8\u8350"

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lcom/join/mgps/adapter/e$g0;->f:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;
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
    new-instance p1, Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method private f(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const v1, 0x7f070eb0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, p1, p1, v1, v1}, Lcom/facebook/drawee/generic/RoundingParams;->r(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    return-void
.end method

.method private l(Lcom/join/mgps/adapter/e$n;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/join/mgps/adapter/e$n;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->B(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/adapter/e$n;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    new-instance v0, Lcom/join/mgps/adapter/e$a;

    .line 34
    .line 35
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$a;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    return-void
.end method

.method private n(Lcom/join/mgps/adapter/e$s;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/join/mgps/adapter/e$s;->e:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/16 v3, 0x3e8

    .line 23
    .line 24
    mul-long v1, v1, v3

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5"

    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/i;->i(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lcom/join/mgps/adapter/e$s;->f:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    mul-long v0, v0, v3

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/i;->g(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private o(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    move-object v0, p1

    .line 5
    check-cast v0, Lcom/join/mgps/adapter/e$t;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/adapter/e$t;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/InformationListDataBean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationListDataBean;->getMaterial()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/adapter/e$k;

    .line 39
    .line 40
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$k;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private p(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    move-object v0, p1

    .line 5
    check-cast v0, Lcom/join/mgps/adapter/e$u;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/adapter/e$u;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getPic()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/adapter/e$i;

    .line 39
    .line 40
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$i;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    move-object v0, p1

    .line 5
    check-cast v0, Lcom/join/mgps/adapter/e$v;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, v0, Lcom/join/mgps/adapter/e$v;->f:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/mgps/dto/InformationListDataBean;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationListDataBean;->getGame_name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/join/mgps/adapter/e$v;->j:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/join/mgps/dto/InformationListDataBean;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationListDataBean;->getTitle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/join/mgps/dto/InformationListDataBean;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationListDataBean;->getScore_count()F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x0

    .line 62
    cmpl-float v1, v1, v2

    .line 63
    .line 64
    if-lez v1, :cond_1

    .line 65
    .line 66
    iget-object v1, v0, Lcom/join/mgps/adapter/e$v;->i:Landroid/widget/TextView;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v0, Lcom/join/mgps/adapter/e$v;->i:Landroid/widget/TextView;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/join/mgps/dto/InformationListDataBean;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationListDataBean;->getScore_count()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, ""

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, v0, Lcom/join/mgps/adapter/e$v;->i:Landroid/widget/TextView;

    .line 106
    .line 107
    const/16 v1, 0x8

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 113
    .line 114
    new-instance v0, Lcom/join/mgps/adapter/e$l;

    .line 115
    .line 116
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$l;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return-void
.end method

.method private r(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    move-object v0, p1

    .line 5
    check-cast v0, Lcom/join/mgps/adapter/e$w;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, v0, Lcom/join/mgps/adapter/e$w;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getIco_remote()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v3}, Lcom/join/android/app/common/utils/l;->B(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/join/mgps/adapter/e$w;->f:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/join/mgps/adapter/e$w;->j:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getTitle()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x0

    .line 83
    cmpl-float v1, v1, v2

    .line 84
    .line 85
    if-lez v1, :cond_1

    .line 86
    .line 87
    iget-object v1, v0, Lcom/join/mgps/adapter/e$w;->i:Landroid/widget/TextView;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, v0, Lcom/join/mgps/adapter/e$w;->i:Landroid/widget/TextView;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, ""

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, v0, Lcom/join/mgps/adapter/e$w;->i:Landroid/widget/TextView;

    .line 127
    .line 128
    const/16 v1, 0x8

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 134
    .line 135
    new-instance v0, Lcom/join/mgps/adapter/e$j;

    .line 136
    .line 137
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$j;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    return-void
.end method

.method private s(Lcom/join/mgps/adapter/e$y;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/e$y;->e:Landroid/widget/GridView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->h:Lcom/join/mgps/adapter/e$r;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Lcom/join/mgps/adapter/e$r;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/e$r;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/adapter/e;->h:Lcom/join/mgps/adapter/e$r;

    .line 37
    .line 38
    :cond_2
    iget-object p1, p1, Lcom/join/mgps/adapter/e$y;->e:Landroid/widget/GridView;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->h:Lcom/join/mgps/adapter/e$r;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/e;->h:Lcom/join/mgps/adapter/e$r;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/e$r;->e(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/adapter/e;->h:Lcom/join/mgps/adapter/e$r;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private t(Lcom/join/mgps/adapter/e$z;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Landroid/view/View;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const v3, 0x7f07133c

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object v3, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const v4, 0x7f071369

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const v2, 0x7f0810b8

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p1, Lcom/join/mgps/adapter/e$z;->e:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-ge v0, v3, :cond_4

    .line 78
    .line 79
    iget-object v3, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const v4, 0x7f0d0131

    .line 86
    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    if-lez v0, :cond_2

    .line 115
    .line 116
    new-instance v4, Landroid/view/View;

    .line 117
    .line 118
    iget-object v5, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 119
    .line 120
    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    .line 128
    .line 129
    iget-object v5, p1, Lcom/join/mgps/adapter/e$z;->e:Landroid/widget/LinearLayout;

    .line 130
    .line 131
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    iget v4, p0, Lcom/join/mgps/adapter/e;->g:I

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 147
    .line 148
    invoke-virtual {v5}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-ne v4, v5, :cond_3

    .line 153
    .line 154
    const/4 v4, 0x1

    .line 155
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 169
    .line 170
    invoke-virtual {p0, v4}, Lcom/join/mgps/adapter/e;->B(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    iget-object v4, p1, Lcom/join/mgps/adapter/e$z;->e:Landroid/widget/LinearLayout;

    .line 174
    .line 175
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    iget-object v4, p1, Lcom/join/mgps/adapter/e$z;->e:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 191
    .line 192
    invoke-virtual {p0, v4, v3, v5}, Lcom/join/mgps/adapter/e;->E(Landroid/view/ViewGroup;Landroid/view/View;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_4
    return-void
.end method

.method private u(Lcom/join/mgps/adapter/e$a0;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ge v0, v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-ge v0, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 44
    .line 45
    iget-object v2, p1, Lcom/join/mgps/adapter/e$a0;->g:[Landroid/widget/TextView;

    .line 46
    .line 47
    aget-object v2, v2, v0

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p1, Lcom/join/mgps/adapter/e$a0;->h:[Landroid/widget/TextView;

    .line 57
    .line 58
    aget-object v2, v2, v0

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLabel()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p1, Lcom/join/mgps/adapter/e$a0;->f:[Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 68
    .line 69
    aget-object v2, v2, v0

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 76
    .line 77
    invoke-direct {p0, v4}, Lcom/join/mgps/adapter/e;->f(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v2, v3, v4}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p1, Lcom/join/mgps/adapter/e$a0;->e:[Landroid/view/View;

    .line 85
    .line 86
    aget-object v2, v2, v0

    .line 87
    .line 88
    new-instance v3, Lcom/join/mgps/adapter/e$e;

    .line 89
    .line 90
    invoke-direct {v3, p0, v1}, Lcom/join/mgps/adapter/e$e;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/dto/BannerBean;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method private v(Lcom/join/mgps/adapter/e$b0;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/join/mgps/adapter/e$b0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_img()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->B(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/join/mgps/adapter/e$b0;->f:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p1, Lcom/join/mgps/adapter/e$b0;->g:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_desc()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p1, Lcom/join/mgps/adapter/e$b0;->h:Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x1

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getOnline_time()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v4, 0x0

    .line 83
    aput-object v3, v2, v4

    .line 84
    .line 85
    const v3, 0x7f1200a5

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 96
    .line 97
    new-instance v0, Lcom/join/mgps/adapter/e$b;

    .line 98
    .line 99
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$b;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method private w(Lcom/join/mgps/adapter/e$c0;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/CharSequence;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/mgps/adapter/e$c0;->e:Landroid/view/View;

    .line 23
    .line 24
    const/16 p2, 0x8

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/e$c0;->e:Landroid/view/View;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Lcom/join/mgps/adapter/e$c0;->e:Landroid/view/View;

    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/adapter/e$c;

    .line 39
    .line 40
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$c;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method private x(Lcom/join/mgps/adapter/e$d0;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/e$d0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_img()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f0600ad

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lcom/join/mgps/adapter/e$d0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getIco_remote()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->B(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p1, Lcom/join/mgps/adapter/e$d0;->h:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_desc()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p1, Lcom/join/mgps/adapter/e$d0;->g:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v1, 0x0

    .line 97
    cmpl-float v0, v0, v1

    .line 98
    .line 99
    if-lez v0, :cond_2

    .line 100
    .line 101
    iget-object v0, p1, Lcom/join/mgps/adapter/e$d0;->i:Landroid/widget/TextView;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p1, Lcom/join/mgps/adapter/e$d0;->i:Landroid/widget/TextView;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v2, ""

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/e$d0;->i:Landroid/widget/TextView;

    .line 141
    .line 142
    const/16 v1, 0x8

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 148
    .line 149
    new-instance v0, Lcom/join/mgps/adapter/e$f;

    .line 150
    .line 151
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$f;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method private y(Lcom/join/mgps/adapter/e$e0;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p1, Lcom/join/mgps/adapter/e$e0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_img()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    new-instance v0, Lcom/join/mgps/adapter/e$g;

    .line 34
    .line 35
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$g;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method private z(Lcom/join/mgps/adapter/e$f0;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItem(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/e$i0;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p1, Lcom/join/mgps/adapter/e$f0;->f:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_desc()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/join/mgps/adapter/e$f0;->e:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x0

    .line 57
    cmpl-float v0, v0, v1

    .line 58
    .line 59
    if-lez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p1, Lcom/join/mgps/adapter/e$f0;->g:Landroid/widget/TextView;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p1, Lcom/join/mgps/adapter/e$f0;->g:Landroid/widget/TextView;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getScore_count()F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ""

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/e$f0;->g:Landroid/widget/TextView;

    .line 101
    .line 102
    const/16 v1, 0x8

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 108
    .line 109
    new-instance v0, Lcom/join/mgps/adapter/e$h;

    .line 110
    .line 111
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/e$h;-><init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    return-void
.end method


# virtual methods
.method public B(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classify"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/e;->g:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->h:Lcom/join/mgps/adapter/e$r;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/adapter/e$r;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/e$r;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/adapter/e;->h:Lcom/join/mgps/adapter/e$r;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->h:Lcom/join/mgps/adapter/e$r;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/e$r;->e(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/adapter/e;->h:Lcom/join/mgps/adapter/e$r;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public C(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentClassifyId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/e;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/e$i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->f:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/e;->f:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->f:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->f:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public E(Landroid/view/ViewGroup;Landroid/view/View;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "vg",
            "view",
            "classify"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/e$d;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p3}, Lcom/join/mgps/adapter/e$d;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/ViewGroup;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->f:Ljava/util/List;

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

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/e;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public e(Landroid/widget/TextView;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tv",
            "content",
            "maxLine"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    div-float/2addr v0, p1

    .line 27
    float-to-double v1, v0

    .line 28
    int-to-double v3, p3

    .line 29
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 30
    .line 31
    add-double/2addr v3, v5

    .line 32
    cmpl-double p1, v1, v3

    .line 33
    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    int-to-float p3, p3

    .line 46
    div-float/2addr p3, v0

    .line 47
    float-to-double v0, p3

    .line 48
    div-double/2addr v0, v3

    .line 49
    double-to-int p3, v0

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, "..."

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_0
    return-object p2
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/e;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->f:Ljava/util/List;

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
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/e;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->f:Ljava/util/List;

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
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->f:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/adapter/e$i0;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->g()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "tpl_type",
            "jump_type",
            "_from_type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link_tpl_type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method j(Lcom/join/mgps/dto/BannerBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getTpl_type()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getJump_type()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getLink_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e;->getItemViewType(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->A(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    check-cast p1, Lcom/join/mgps/adapter/e$d0;

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->x(Lcom/join/mgps/adapter/e$d0;I)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_2
    const/4 v1, 0x3

    .line 27
    if-ne v0, v1, :cond_3

    .line 28
    .line 29
    check-cast p1, Lcom/join/mgps/adapter/e$e0;

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->y(Lcom/join/mgps/adapter/e$e0;I)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_3
    const/4 v1, 0x4

    .line 37
    if-ne v0, v1, :cond_4

    .line 38
    .line 39
    check-cast p1, Lcom/join/mgps/adapter/e$f0;

    .line 40
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->z(Lcom/join/mgps/adapter/e$f0;I)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_4
    const/4 v1, 0x5

    .line 47
    if-ne v0, v1, :cond_5

    .line 48
    .line 49
    check-cast p1, Lcom/join/mgps/adapter/e$s;

    .line 50
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->n(Lcom/join/mgps/adapter/e$s;I)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_5
    const/4 v1, 0x6

    .line 57
    if-ne v0, v1, :cond_6

    .line 58
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->p(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_6
    const/4 v1, 0x7

    .line 65
    if-ne v0, v1, :cond_7

    .line 66
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->r(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_7
    const/16 v1, 0xd

    .line 72
    .line 73
    if-ne v0, v1, :cond_8

    .line 74
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->o(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_8
    const/16 v1, 0xe

    .line 80
    .line 81
    if-ne v0, v1, :cond_9

    .line 82
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_9
    const/16 v1, 0x8

    .line 88
    .line 89
    if-ne v0, v1, :cond_a

    .line 90
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_a
    const/16 v1, 0x9

    .line 96
    .line 97
    if-ne v0, v1, :cond_b

    .line 98
    .line 99
    check-cast p1, Lcom/join/mgps/adapter/e$n;

    .line 100
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->l(Lcom/join/mgps/adapter/e$n;I)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_b
    const/16 v1, 0xa

    .line 106
    .line 107
    if-ne v0, v1, :cond_c

    .line 108
    .line 109
    check-cast p1, Lcom/join/mgps/adapter/e$c0;

    .line 110
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->w(Lcom/join/mgps/adapter/e$c0;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_c
    const/16 v1, 0xb

    .line 116
    .line 117
    if-ne v0, v1, :cond_d

    .line 118
    .line 119
    check-cast p1, Lcom/join/mgps/adapter/e$b0;

    .line 120
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->v(Lcom/join/mgps/adapter/e$b0;I)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_d
    const/16 v1, 0xc

    .line 126
    .line 127
    if-ne v0, v1, :cond_e

    .line 128
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_e
    const/16 v1, 0xf

    .line 134
    .line 135
    if-ne v0, v1, :cond_f

    .line 136
    .line 137
    check-cast p1, Lcom/join/mgps/adapter/e$a0;

    .line 138
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->u(Lcom/join/mgps/adapter/e$a0;I)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_f
    const/16 v1, 0x10

    .line 144
    .line 145
    if-ne v0, v1, :cond_10

    .line 146
    .line 147
    check-cast p1, Lcom/join/mgps/adapter/e$z;

    .line 148
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->t(Lcom/join/mgps/adapter/e$z;I)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_10
    const/16 v1, 0x11

    .line 154
    .line 155
    if-ne v0, v1, :cond_11

    .line 156
    .line 157
    check-cast p1, Lcom/join/mgps/adapter/e$y;

    .line 158
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e;->s(Lcom/join/mgps/adapter/e$y;I)V

    .line 160
    .line 161
    .line 162
    :cond_11
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/join/mgps/adapter/e$g0;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v2, 0x7f0d0129

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$g0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    if-ne p2, v0, :cond_1

    .line 27
    .line 28
    new-instance p2, Lcom/join/mgps/adapter/e$d0;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v2, 0x7f0d0126

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$d0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_1
    const/4 v0, 0x3

    .line 49
    if-ne p2, v0, :cond_2

    .line 50
    .line 51
    new-instance p2, Lcom/join/mgps/adapter/e$e0;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v2, 0x7f0d0127

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$e0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_2
    const/4 v0, 0x4

    .line 72
    if-ne p2, v0, :cond_3

    .line 73
    .line 74
    new-instance p2, Lcom/join/mgps/adapter/e$f0;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const v2, 0x7f0d0128

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$f0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_3
    const/4 v0, 0x5

    .line 95
    if-ne p2, v0, :cond_4

    .line 96
    .line 97
    new-instance p2, Lcom/join/mgps/adapter/e$s;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v2, 0x7f0d011b

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$s;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_4
    const/4 v0, 0x6

    .line 118
    if-ne p2, v0, :cond_5

    .line 119
    .line 120
    new-instance p2, Lcom/join/mgps/adapter/e$u;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 123
    .line 124
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const v2, 0x7f0d011c

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$u;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_5
    const/4 v0, 0x7

    .line 141
    if-ne p2, v0, :cond_6

    .line 142
    .line 143
    new-instance p2, Lcom/join/mgps/adapter/e$w;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const v2, 0x7f0d011e

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$w;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_6
    const/16 v0, 0xd

    .line 164
    .line 165
    if-ne p2, v0, :cond_7

    .line 166
    .line 167
    new-instance p2, Lcom/join/mgps/adapter/e$t;

    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 170
    .line 171
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const v2, 0x7f0d011d

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$t;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_7
    const/16 v0, 0xe

    .line 188
    .line 189
    if-ne p2, v0, :cond_8

    .line 190
    .line 191
    new-instance p2, Lcom/join/mgps/adapter/e$v;

    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const v2, 0x7f0d011f

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$v;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_8
    const/16 v0, 0x8

    .line 212
    .line 213
    if-ne p2, v0, :cond_9

    .line 214
    .line 215
    new-instance p2, Lcom/join/mgps/adapter/e$o;

    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 218
    .line 219
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const v2, 0x7f0d011a

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$o;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_9
    const/16 v0, 0x9

    .line 236
    .line 237
    if-ne p2, v0, :cond_a

    .line 238
    .line 239
    new-instance p2, Lcom/join/mgps/adapter/e$n;

    .line 240
    .line 241
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 242
    .line 243
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const v2, 0x7f0d0119

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$n;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_a
    const/16 v0, 0xa

    .line 260
    .line 261
    if-ne p2, v0, :cond_b

    .line 262
    .line 263
    new-instance p2, Lcom/join/mgps/adapter/e$c0;

    .line 264
    .line 265
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 266
    .line 267
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const v2, 0x7f0d0125

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$c0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_b
    const/16 v0, 0xb

    .line 284
    .line 285
    if-ne p2, v0, :cond_c

    .line 286
    .line 287
    new-instance p2, Lcom/join/mgps/adapter/e$b0;

    .line 288
    .line 289
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 290
    .line 291
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const v2, 0x7f0d0124

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$b0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_c
    const/16 v0, 0xc

    .line 308
    .line 309
    if-ne p2, v0, :cond_d

    .line 310
    .line 311
    new-instance p2, Lcom/join/mgps/adapter/e$m;

    .line 312
    .line 313
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 314
    .line 315
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const v2, 0x7f0d0118

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$m;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 327
    .line 328
    .line 329
    goto :goto_0

    .line 330
    :cond_d
    if-nez p2, :cond_e

    .line 331
    .line 332
    new-instance p2, Lcom/join/mgps/adapter/e$x;

    .line 333
    .line 334
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 335
    .line 336
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const v2, 0x7f0d0120

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$x;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 348
    .line 349
    .line 350
    goto :goto_0

    .line 351
    :cond_e
    const/16 v0, 0xf

    .line 352
    .line 353
    if-ne p2, v0, :cond_f

    .line 354
    .line 355
    new-instance p2, Lcom/join/mgps/adapter/e$a0;

    .line 356
    .line 357
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 358
    .line 359
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    const v2, 0x7f0d0121

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$a0;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 371
    .line 372
    .line 373
    goto :goto_0

    .line 374
    :cond_f
    const/16 v0, 0x10

    .line 375
    .line 376
    if-ne p2, v0, :cond_10

    .line 377
    .line 378
    new-instance p2, Lcom/join/mgps/adapter/e$z;

    .line 379
    .line 380
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 381
    .line 382
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    const v2, 0x7f0d0123

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$z;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 394
    .line 395
    .line 396
    goto :goto_0

    .line 397
    :cond_10
    const/16 v0, 0x11

    .line 398
    .line 399
    if-ne p2, v0, :cond_11

    .line 400
    .line 401
    new-instance p2, Lcom/join/mgps/adapter/e$y;

    .line 402
    .line 403
    iget-object v0, p0, Lcom/join/mgps/adapter/e;->e:Landroid/content/Context;

    .line 404
    .line 405
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    const v2, 0x7f0d0122

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e$y;-><init>(Lcom/join/mgps/adapter/e;Landroid/view/View;)V

    .line 417
    .line 418
    .line 419
    goto :goto_0

    .line 420
    :cond_11
    const/4 p2, 0x0

    .line 421
    :goto_0
    return-object p2
.end method
