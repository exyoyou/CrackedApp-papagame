.class public Lcom/byazt/pro/ve;
.super Lcom/byazt/lq/c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/lbn/LazeLayout$c;
.implements Lcom/byazt/lbn/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/lq/c;",
        "Lcom/byazt/lbn/LazeLayout$c<",
        "Lcom/byazt/un/NativeVideoTsView;",
        ">;",
        "Lcom/byazt/lbn/c<",
        "Lcom/byazt/un/NativeVideoTsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public c:Z

.field public volatile da:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/un/NativeVideoTsView;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/byazt/lbn/LazeLayout;

.field public n:Lcom/byazt/pro/uj;

.field public sl:Lcom/byazt/pro/CreativeContainer;

.field public final sp:Lcom/byazt/ete/ic;

.field public t:Lcom/byazt/lsp/c;

.field public tt:Landroid/graphics/Bitmap;

.field public uj:Lcom/byazt/uz/c;

.field public ve:I

.field public x:Lcom/byazt/dj/tt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;ILcom/byazt/dj/tt;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/pro/uj;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/byazt/pro/uj;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ILcom/byazt/dj/tt;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/byazt/lq/c;-><init>(Lcom/byazt/nc/da;)V

    .line 7
    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    iput-object p3, p0, Lcom/byazt/pro/ve;->i:Lcom/byazt/lbn/LazeLayout;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/byazt/pro/ve;->da:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    new-instance v0, Lcom/byazt/pro/ve$3;

    .line 15
    .line 16
    invoke-direct {v0, p0, p3}, Lcom/byazt/pro/ve$3;-><init>(Lcom/byazt/pro/ve;Ljava/util/function/Function;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/byazt/pro/ve;->t:Lcom/byazt/lsp/c;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/byazt/pro/ve;->x:Lcom/byazt/dj/tt;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/byazt/lq/c;->getFeedAd()Lcom/byazt/nc/da;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lcom/byazt/pro/uj;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/byazt/pro/ve;->sp:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/byazt/lq/tt;->getNativeAd()Lcom/byazt/nc/u;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    check-cast p3, Lcom/byazt/kyz/ve;

    .line 40
    .line 41
    iget-object p4, p0, Lcom/byazt/pro/ve;->t:Lcom/byazt/lsp/c;

    .line 42
    .line 43
    invoke-virtual {p3, p4}, Lcom/byazt/kyz/ve;->setPluginAdInteractionListener(Lcom/byazt/lsp/c;)V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-static {p2}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-nez p3, :cond_0

    .line 53
    .line 54
    invoke-static {p2}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/ete/ic;)Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-eqz p3, :cond_0

    .line 59
    .line 60
    iget-object p3, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/byazt/lq/tt;->getNativeAd()Lcom/byazt/nc/u;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Lcom/byazt/kyz/ve;

    .line 67
    .line 68
    new-instance p4, Lcom/byazt/pro/CreativeContainer;

    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-direct {p4, p1, p2, p3}, Lcom/byazt/pro/CreativeContainer;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/omf/my;)V

    .line 75
    .line 76
    .line 77
    iput-object p4, p0, Lcom/byazt/pro/ve;->sl:Lcom/byazt/pro/CreativeContainer;

    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pro/ve;)Lcom/byazt/pro/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 6
    iget v0, p0, Lcom/byazt/pro/ve;->ve:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 7
    iput v1, p0, Lcom/byazt/pro/ve;->ve:I

    return-void

    :cond_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    .line 8
    iput v1, p0, Lcom/byazt/pro/ve;->ve:I

    :cond_1
    return-void
.end method

.method private c(I)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/ogz/sl;->a(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->n(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne v1, p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/lq/c;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/pro/ve;->da:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/pro/ve;->da:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/byazt/un/NativeVideoTsView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->gt()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/ve;->i:Lcom/byazt/lbn/LazeLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/lbn/LazeLayout;->c()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/ve;->sl:Lcom/byazt/pro/CreativeContainer;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/ve;->sp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    iget-object v2, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/byazt/iyp/tt;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/pro/ve;->sp:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/ete/ic;->tt(Lcom/byazt/ete/ic;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/byazt/pro/ve;->sp:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const-string v4, "valid invoke"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3, v4}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/ve;->sp:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-static {}, Lcom/byazt/bzd/x;->c()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Lcom/byazt/lbn/LazeLayout;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    .line 56
    .line 57
    invoke-direct {v0, v1, p0, p0}, Lcom/byazt/lbn/LazeLayout;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;Lcom/byazt/lbn/LazeLayout$c;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/byazt/pro/ve;->i:Lcom/byazt/lbn/LazeLayout;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/pro/ve;->a:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/byazt/pro/ve;->inflate(Landroid/content/Context;)Lcom/byazt/un/NativeVideoTsView;

    .line 66
    .line 67
    .line 68
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    nop

    .line 71
    :goto_0
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/byazt/pro/ve;->onFill(Lcom/byazt/un/NativeVideoTsView;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-object v1

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/byazt/pro/ve;->sl:Lcom/byazt/pro/CreativeContainer;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iget-object v0, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/byazt/lq/tt;->getNativeAd()Lcom/byazt/nc/u;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/byazt/kyz/ve;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/byazt/pro/ve;->sl:Lcom/byazt/pro/CreativeContainer;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/byazt/omf/my;->c(Lcom/byazt/pro/CreativeContainer;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    iget-object v0, p0, Lcom/byazt/pro/ve;->sl:Lcom/byazt/pro/CreativeContainer;

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_6
    :goto_1
    invoke-static {}, Lcom/byazt/dz/uj;->c()Lcom/byazt/dz/uj;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/byazt/pro/ve;->sp:Lcom/byazt/ete/ic;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/byazt/pro/uj;->getAdType()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(I)Lcom/byazt/dz/uj;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/byazt/pro/uj;->getCodeId()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->tt(I)Lcom/byazt/dz/uj;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/byazt/pro/ve;->i:Lcom/byazt/lbn/LazeLayout;

    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_7
    :goto_2
    return-object v1
.end method

.method public getLifecycleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/ve;->sp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getMediationManager()Lcom/byazt/sbm/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ah/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ah/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic inflate(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/pro/ve;->inflate(Landroid/content/Context;)Lcom/byazt/un/NativeVideoTsView;

    move-result-object p1

    return-object p1
.end method

.method public inflate(Landroid/content/Context;)Lcom/byazt/un/NativeVideoTsView;
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/pro/uj;->createNativeVideoTsView(Z)Lcom/byazt/un/NativeVideoTsView;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/byazt/pro/ve$1;

    invoke-direct {v1, p0}, Lcom/byazt/pro/ve$1;-><init>(Lcom/byazt/pro/ve;)V

    invoke-virtual {p1, v1}, Lcom/byazt/un/NativeVideoTsView;->setControllerStatusCallBack(Lcom/byazt/un/NativeVideoTsView$uj;)V

    .line 4
    new-instance v1, Lcom/byazt/pro/ve$2;

    invoke-direct {v1, p0}, Lcom/byazt/pro/ve$2;-><init>(Lcom/byazt/pro/ve;)V

    invoke-virtual {p1, v1}, Lcom/byazt/un/NativeVideoTsView;->setAdCreativeClickListener(Lcom/byazt/un/NativeVideoTsView$c;)V

    .line 5
    iget-object v1, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    invoke-virtual {p1, v1}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdLoadListener(Lcom/byazt/dh/ve$uj;)V

    .line 6
    iget-object v1, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    invoke-virtual {p1, v1}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/byazt/dh/ve$ve;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/pro/ve;->sp:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v1

    .line 8
    invoke-direct {p0, v1}, Lcom/byazt/pro/ve;->c(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 9
    iget-object v1, p0, Lcom/byazt/pro/ve;->sp:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ab()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/byazt/un/NativeVideoTsView;->setIsQuiet(Z)V

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/byazt/un/NativeDrawVideoTsView;

    iget-boolean v1, p0, Lcom/byazt/pro/ve;->c:Z

    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeDrawVideoTsView;->setCanInterruptVideoPlay(Z)V

    .line 11
    iget-object v1, p0, Lcom/byazt/pro/ve;->tt:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 12
    iget v2, p0, Lcom/byazt/pro/ve;->ve:I

    invoke-virtual {v0, v1, v2}, Lcom/byazt/un/NativeDrawVideoTsView;->c(Landroid/graphics/Bitmap;I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/ve;->uj:Lcom/byazt/uz/c;

    invoke-virtual {p1, v0}, Lcom/byazt/un/NativeVideoTsView;->setDrawVideoListener(Lcom/byazt/uz/c;)V

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/pro/ve;->da:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public bridge synthetic onFill(Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/un/NativeVideoTsView;

    invoke-virtual {p0, p1}, Lcom/byazt/pro/ve;->onFill(Lcom/byazt/un/NativeVideoTsView;)V

    return-void
.end method

.method public onFill(Lcom/byazt/un/NativeVideoTsView;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/byazt/un/NativeVideoTsView;->setNativeRenderAd(Z)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/byazt/un/NativeVideoTsView;->c(JZZ)Z

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;Lcom/byazt/am/uj;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/lsp/c;",
            "Lcom/byazt/am/uj;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v7, p6

    .line 9
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/lq/c;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    .line 10
    .line 11
    .line 12
    if-eqz p7, :cond_3

    .line 13
    .line 14
    invoke-virtual {p7}, Lcom/byazt/am/uj;->t()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p3, -0x1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byazt/lq/c;->getAdLogo()Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    if-eqz p4, :cond_1

    .line 30
    .line 31
    const/4 p4, 0x0

    .line 32
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    instance-of p4, p1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-eqz p4, :cond_0

    .line 38
    .line 39
    move-object p4, p1

    .line 40
    check-cast p4, Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 43
    .line 44
    .line 45
    new-instance p4, Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p5

    .line 51
    invoke-direct {p4, p5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/byazt/lq/c;->getAdLogo()Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object p5

    .line 58
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    .line 60
    .line 61
    sget-object p5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 62
    .line 63
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object p5

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p6

    .line 74
    const/high16 v0, 0x42180000    # 38.0f

    .line 75
    .line 76
    invoke-static {p6, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 77
    .line 78
    .line 79
    move-result p6

    .line 80
    iput p6, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p6

    .line 86
    invoke-static {p6, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 87
    .line 88
    .line 89
    move-result p6

    .line 90
    iput p6, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    .line 92
    invoke-virtual {p1, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    check-cast p1, Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-virtual {p1, p4, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    instance-of p4, p1, Landroid/widget/ImageView;

    .line 102
    .line 103
    if-eqz p4, :cond_1

    .line 104
    .line 105
    check-cast p1, Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/byazt/lq/c;->getAdLogo()Landroid/graphics/Bitmap;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p7}, Lcom/byazt/am/uj;->sp()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/FrameLayout;

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/byazt/pro/ve;->getAdView()Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-nez p2, :cond_2

    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    invoke-static {p2}, Lcom/byazt/aas/pf;->x(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :cond_3
    return-void

    .line 143
    :catchall_0
    move-exception p1

    .line 144
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/pro/ve;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDrawVideoListener(Lcom/byazt/uz/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/ve;->uj:Lcom/byazt/uz/c;

    .line 2
    .line 3
    return-void
.end method

.method public setEasyPlayWidgetListener(Lcom/byazt/lsp/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/ve;->n:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/pro/uj;->setEasyPlayWidgetListener(Lcom/byazt/lsp/tt;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPauseIcon(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/ve;->tt:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/pro/ve;->ve:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/pro/ve;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
