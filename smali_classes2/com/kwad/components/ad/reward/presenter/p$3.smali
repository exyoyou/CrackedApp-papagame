.class final Lcom/kwad/components/ad/reward/presenter/p$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/webview/KsAdWebView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/presenter/p;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xe:Lcom/kwad/components/ad/reward/presenter/p;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/reward/presenter/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/p$3;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageFinished()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p$3;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/p$3;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/kwad/components/ad/reward/g;->sA:Lcom/kwad/components/core/playable/a;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/kwad/components/core/playable/a;->getLoadTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const-wide/16 v3, -0x1

    .line 22
    .line 23
    cmp-long v5, v1, v3

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/kwad/components/ad/reward/presenter/p$3;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 31
    .line 32
    iget-object v4, v3, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 33
    .line 34
    iget-boolean v5, v3, Lcom/kwad/components/ad/reward/g;->sO:Z

    .line 35
    .line 36
    const-string v6, "playable"

    .line 37
    .line 38
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bX(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v8

    .line 46
    sub-long/2addr v8, v1

    .line 47
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/reward/monitor/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onPageStart()V
    .locals 0

    return-void
.end method

.method public final onReceivedHttpError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/p$3;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    iget-boolean v1, p1, Lcom/kwad/components/ad/reward/g;->sO:Z

    .line 8
    .line 9
    const-string v2, "playable"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->bX(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    iget-object p3, p0, Lcom/kwad/components/ad/reward/presenter/p$3;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 24
    .line 25
    iget-object p3, p3, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 26
    .line 27
    iget-object p3, p3, Lcom/kwad/components/ad/reward/g;->sA:Lcom/kwad/components/core/playable/a;

    .line 28
    .line 29
    invoke-virtual {p3}, Lcom/kwad/components/core/playable/a;->getLoadTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    sub-long v4, p1, v4

    .line 34
    .line 35
    const/4 v6, 0x2

    .line 36
    invoke-static/range {v0 .. v6}, Lcom/kwad/components/ad/reward/monitor/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLjava/lang/String;Ljava/lang/String;JI)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
