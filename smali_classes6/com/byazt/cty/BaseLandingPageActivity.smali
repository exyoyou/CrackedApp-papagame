.class public abstract Lcom/byazt/cty/BaseLandingPageActivity;
.super Lcom/byazt/cty/BaseThemeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nt/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xab,
        0x95f
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/cty/BaseLandingPageActivity$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/lbn/TTViewStub;

.field public aw:J

.field public bx:Z

.field public c:Ljava/lang/String;

.field public cu:Lcom/byazt/pop/c;

.field public d:Lcom/byazt/wz/c;

.field public da:Ljava/lang/String;

.field public eo:Landroid/widget/TextView;

.field public gr:Lcom/byazt/ff/TTProgressBar;

.field public gt:Z

.field public gu:Lcom/byazt/tjs/uj;

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public i:Lcom/byazt/lbn/TTViewStub;

.field public m:Landroid/widget/TextView;

.field public md:Landroid/widget/Button;

.field public my:Lcom/byazt/wg/tt;

.field public n:Landroid/app/Activity;

.field public nb:Lcom/byazt/dn/UgenBanner;

.field public nu:Landroid/widget/TextView;

.field public final or:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/pop/ve;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lorg/json/JSONArray;

.field public pf:Z

.field public qy:Lcom/byazt/el/SSWebView;

.field public rh:Lcom/byazt/ddx/a;

.field public rl:Lcom/byazt/jwd/uj;

.field public sl:Z

.field public sp:Lcom/byazt/lbn/TTViewStub;

.field public sv:Ljava/lang/String;

.field public t:I

.field public tt:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public uj:I

.field public ve:Ljava/lang/String;

.field public x:Lcom/byazt/lbn/TTViewStub;

.field public yp:Landroid/widget/ImageView;

.field public yv:Lcom/byazt/omf/d;

.field public z:Landroid/widget/ImageView;

.field public zb:Landroid/view/View;

.field public zm:Lcom/byazt/dyf/tt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/cty/BaseThemeActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->bx:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->t:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->gt:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->p:Lorg/json/JSONArray;

    .line 13
    .line 14
    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->sv:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const-wide/high16 v0, -0x8000000000000000L

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->aw:J

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->or:Ljava/util/Map;

    .line 40
    .line 41
    new-instance v0, Lcom/byazt/cty/BaseLandingPageActivity$1;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/byazt/cty/BaseLandingPageActivity$1;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->cu:Lcom/byazt/pop/c;

    .line 47
    .line 48
    return-void
.end method

.method public static c(J)Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/stylex-infra-mono/landing-sdk/index.js?t="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "const existingScript = document.getElementById(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\');if (!existingScript) {var script = document.createElement(\'script\');script.id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\';script.src = \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\';document.head?.appendChild(script);}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->da:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, v0, v2}, Lcom/byazt/tjs/uj;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/tjs/uj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->gu:Lcom/byazt/tjs/uj;

    .line 15
    .line 16
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->u()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/byazt/omf/d;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/byazt/omf/d;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->yv:Lcom/byazt/omf/d;

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->sl:Z

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->uj(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->yv:Lcom/byazt/omf/d;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->tt(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->c(Lcom/byazt/ete/ic;)Lcom/byazt/omf/d;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Lcom/byazt/omf/d;->ve(Ljava/util/List;)Lcom/byazt/omf/d;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->c:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->tt:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->uj(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->uj:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->ve(I)Lcom/byazt/omf/d;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->ve:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->n(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Z)Lcom/byazt/omf/d;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(I)Lcom/byazt/omf/d;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/nt/n;)Lcom/byazt/omf/d;

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/byazt/el/SSWebView;->getInnerIWebView()Lcom/byazt/nl/uj;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/byazt/nl/c;->c(Ljava/lang/String;Lcom/byazt/nl/uj;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method private ve(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->p:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->p:Lorg/json/JSONArray;

    return-object p1

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "?id="

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "&"

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    if-eq v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x4

    if-lt v0, v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 12
    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private yp()Lcom/byazt/seg/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/nu;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    new-instance v1, Lcom/byazt/seg/c;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/byazt/seg/c;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/byazt/seg/c;->ve(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/ete/nu;->sp()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Lcom/byazt/seg/c;->tt(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/byazt/seg/c;->c(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method private z()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2}, Lcom/byazt/ete/nu;->c(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/nu;->ve()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v0, v3, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->pf:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return v2

    .line 29
    :cond_2
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/byazt/wg/tt;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/byazt/ddx/a;->c()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lcom/byazt/wg/tt;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->my:Lcom/byazt/wg/tt;

    .line 31
    .line 32
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->sv:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->sv:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/ic;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->z:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/ic;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->z:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/dyf/tt$c;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->zm:Lcom/byazt/dyf/tt;

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p0, p1}, Lcom/byazt/cty/BaseLandingPageActivity;->tt(Lcom/byazt/dyf/tt$c;)V

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->zm:Lcom/byazt/dyf/tt;

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/byazt/dyf/tt;->showDislikeDialog()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/dyf/tt$c;Z)V
    .locals 1

    const p2, 0x7e06fef9

    .line 6
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->yp:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 7
    new-instance v0, Lcom/byazt/cty/BaseLandingPageActivity$3;

    invoke-direct {v0, p0}, Lcom/byazt/cty/BaseLandingPageActivity$3;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p2, 0x7e06fef8

    .line 8
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->z:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 9
    new-instance v0, Lcom/byazt/cty/BaseLandingPageActivity$4;

    invoke-direct {v0, p0}, Lcom/byazt/cty/BaseLandingPageActivity$4;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p2, 0x7e06fff0

    .line 10
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->m:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 11
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5e7f\u544a"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->u:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const p2, 0x7e06feab

    .line 12
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->nu:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 13
    iget-object p2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 14
    iget-object p2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object p2

    const-string v0, "landing_page"

    invoke-virtual {p2, v0}, Lcom/byazt/vo/tt;->c(Ljava/lang/String;)V

    .line 15
    :cond_4
    iget-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->nu:Landroid/widget/TextView;

    new-instance v0, Lcom/byazt/cty/BaseLandingPageActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/byazt/cty/BaseLandingPageActivity$5;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;Lcom/byazt/dyf/tt$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const/4 p1, 0x4

    .line 16
    invoke-virtual {p0, p1}, Lcom/byazt/cty/BaseLandingPageActivity;->c(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(Z)V
    .locals 10

    .line 22
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    invoke-static {v0}, Lcom/byazt/jwd/tt;->c(Landroid/content/Context;)Lcom/byazt/jwd/tt;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/byazt/jwd/tt;->c(Z)Lcom/byazt/jwd/tt;

    move-result-object p1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Lcom/byazt/jwd/tt;->tt(Z)Lcom/byazt/jwd/tt;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 25
    invoke-virtual {p1, v1}, Lcom/byazt/jwd/tt;->c(Lcom/byazt/nl/uj;)V

    .line 26
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    new-instance v1, Lcom/byazt/kz/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->sp()I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/byazt/cty/BaseLandingPageActivity;->t:I

    :goto_0
    iget-object v4, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/byazt/kz/c;-><init>(Lcom/byazt/el/SSWebView;Landroid/content/Context;ILcom/byazt/ete/ic;)V

    const-string v2, "CCWifiJSBridge"

    .line 28
    invoke-virtual {p1, v1, v2}, Lcom/byazt/qg/BizWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 30
    new-instance p1, Lcom/byazt/ddx/a;

    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    invoke-direct {p1, v3, v4}, Lcom/byazt/ddx/a;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/nl/uj;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/byazt/ddx/a;->tt(Z)Lcom/byazt/ddx/a;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v1, v2}, Lcom/byazt/ddx/a;->tt(J)Lcom/byazt/ddx/a;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 32
    invoke-virtual {v1}, Lcom/byazt/qg/MultiWebview;->getCreateDuration()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/byazt/ddx/a;->uj(J)Lcom/byazt/ddx/a;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    .line 33
    invoke-direct {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->sl()V

    .line 34
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adid"

    .line 35
    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    .line 36
    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->da:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "web_title"

    .line 37
    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_multi_process"

    .line 38
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "event_tag"

    .line 39
    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->ve:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    invoke-virtual {v1, p1}, Lcom/byazt/ddx/a;->c(Lorg/json/JSONObject;)V

    .line 41
    invoke-direct {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->t()V

    .line 42
    new-instance p1, Lcom/byazt/cty/BaseLandingPageActivity$7;

    iget-object v4, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    iget-object v5, p0, Lcom/byazt/cty/BaseLandingPageActivity;->yv:Lcom/byazt/omf/d;

    iget-object v6, p0, Lcom/byazt/cty/BaseLandingPageActivity;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    iget-object v8, p0, Lcom/byazt/cty/BaseLandingPageActivity;->gu:Lcom/byazt/tjs/uj;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/byazt/cty/BaseLandingPageActivity$7;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;Lcom/byazt/tjs/uj;)V

    iput-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rl:Lcom/byazt/jwd/uj;

    .line 43
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1, p1}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 44
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    sget v1, Lcom/byazt/omf/p;->uj:I

    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 45
    invoke-static {v2}, Lcom/byazt/ete/ic;->n(Lcom/byazt/ete/ic;)Z

    move-result v2

    .line 46
    invoke-static {p1, v1, v2}, Lcom/byazt/aas/gt;->c(Lcom/byazt/nl/uj;IZ)V

    .line 47
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setMixedContentMode(I)V

    .line 48
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    new-instance v1, Lcom/byazt/cty/BaseLandingPageActivity$8;

    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->yv:Lcom/byazt/omf/d;

    iget-object v3, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    invoke-direct {v1, p0, v2, v3}, Lcom/byazt/cty/BaseLandingPageActivity$8;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;Lcom/byazt/omf/d;Lcom/byazt/ddx/a;)V

    invoke-virtual {p1, v1}, Lcom/byazt/qg/BizWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 49
    new-instance p1, Lcom/byazt/cty/BaseLandingPageActivity$c;

    iget-object v5, p0, Lcom/byazt/cty/BaseLandingPageActivity;->or:Ljava/util/Map;

    iget-object v6, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v7, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    iget-object v8, p0, Lcom/byazt/cty/BaseLandingPageActivity;->ve:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/byazt/cty/BaseLandingPageActivity;->bx:Z

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/byazt/cty/BaseLandingPageActivity$c;-><init>(Ljava/util/Map;Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 50
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1, p1}, Lcom/byazt/qg/BizWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 51
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ddx/a;->ve(J)Lcom/byazt/ddx/a;

    .line 53
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->da:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public c(ZLorg/json/JSONArray;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 59
    iput-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->p:Lorg/json/JSONArray;

    .line 60
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->i()V

    :cond_0
    return-void
.end method

.method public da()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/vfu/sp;->c(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->da:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/byazt/cty/BaseLandingPageActivity;->ve(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    if-lez v1, :cond_3

    .line 33
    .line 34
    if-gtz v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v1, Lcom/byazt/ete/bm;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/byazt/ete/bm;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, v1, Lcom/byazt/ete/bm;->a:Lorg/json/JSONArray;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-static {v0}, Lcom/byazt/aas/md;->tt(Lcom/byazt/dj/tt;)Lcom/byazt/dj/tt$c;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v4, 0x6

    .line 58
    invoke-virtual {v0, v4}, Lcom/byazt/dj/tt$c;->ve(I)Lcom/byazt/dj/tt$c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v4, Lcom/byazt/cty/BaseLandingPageActivity$2;

    .line 67
    .line 68
    invoke-direct {v4, p0}, Lcom/byazt/cty/BaseLandingPageActivity$2;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v3, v0, v1, v2, v4}, Lcom/byazt/omf/gu;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_0
    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->my:Lcom/byazt/wg/tt;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/byazt/wg/tt;->c(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->tt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->da()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/byazt/cty/BaseThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "event_tag"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->ve:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "ad_id"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->c:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "landing_page_source"

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->uj:I

    .line 35
    .line 36
    const-string v1, "is_outer_click"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput-boolean v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->sl:Z

    .line 44
    .line 45
    const-string v1, "url"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->da:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "web_dl_factors"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v3, 0x1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->da:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    .line 70
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->da:Ljava/lang/String;

    .line 71
    .line 72
    const-string v4, "chengzijianzhan"

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    iput-boolean v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->bx:Z

    .line 84
    .line 85
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 86
    .line 87
    iget-object v4, p0, Lcom/byazt/cty/BaseLandingPageActivity;->da:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v1, v4}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->da:Ljava/lang/String;

    .line 94
    .line 95
    const-string v1, "title"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->u:Ljava/lang/String;

    .line 102
    .line 103
    const-string v1, "get_phone_num_status"

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iput v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->t:I

    .line 110
    .line 111
    const-string v1, "video_is_auto_play"

    .line 112
    .line 113
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput-boolean v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->gt:Z

    .line 118
    .line 119
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 120
    .line 121
    if-nez v0, :cond_1

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/byazt/cty/BaseThemeActivity;->finish()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->tt:Ljava/lang/String;

    .line 132
    .line 133
    iput-object p0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/byazt/cty/BaseLandingPageActivity;->c(Landroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    :try_start_0
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/byazt/omf/gt;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catchall_0
    nop

    .line 145
    :goto_1
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->sp()Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->zb:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->n()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->a()V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->d()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_2

    .line 167
    .line 168
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 169
    .line 170
    const-string v0, "xiaomi"

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_2

    .line 177
    .line 178
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 179
    .line 180
    const/16 v0, 0x24

    .line 181
    .line 182
    if-lt p1, v0, :cond_2

    .line 183
    .line 184
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->zb:Landroid/view/View;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-instance v0, Lcom/byazt/cty/BaseLandingPageActivity$6;

    .line 191
    .line 192
    invoke-direct {v0, p0}, Lcom/byazt/cty/BaseLandingPageActivity$6;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 196
    .line 197
    .line 198
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/byazt/cty/BaseThemeActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/ddx/a;->sp()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    nop

    .line 32
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/nl/c;->c(Lcom/byazt/nl/uj;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/byazt/omf/cu;->c(Landroid/content/Context;Lcom/byazt/nl/uj;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/byazt/omf/cu;->c(Lcom/byazt/nl/uj;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->gu:Lcom/byazt/tjs/uj;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/byazt/tjs/uj;->uj()V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->yv:Lcom/byazt/omf/d;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/byazt/omf/d;->eo()V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/byazt/wz/c;->ve()V

    .line 73
    .line 74
    .line 75
    :cond_5
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->or:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lcom/byazt/pop/ve;

    .line 108
    .line 109
    invoke-interface {v2}, Lcom/byazt/pop/ve;->ve()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_7
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->or:Ljava/util/Map;

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    .line 119
    .line 120
    if-eqz v1, :cond_8

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/byazt/ddx/a;->a()V

    .line 123
    .line 124
    .line 125
    :cond_8
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->nb:Lcom/byazt/dn/UgenBanner;

    .line 126
    .line 127
    if-eqz v1, :cond_9

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/byazt/dn/UgenBanner;->c()V

    .line 130
    .line 131
    .line 132
    :cond_9
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 133
    .line 134
    if-nez v1, :cond_a

    .line 135
    .line 136
    return-void

    .line 137
    :cond_a
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/4 v2, 0x0

    .line 142
    if-eqz v1, :cond_b

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lcom/byazt/ete/nu;->c(Z)V

    .line 145
    .line 146
    .line 147
    :cond_b
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->hs()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_f

    .line 154
    .line 155
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->lz()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ltz v1, :cond_f

    .line 162
    .line 163
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-class v3, Lcom/byazt/ocd/tt;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Lcom/byazt/ocd/tt;

    .line 176
    .line 177
    if-eqz v1, :cond_f

    .line 178
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v3

    .line 183
    iget-wide v5, p0, Lcom/byazt/cty/BaseLandingPageActivity;->aw:J

    .line 184
    .line 185
    sub-long/2addr v3, v5

    .line 186
    iget-object v5, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/byazt/ete/ic;->lz()I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    int-to-long v5, v5

    .line 193
    const-wide/16 v7, 0x3e8

    .line 194
    .line 195
    mul-long v5, v5, v7

    .line 196
    .line 197
    cmp-long v7, v3, v5

    .line 198
    .line 199
    if-ltz v7, :cond_c

    .line 200
    .line 201
    const/4 v2, 0x1

    .line 202
    :cond_c
    if-eqz v2, :cond_d

    .line 203
    .line 204
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 205
    .line 206
    const/4 v4, 0x4

    .line 207
    invoke-static {v3, v4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;I)V

    .line 208
    .line 209
    .line 210
    :cond_d
    if-eqz v2, :cond_e

    .line 211
    .line 212
    const/4 v2, 0x5

    .line 213
    goto :goto_2

    .line 214
    :cond_e
    const/4 v2, 0x6

    .line 215
    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/byazt/ocd/tt;->c(ILjava/util/Map;)V

    .line 216
    .line 217
    .line 218
    :cond_f
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->my:Lcom/byazt/wg/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/wg/tt;->c(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->yv:Lcom/byazt/omf/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/omf/d;->d()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->or:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rl:Lcom/byazt/jwd/uj;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/jwd/uj;->ve()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-wide v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->aw:J

    .line 9
    .line 10
    const-wide/high16 v3, -0x8000000000000000L

    .line 11
    .line 12
    cmp-long v5, v1, v3

    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->aw:J

    .line 21
    .line 22
    :cond_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/byazt/qw/x;->c(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->yv:Lcom/byazt/omf/d;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/omf/d;->h()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->yv:Lcom/byazt/omf/d;

    .line 39
    .line 40
    new-instance v1, Lcom/byazt/cty/BaseLandingPageActivity$10;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/byazt/cty/BaseLandingPageActivity$10;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView$tt;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/byazt/wz/c;->tt()V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->or:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/byazt/pop/ve;

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/byazt/pop/ve;->tt()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/byazt/ddx/a;->uj()V

    .line 98
    .line 99
    .line 100
    :cond_6
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rl:Lcom/byazt/jwd/uj;

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/byazt/jwd/uj;->tt(Z)V

    .line 106
    .line 107
    .line 108
    :cond_7
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->i()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 112
    .line 113
    if-eqz v0, :cond_a

    .line 114
    .line 115
    invoke-direct {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->z()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_a

    .line 120
    .line 121
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->nb:Lcom/byazt/dn/UgenBanner;

    .line 122
    .line 123
    if-nez v0, :cond_8

    .line 124
    .line 125
    new-instance v0, Lcom/byazt/dn/UgenBanner;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Lcom/byazt/dn/UgenBanner;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->nb:Lcom/byazt/dn/UgenBanner;

    .line 131
    .line 132
    :cond_8
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->nb:Lcom/byazt/dn/UgenBanner;

    .line 133
    .line 134
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 135
    .line 136
    const/4 v3, -0x1

    .line 137
    const/4 v4, -0x2

    .line 138
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    iput-boolean v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->pf:Z

    .line 145
    .line 146
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_9

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    goto :goto_1

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :goto_1
    move-object v5, v0

    .line 166
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->nb:Lcom/byazt/dn/UgenBanner;

    .line 167
    .line 168
    const/high16 v1, 0x42480000    # 50.0f

    .line 169
    .line 170
    invoke-static {p0, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/byazt/dn/UgenBanner;->setTopMargin(I)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->nb:Lcom/byazt/dn/UgenBanner;

    .line 178
    .line 179
    invoke-direct {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->yp()Lcom/byazt/seg/c;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 184
    .line 185
    new-instance v4, Lcom/byazt/hkv/tt;

    .line 186
    .line 187
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 188
    .line 189
    iget-object v6, p0, Lcom/byazt/cty/BaseLandingPageActivity;->ve:Ljava/lang/String;

    .line 190
    .line 191
    iget v7, p0, Lcom/byazt/cty/BaseLandingPageActivity;->uj:I

    .line 192
    .line 193
    invoke-direct {v4, p0, v0, v6, v7}, Lcom/byazt/hkv/tt;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    const-string v7, "\u7acb\u5373\u6253\u5f00"

    .line 203
    .line 204
    const/4 v8, 0x1

    .line 205
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/dn/UgenBanner;->c(Lcom/byazt/seg/c;Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    .line 207
    .line 208
    :cond_a
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/byazt/aas/nb;->zm(Lcom/byazt/ete/ic;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, p0, v1, v2}, Lcom/byazt/qqc/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->rh:Lcom/byazt/ddx/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/ddx/a;->n()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, p0, v1, v2}, Lcom/byazt/qqc/ve;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public abstract sp()Landroid/view/View;
.end method

.method public tt()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->i:Lcom/byazt/lbn/TTViewStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/byazt/lbn/TTViewStub;->setVisibility(I)V

    :cond_0
    const v0, 0x7e06ff11

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->md:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/cty/BaseLandingPageActivity;->tt(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->ve:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->uj:I

    invoke-static {v0}, Lcom/byazt/aas/nb;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->ve:Ljava/lang/String;

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v2, v3, v0}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/byazt/wz/c;->c(Landroid/app/Activity;Z)V

    .line 10
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/wz/c;->c(I)V

    .line 11
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/byazt/wz/c;->a(Z)V

    .line 12
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    iget-boolean v3, p0, Lcom/byazt/cty/BaseLandingPageActivity;->bx:Z

    invoke-interface {v0, v3}, Lcom/byazt/pop/ve;->uj(Z)V

    .line 13
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    iget-object v3, p0, Lcom/byazt/cty/BaseLandingPageActivity;->cu:Lcom/byazt/pop/c;

    invoke-virtual {v0, v3, v1}, Lcom/byazt/wz/c;->c(Lcom/byazt/pop/c;Z)V

    .line 14
    new-instance v0, Lcom/byazt/hkv/c;

    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    const-string v4, "embeded_ad_landingpage"

    iget v5, p0, Lcom/byazt/cty/BaseLandingPageActivity;->uj:I

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 15
    const-class v1, Lcom/byazt/nat/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v3

    check-cast v3, Lcom/byazt/nat/c;

    invoke-virtual {v3, v2}, Lcom/byazt/nat/c;->ve(Z)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v3

    check-cast v3, Lcom/byazt/nat/c;

    invoke-virtual {v3, v2}, Lcom/byazt/nat/c;->c(Z)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v1

    check-cast v1, Lcom/byazt/nat/c;

    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->d:Lcom/byazt/wz/c;

    invoke-virtual {v1, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 18
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->md:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->md:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->eo:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->eo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    return-void
.end method

.method public tt(Lcom/byazt/dyf/tt$c;)V
    .locals 7

    .line 23
    :try_start_0
    new-instance v6, Lcom/byazt/dyf/tt;

    iget-object v1, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/cty/BaseLandingPageActivity;->ve:Ljava/lang/String;

    const/4 v4, 0x1

    .line 24
    invoke-static {}, Lcom/byazt/xky/tt;->c()Lcom/byazt/dyf/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/byazt/dyf/tt;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V

    iput-object v6, p0, Lcom/byazt/cty/BaseLandingPageActivity;->zm:Lcom/byazt/dyf/tt;

    .line 25
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0, v1, v6}, Lcom/byazt/tl/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dyf/tt;)V

    .line 26
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->zm:Lcom/byazt/dyf/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/dyf/tt;->setDislikeInteractionCallback(Lcom/byazt/dyf/tt$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->md:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 30
    new-instance v1, Lcom/byazt/cty/BaseLandingPageActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/byazt/cty/BaseLandingPageActivity$9;-><init>(Lcom/byazt/cty/BaseLandingPageActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    const-string v0, "detail_skip"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/byazt/cty/BaseLandingPageActivity;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/byazt/cty/BaseThemeActivity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    invoke-static {v0}, Lcom/byazt/aas/pf;->c(Lcom/byazt/el/SSWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->my:Lcom/byazt/wg/tt;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/byazt/wg/tt;->c(I)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/cty/BaseLandingPageActivity;->onBackPressed()V

    return-void
.end method

.method public x()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/ic;->uj(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/ete/qp;->c(Lcom/byazt/ete/ic;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->qy:Lcom/byazt/el/SSWebView;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/aas/pf;->c(Lcom/byazt/el/SSWebView;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity;->my:Lcom/byazt/wg/tt;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/byazt/cty/BaseLandingPageActivity;->n:Landroid/app/Activity;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/byazt/wg/tt;->tt(Landroid/app/Activity;Lcom/byazt/ete/ic;)Z

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 43
    return v0
.end method
