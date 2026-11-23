.class public Lcom/byazt/yhr/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/lz/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28d,
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/dj/uj;

.field public tt:Lcom/byazt/lz/uj;

.field public ve:Lcom/byazt/lz/da;


# direct methods
.method public constructor <init>(Lcom/byazt/dj/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public alist()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->alist()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->getAndroidId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDevImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->getDevImei()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDevOaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->getDevOaid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->getMacAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMediationPrivacyConfig()Lcom/byazt/lz/da;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->ve:Lcom/byazt/lz/da;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->getMediationPrivacyConfig()Lcom/byazt/je/tt;

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
    new-instance v1, Lcom/byazt/yhr/uj;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/byazt/yhr/uj;-><init>(Lcom/byazt/je/tt;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/yhr/c;->ve:Lcom/byazt/lz/da;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/byazt/yhr/c;->ve:Lcom/byazt/lz/da;

    .line 23
    .line 24
    return-object v0
.end method

.method public getTTLocation()Lcom/byazt/lz/uj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->tt:Lcom/byazt/lz/uj;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->getTTLocation()Lcom/byazt/dj/ve;

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
    new-instance v1, Lcom/byazt/yhr/c$1;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lcom/byazt/yhr/c$1;-><init>(Lcom/byazt/yhr/c;Lcom/byazt/dj/ve;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/yhr/c;->tt:Lcom/byazt/lz/uj;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/byazt/yhr/c;->tt:Lcom/byazt/lz/uj;

    .line 23
    .line 24
    return-object v0
.end method

.method public isCanUseAndroidId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseAndroidId()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCanUseLocation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseLocation()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCanUseMessage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseMessage()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCanUsePermissionRecordAudio()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUsePermissionRecordAudio()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUsePhoneState()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCanUseWifiState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseWifiState()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCanUseWriteExternal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseWriteExternal()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public userPrivacyConfig()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/byazt/yhr/c;->c:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->userPrivacyConfig()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
