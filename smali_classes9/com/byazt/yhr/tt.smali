.class public Lcom/byazt/yhr/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/lz/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28d,
        0xd
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/je/c;

.field public tt:Lcom/byazt/lz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/je/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCustomLocalConfig()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->a()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHttps()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLocalExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->uj()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMediationConfigUserInfoForSegment()Lcom/byazt/lz/sp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->tt:Lcom/byazt/lz/sp;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/je/c;->ve()Lcom/byazt/je/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v1, Lcom/byazt/yhr/ve;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/byazt/yhr/ve;-><init>(Lcom/byazt/je/ve;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/yhr/tt;->tt:Lcom/byazt/lz/sp;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->tt:Lcom/byazt/lz/sp;

    .line 23
    .line 24
    return-object v0
.end method

.method public getOpensdkVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->sp()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPublisherDid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isOpenAdnTest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->tt()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSupportH265()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSupportSplashZoomout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->da()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isWxInstalled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->x()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public wxAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/tt;->c:Lcom/byazt/je/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/c;->sl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
