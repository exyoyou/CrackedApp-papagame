.class public Lcom/byazt/sy/PlayableFeedWebView;
.super Lcom/byazt/el/SSWebView;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nl/ve$c;
.implements Lcom/byazt/kyz/tt;
.implements Lcom/byazt/sy/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x210,
        0x38a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sy/PlayableFeedWebView$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/omf/d;

.field public final da:Landroid/view/ViewGroup;

.field public gt:Lcom/byazt/ete/m;

.field public i:Lcom/byazt/ete/m;

.field public final m:Ljava/lang/Runnable;

.field public my:Lcom/byazt/ete/m;

.field public final n:Landroid/content/Context;

.field public nu:Lcom/byazt/zb/x;

.field public rh:Lcom/byazt/xl/sl;

.field public rl:D

.field public sl:Z

.field public final sp:Lcom/byazt/ete/ic;

.field public t:Lcom/byazt/sy/c;

.field public u:Z

.field public x:Lcom/byazt/kyz/c;

.field public yp:I

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/c;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/byazt/kyz/c;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/byazt/el/SSWebView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->sl:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->u:Z

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    iput v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->yp:I

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/sy/PlayableFeedWebView$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/byazt/sy/PlayableFeedWebView$1;-><init>(Lcom/byazt/sy/PlayableFeedWebView;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->z:Ljava/lang/Runnable;

    .line 23
    .line 24
    new-instance v0, Lcom/byazt/sy/PlayableFeedWebView$2;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/byazt/sy/PlayableFeedWebView$2;-><init>(Lcom/byazt/sy/PlayableFeedWebView;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->m:Ljava/lang/Runnable;

    .line 30
    .line 31
    new-instance v0, Lcom/byazt/sy/PlayableFeedWebView$3;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/byazt/sy/PlayableFeedWebView$3;-><init>(Lcom/byazt/sy/PlayableFeedWebView;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->rh:Lcom/byazt/xl/sl;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/byazt/sy/PlayableFeedWebView;->x:Lcom/byazt/kyz/c;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/byazt/kyz/c;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->n:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/byazt/kyz/c;->c()Lcom/byazt/ete/ic;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/byazt/sy/PlayableFeedWebView;->da:Landroid/view/ViewGroup;

    .line 53
    .line 54
    const/4 p1, 0x4

    .line 55
    invoke-virtual {p0, p1}, Lcom/byazt/qg/BizWebView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    const-string p1, "easy_pfwv"

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/byazt/el/SSWebView;->setTag(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p0}, Lcom/byazt/qg/BizWebView;->setTouchEventListener(Lcom/byazt/nl/ve$c;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sy/PlayableFeedWebView;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private c(Lcom/byazt/el/SSWebView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/jwd/tt;->c(Landroid/content/Context;)Lcom/byazt/jwd/tt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/jwd/tt;->c(Z)Lcom/byazt/jwd/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/jwd/tt;->c(Lcom/byazt/nl/uj;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 9
    sget v0, Lcom/byazt/omf/p;->uj:I

    iget-object v2, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 10
    invoke-static {v2}, Lcom/byazt/ete/ic;->n(Lcom/byazt/ete/ic;)Z

    move-result v2

    .line 11
    invoke-static {p1, v0, v2}, Lcom/byazt/aas/gt;->c(Lcom/byazt/nl/uj;IZ)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/byazt/qg/BizWebView;->setMixedContentMode(I)V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setJavaScriptEnabled(Z)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setDomStorageEnabled(Z)V

    .line 16
    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setDatabaseEnabled(Z)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setAppCacheEnabled(Z)V

    .line 18
    invoke-virtual {p1, v1}, Lcom/byazt/qg/BizWebView;->setAllowFileAccess(Z)V

    .line 19
    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setSupportZoom(Z)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setBuiltInZoomControls(Z)V

    .line 21
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Lcom/byazt/qg/BizWebView;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setUseWideViewPort(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "xeasy"

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private da()V
    .locals 5

    .line 1
    new-instance v0, Lcom/byazt/omf/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->n:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/omf/d;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/byazt/omf/d;->tt(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/ete/ic;)Lcom/byazt/omf/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->uj(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->n(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/sy/i;)Lcom/byazt/omf/d;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static {v3, v3, v4, v1, v2}, Lcom/byazt/jlk/tt;->c(FFZLcom/byazt/ete/ic;Z)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->uj(Lorg/json/JSONObject;)Lcom/byazt/omf/d;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->rh:Lcom/byazt/xl/sl;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/xl/sl;)Lcom/byazt/omf/d;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private i()V
    .locals 7

    .line 1
    new-instance v0, Lcom/byazt/vgp/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/vgp/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/byazt/vgp/n;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 9
    .line 10
    invoke-direct {v3, v1}, Lcom/byazt/vgp/n;-><init>(Lcom/byazt/omf/d;)V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lcom/byazt/vgp/uj;

    .line 14
    .line 15
    invoke-direct {v4}, Lcom/byazt/vgp/uj;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v5, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "subscribe_app_ad"

    .line 24
    .line 25
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-string v1, "adInfo"

    .line 29
    .line 30
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const-string v1, "webview_time_track"

    .line 34
    .line 35
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    const-string v1, "download_app_ad"

    .line 39
    .line 40
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v6, Lcom/byazt/zb/x$c;->ve:Lcom/byazt/zb/x$c;

    .line 48
    .line 49
    move-object v2, p0

    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/vgp/ve;->c(Landroid/content/Context;Lcom/byazt/el/SSWebView;Lcom/byazt/zb/ve;Lcom/byazt/zb/c;Ljava/util/Set;Lcom/byazt/zb/x$c;)Lcom/byazt/zb/x;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/byazt/qg/BizWebView;->getUrl()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->n(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {}, Lcom/byazt/fh/c;->x()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->uj(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {}, Lcom/byazt/fh/c;->c()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->c(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "sdkEdition"

    .line 79
    .line 80
    invoke-static {}, Lcom/byazt/fh/c;->ve()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zb/x;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {}, Lcom/byazt/fh/c;->a()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->tt(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {}, Lcom/byazt/fh/c;->n()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->ve(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->ve(Z)Lcom/byazt/zb/x;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->nu:Lcom/byazt/zb/x;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/byazt/zb/x;->da()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 116
    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-gtz v1, :cond_0

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/byazt/sy/PlayableFeedWebView;->nu:Lcom/byazt/zb/x;

    .line 131
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_1

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Ljava/lang/String;

    .line 150
    .line 151
    iget-object v3, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/byazt/omf/d;->a()Lcom/byazt/pct/nu;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    new-instance v4, Lcom/byazt/sy/PlayableFeedWebView$4;

    .line 158
    .line 159
    invoke-direct {v4, p0, v1}, Lcom/byazt/sy/PlayableFeedWebView$4;-><init>(Lcom/byazt/sy/PlayableFeedWebView;Ljava/lang/ref/WeakReference;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v2, v4}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    return-void
.end method

.method private sl()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/qg/BizWebView;->setBackgroundColor(I)V

    .line 3
    .line 4
    .line 5
    const v0, 0x106000d

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p0}, Lcom/byazt/sy/PlayableFeedWebView;->c(Lcom/byazt/el/SSWebView;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/sy/PlayableFeedWebView$c;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->n:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/sy/PlayableFeedWebView$c;-><init>(Landroid/content/Context;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 41
    .line 42
    invoke-virtual {v0, p0, v1}, Lcom/byazt/ol/n;->c(Lcom/byazt/el/SSWebView;Lcom/byazt/ol/tt;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/byazt/jwd/ve;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/byazt/jwd/ve;-><init>(Lcom/byazt/omf/d;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/byazt/qg/BizWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/sy/PlayableFeedWebView;)Lcom/byazt/sy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/PlayableFeedWebView;->t:Lcom/byazt/sy/c;

    return-object p0
.end method

.method private update()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->da:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->da:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/byazt/sy/PlayableFeedWebView;->c(IIII)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/byazt/sy/PlayableFeedWebView;->da()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/byazt/sy/PlayableFeedWebView;->i()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/byazt/sy/PlayableFeedWebView;->sl()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/ete/p;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/p$c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->da:Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Lcom/byazt/sy/PlayableFeedWebView;->da:Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-gt v1, v2, :cond_0

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/ete/p$c;->c(Z)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/byazt/sy/PlayableFeedWebView;->loadUrl(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->t:Lcom/byazt/sy/c;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/byazt/sy/PlayableFeedWebView;->setExpressVideoListener(Lcom/byazt/ouz/sl;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/sy/PlayableFeedWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/sy/PlayableFeedWebView;->update()V

    return-void
.end method


# virtual methods
.method public K_()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public L_()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Lcom/byazt/ouz/p;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1, v2}, Lcom/byazt/ouz/p;-><init>(Lcom/byazt/el/SSWebView;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/byazt/el/SSWebView;->setOnShakeListener(Lcom/byazt/el/SSWebView$tt;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->x:Lcom/byazt/kyz/c;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/byazt/sy/PlayableFeedWebView;->getMaxRectJson()Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->x:Lcom/byazt/kyz/c;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2, v0}, Lcom/byazt/kyz/c;->c(ZLorg/json/JSONObject;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/byazt/sy/PlayableFeedWebView;->tt(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->u:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/omf/d;->cu()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/MotionEvent;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result p1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result p2

    .line 31
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->i:Lcom/byazt/ete/m;

    if-eqz v0, :cond_2

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/ete/m;->c(DD)Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->x:Lcom/byazt/kyz/c;

    if-eqz v0, :cond_1

    .line 33
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/byazt/kyz/c;->c(Lcom/byazt/ete/ic;FFI)V

    .line 34
    :cond_1
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(IIII)V
    .locals 8

    .line 5
    new-instance v7, Lcom/byazt/sy/PlayableFeedWebView$6;

    const-string v2, "changeFrame"

    move-object v0, v7

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/byazt/sy/PlayableFeedWebView$6;-><init>(Lcom/byazt/sy/PlayableFeedWebView;Ljava/lang/String;IIII)V

    invoke-static {v7}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/m;D)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/sy/PlayableFeedWebView;->my:Lcom/byazt/ete/m;

    .line 3
    iput-wide p2, p0, Lcom/byazt/sy/PlayableFeedWebView;->rl:D

    .line 4
    iput-object p1, p0, Lcom/byazt/sy/PlayableFeedWebView;->i:Lcom/byazt/ete/m;

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->sl(Z)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->t:Lcom/byazt/sy/c;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/el/SSWebView;->O_()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/byazt/el/SSWebView;->setOnShakeListener(Lcom/byazt/el/SSWebView$tt;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/byazt/omf/d;->n()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView$tt;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 23
    .line 24
    invoke-super {p0}, Lcom/byazt/el/SSWebView;->destroy()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/el/SSWebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/rgb/a;->uj(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getActualRectJson()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->gt:Lcom/byazt/ete/m;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/m;->c(Lcom/byazt/ete/m;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContainerInfo()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/sy/PlayableFeedWebView;->da:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/byazt/sy/PlayableFeedWebView;->da:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    int-to-float v2, v2

    .line 28
    invoke-static {v4, v2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    int-to-float v3, v3

    .line 41
    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 47
    .line 48
    .line 49
    const-string v2, "point"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    new-instance v1, Lorg/json/JSONArray;

    .line 55
    .line 56
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/byazt/sy/PlayableFeedWebView;->da:Landroid/view/ViewGroup;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iget-object v5, p0, Lcom/byazt/sy/PlayableFeedWebView;->da:Landroid/view/ViewGroup;

    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    int-to-float v2, v2

    .line 76
    invoke-static {v6, v2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    int-to-float v4, v5

    .line 88
    invoke-static {v2, v4}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 93
    .line 94
    .line 95
    const-string v2, "size"

    .line 96
    .line 97
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "xeasy"

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    return-object v0
.end method

.method public getCreativeVideoViewInfo()Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getEstimatedInteractionAreaInfo()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->x:Lcom/byazt/kyz/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/kyz/c;->tt()Lorg/json/JSONObject;

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

.method public getExceedAreaRate()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->rl:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getJsObject()Lcom/byazt/omf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxRectJson()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->my:Lcom/byazt/ete/m;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/m;->c(Lcom/byazt/ete/m;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/el/SSWebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/byazt/sy/PlayableFeedWebView;->c(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/el/SSWebView;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/sy/PlayableFeedWebView;->c(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->m:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->z:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x32

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/byazt/sy/PlayableFeedWebView;->z:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/byazt/sy/PlayableFeedWebView;->m:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setEasyPlayInteractionAreaInfo(Lcom/byazt/ete/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sy/PlayableFeedWebView;->gt:Lcom/byazt/ete/m;

    .line 2
    .line 3
    return-void
.end method

.method public setEasyPlayableListener(Lcom/byazt/sy/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sy/PlayableFeedWebView;->t:Lcom/byazt/sy/c;

    .line 2
    .line 3
    return-void
.end method

.method public setExpressVideoListener(Lcom/byazt/ouz/sl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->c(Lcom/byazt/ouz/sl;)Lcom/byazt/omf/d;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sp()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->sl:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->sl:Z

    .line 7
    .line 8
    new-instance v0, Lcom/byazt/sy/PlayableFeedWebView$5;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/byazt/sy/PlayableFeedWebView$5;-><init>(Lcom/byazt/sy/PlayableFeedWebView;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0x64

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/rgb/a;->uj(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->x:Lcom/byazt/kyz/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/kyz/c;->ve()V

    :cond_0
    return-void
.end method

.method public tt(I)V
    .locals 5

    .line 5
    iget v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->yp:I

    if-ne p1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/byazt/sy/PlayableFeedWebView;->yp:I

    .line 7
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 8
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "adVisible"

    if-nez p1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    iget-object v3, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    const-string v4, "expressAdShow"

    invoke-virtual {v3, v4, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->a:Lcom/byazt/omf/d;

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v0, v1, v2, v2}, Lcom/byazt/kp/c;->c(Lcom/byazt/omf/d;ZZZ)V

    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->sp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/rgb/a;->uj(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->t:Lcom/byazt/sy/c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/byazt/sy/c;->c(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/sy/PlayableFeedWebView;->x:Lcom/byazt/kyz/c;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error_code"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "xeasy"

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/byazt/sy/PlayableFeedWebView;->x:Lcom/byazt/kyz/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/byazt/kyz/c;->c(ZLorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/sy/PlayableFeedWebView;->c(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
