.class public Lcom/byazt/ac/tt;
.super Lcom/byazt/ac/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0xd
    }
.end annotation


# instance fields
.field public d:D

.field public eo:D

.field public h:D

.field public md:D

.field public or:Z

.field public final p:Lcom/byazt/at/tt;

.field public final yv:Lcom/byazt/bd/c;

.field public zb:Ljava/lang/String;

.field public final zm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;IIZLcom/byazt/go/AbstractEndCardFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/byazt/ac/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;IIZ)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/ac/tt;->zm:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p1, Lcom/byazt/ac/tt$1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/byazt/ac/tt$1;-><init>(Lcom/byazt/ac/tt;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/ac/tt;->yv:Lcom/byazt/bd/c;

    .line 17
    .line 18
    new-instance p1, Lcom/byazt/ac/tt$2;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/byazt/ac/tt$2;-><init>(Lcom/byazt/ac/tt;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/byazt/ac/tt;->p:Lcom/byazt/at/tt;

    .line 24
    .line 25
    invoke-virtual {p7}, Lcom/byazt/go/AbstractEndCardFrameLayout;->getEndCardWebView()Lcom/byazt/el/SSWebView;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/byazt/ac/c;->c()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ac/tt;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/tt;->zb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ac/tt;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ac/tt;->c(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string v0, "csjclientimg://"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 70
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/byazt/ac/tt;->zm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 74
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 75
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 76
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ac/tt;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/ac/tt;->or:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/ac/tt;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ac/tt;->or:Z

    return p1
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fr()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/byazt/ete/xd;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget v2, p0, Lcom/byazt/ac/c;->my:I

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    const-string v2, "orientation"

    .line 44
    .line 45
    const-string v3, "portrait"

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    .line 49
    .line 50
    :cond_1
    iget v2, p0, Lcom/byazt/ac/c;->rl:I

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "height"

    .line 57
    .line 58
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget v2, p0, Lcom/byazt/ac/c;->gt:I

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "width"

    .line 69
    .line 70
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "aspect_ratio"

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/byazt/biq/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/byazt/aas/qp;->ve(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 101
    .line 102
    return-void
.end method

.method public static synthetic n(Lcom/byazt/ac/tt;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ac/tt;->eo:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic sp(Lcom/byazt/ac/tt;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/tt;->zm:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/ac/tt;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ac/tt;->md:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic uj(Lcom/byazt/ac/tt;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ac/tt;->d:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/ac/tt;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ac/tt;->h:D

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public c(DDDDLjava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/ac/c;->m:Z

    if-nez v0, :cond_1

    .line 44
    iput-wide p1, p0, Lcom/byazt/ac/tt;->md:D

    .line 45
    iput-wide p3, p0, Lcom/byazt/ac/tt;->h:D

    .line 46
    iput-wide p7, p0, Lcom/byazt/ac/tt;->eo:D

    .line 47
    iput-wide p5, p0, Lcom/byazt/ac/tt;->d:D

    .line 48
    iput-object p9, p0, Lcom/byazt/ac/tt;->zb:Ljava/lang/String;

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/byazt/ac/tt;->or:Z

    return-void

    .line 50
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    .line 51
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "y"

    .line 52
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "width"

    .line 53
    invoke-virtual {v0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "height"

    .line 54
    invoke-virtual {v0, p1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "videoFrameKey"

    .line 55
    invoke-virtual {v0, p1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    const-string p2, "endcardTransform"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/byazt/ac/c;->c(I)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/byazt/ac/c;->c(Z)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/byazt/ac/c;->ve(Z)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ac/c;->c(ZZ)V

    return-void
.end method

.method public c(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V
    .locals 6

    .line 30
    iget-object p2, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    if-nez p2, :cond_0

    return-void

    .line 31
    :cond_0
    new-instance p2, Lcom/byazt/ac/tt$3;

    iget-object v2, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ac/tt$3;-><init>(Lcom/byazt/ac/tt;Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;)V

    iput-object p2, p0, Lcom/byazt/ac/c;->sl:Lcom/byazt/jwd/uj;

    .line 32
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-virtual {v0, p2}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 33
    iget-object p2, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-virtual {p0, p2}, Lcom/byazt/ac/c;->c(Lcom/byazt/el/SSWebView;)V

    .line 34
    iget-object p2, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/byazt/qg/BizWebView;->setBackgroundColor(I)V

    .line 35
    iget-object p2, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/byazt/qg/BizWebView;->setDisplayZoomControls(Z)V

    .line 36
    iget-object p2, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    new-instance v0, Lcom/byazt/ac/tt$4;

    iget-object v1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    iget-object v2, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/byazt/ac/tt$4;-><init>(Lcom/byazt/ac/tt;Lcom/byazt/omf/d;Lcom/byazt/ddx/a;)V

    invoke-virtual {p2, v0}, Lcom/byazt/qg/BizWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 37
    iget-object p2, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-virtual {p2, p1}, Lcom/byazt/qg/BizWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public c(Lcom/byazt/xl/yp;)V
    .locals 19

    move-object/from16 v10, p0

    .line 57
    iget-object v0, v10, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/kp;->gr(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget v0, v10, Lcom/byazt/ac/c;->gt:I

    int-to-double v0, v0

    .line 59
    iget v2, v10, Lcom/byazt/ac/c;->rl:I

    int-to-double v2, v2

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_2

    .line 60
    iget-object v6, v10, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v6}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/fcd/c;->sp()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/xl/yp;->x()D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-nez v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/xl/yp;->i()D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-eqz v8, :cond_2

    .line 62
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/xl/yp;->a()D

    move-result-wide v0

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/xl/yp;->sp()D

    move-result-wide v2

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/xl/yp;->x()D

    move-result-wide v4

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/xl/yp;->i()D

    move-result-wide v6

    move-wide v11, v0

    move-wide v13, v2

    move-wide v15, v4

    move-wide/from16 v17, v6

    goto :goto_0

    :cond_2
    move-wide v15, v0

    move-wide/from16 v17, v2

    move-wide v11, v4

    move-wide v13, v11

    :goto_0
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v13

    move-wide v5, v15

    move-wide/from16 v7, v17

    .line 66
    invoke-virtual/range {v0 .. v9}, Lcom/byazt/ac/tt;->c(DDDDLjava/lang/String;)V

    .line 67
    iget-object v0, v10, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/fcd/n;

    if-eqz v0, :cond_3

    return-void

    .line 68
    :cond_3
    iget-object v0, v10, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/byazt/ac/tt$5;

    move-object v0, v9

    move-object/from16 v1, p0

    move-wide v2, v11

    move-wide v4, v13

    move-wide v6, v15

    move-object v11, v8

    move-object v12, v9

    move-wide/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Lcom/byazt/ac/tt$5;-><init>(Lcom/byazt/ac/tt;DDDD)V

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1, v11, v12}, Lcom/byazt/vv/tt;->c(JLjava/lang/String;Lcom/byazt/vv/tt$tt;)V

    return-void
.end method

.method public c(ZLjava/util/Map;Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    new-instance v1, Lcom/byazt/ddx/da;

    iget-object v2, p0, Lcom/byazt/ac/c;->ve:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/byazt/ddx/da;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    const/4 v2, 0x2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "webview_source"

    invoke-virtual {v1, v0, v3, v2}, Lcom/byazt/ddx/da;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    new-instance v0, Lcom/byazt/ddx/a;

    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-direct {v0, v1, v2}, Lcom/byazt/ddx/a;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/nl/uj;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/a;->tt(Z)Lcom/byazt/ddx/a;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/a;->c(Z)V

    .line 10
    invoke-direct {p0}, Lcom/byazt/ac/tt;->h()V

    .line 11
    iget-object v0, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    invoke-virtual {p0}, Lcom/byazt/ac/tt;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "landingpage_endcard"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "reward_endcard"

    goto :goto_0

    :cond_2
    const-string v1, "fullscreen_endcard"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/a;->c(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/byazt/omf/d;

    iget-object v1, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1}, Lcom/byazt/omf/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 13
    iget-object v1, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/ete/ic;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 15
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 16
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->uj(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    .line 17
    :goto_1
    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->ve(I)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ac/c;->gu:Lcom/byazt/at/c;

    .line 18
    invoke-virtual {p1, v0}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/c;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 19
    invoke-static {v0}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/omf/d;->n(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 20
    invoke-virtual {p1, v0}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 21
    invoke-static {v0}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/omf/d;->tt(I)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    .line 22
    invoke-virtual {p1, v0}, Lcom/byazt/omf/d;->c(Lcom/byazt/rbg/c;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ac/c;->ve:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v0}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->c(Ljava/util/Map;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/ac/c;->gr:Lcom/byazt/at/sp;

    .line 25
    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/sp;)Lcom/byazt/omf/d;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p3}, Lcom/byazt/omf/d;->c(Landroid/view/View;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 27
    invoke-virtual {p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->ve(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/ac/tt;->yv:Lcom/byazt/bd/c;

    .line 28
    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->c(Lcom/byazt/bd/c;)Lcom/byazt/omf/d;

    .line 29
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    iget-object p2, p0, Lcom/byazt/ac/tt;->p:Lcom/byazt/at/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/tt;)Lcom/byazt/omf/d;

    return-void
.end method

.method public gr()Ljava/lang/String;
    .locals 1

    const-string v0, "endcard"

    return-object v0
.end method

.method public md()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ac/c;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->getWebView()Landroid/webkit/WebView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/byazt/ac/c;->z:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public p()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "show_landingpage"

    .line 16
    .line 17
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return v0

    .line 22
    :catch_0
    return v1
.end method

.method public z()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/ac/c;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ac/tt;->zm:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
