.class public abstract Lcom/join/mgps/ad/d;
.super Lcom/join/mgps/ad/t;
.source "SourceFile"


# static fields
.field protected static m:Z = false

.field protected static final n:J = 0x2710L


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Landroid/app/Activity;

.field protected f:Ljava/lang/String;

.field protected g:I

.field protected h:I

.field protected i:J

.field protected j:J

.field protected k:Z

.field protected l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/join/android/app/common/http/c;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    sput-boolean v0, Lcom/join/mgps/ad/d;->m:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "ctx",
            "appId",
            "posId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ad/t;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/join/mgps/ad/d;->i:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/join/mgps/ad/d;->j:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/ad/d;->k:Z

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "RewardVideo"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/join/mgps/ad/d;->b:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p4, p0, Lcom/join/mgps/ad/d;->c:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method public static h(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "num"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/MApplication;->O(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "com.emu.ad.result"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v1, "adAction"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public static i(Landroid/content/Context;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "num",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.emu.ad.result"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "adAction"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p1, "extras"

    .line 19
    .line 20
    invoke-static {p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static j(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "num",
            "gameId"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.join.android.app.mgsim.wufun.ad.result"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "adAction"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p1, "gameId"

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/d;->d(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public abstract d(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation
.end method

.method protected e()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/join/mgps/ad/d;->j:J

    .line 6
    .line 7
    return-void
.end method

.method protected f()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/ad/d;->j:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-wide v2, p0, Lcom/join/mgps/ad/d;->j:J

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    sub-long/2addr v2, v0

    .line 17
    const-wide/16 v0, 0x2710

    .line 18
    .line 19
    cmp-long v4, v2, v0

    .line 20
    .line 21
    if-lez v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/ad/d;->onWfVideoComplete()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/join/mgps/ad/d;->j:J

    .line 4
    .line 5
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "eventName"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "gameId"

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public l(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public n(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "howTimes"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ad/d;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/ad/d;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public onWfADClick()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfADClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWfADClose()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfADClose()V

    return-void
.end method

.method public onWfADClose(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/join/mgps/ad/t;->onWfADClose(Ljava/lang/String;)V

    return-void
.end method

.method public onWfADClose(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "howTimes",
            "times"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/ad/t;->onWfADClose(Ljava/lang/String;II)V

    return-void
.end method

.method public onWfADClose(Ljava/lang/String;IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "howTimes",
            "times",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/ad/t;->onWfADClose(Ljava/lang/String;IILjava/util/Map;)V

    return-void
.end method

.method public onWfADExpose()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfADExpose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWfADLoad(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/t;->onWfADLoad(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/d;->e:Landroid/app/Activity;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/ad/d;->e:Landroid/app/Activity;

    .line 21
    .line 22
    :cond_1
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/ad/d;->e:Landroid/app/Activity;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/ad/d;->e:Landroid/app/Activity;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 37
    .line 38
    iget v3, p0, Lcom/join/mgps/ad/d;->g:I

    .line 39
    .line 40
    iget v4, p0, Lcom/join/mgps/ad/d;->h:I

    .line 41
    .line 42
    iget-object v5, p0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 43
    .line 44
    move-object v0, p0

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/ad/d;->s(Landroid/app/Activity;Ljava/lang/String;IILjava/util/Map;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public onWfADShow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfADShow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWfError(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "err",
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/ad/t;->onWfError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/join/mgps/ad/d;->m:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "onError:"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onWfInitSuccess()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfInitSuccess()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/join/mgps/ad/d;->m:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "onInitSuccess appID:["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/ad/d;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "],posID:["

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/ad/d;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "]"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onWfReward(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/t;->onWfReward(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWfVideoCached()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfVideoCached()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWfVideoComplete()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/join/mgps/ad/d;->j:J

    .line 4
    .line 5
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfVideoComplete()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/join/mgps/ad/d;->r(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public r(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId",
            "howTimes",
            "times"
        }
    .end annotation

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/ad/d;->s(Landroid/app/Activity;Ljava/lang/String;IILjava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public s(Landroid/app/Activity;Ljava/lang/String;IILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId",
            "howTimes",
            "times",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 2
    .line 3
    iput p4, p0, Lcom/join/mgps/ad/d;->h:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/ad/d;->g:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/ad/d;->e:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 p3, -0x1

    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/ad/d;->b()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/ad/d;->e:Landroid/app/Activity;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/join/mgps/ad/d;->t(Landroid/app/Activity;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    iget-wide p4, p0, Lcom/join/mgps/ad/d;->i:J

    .line 35
    .line 36
    sub-long/2addr p1, p4

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    const-wide/16 p4, 0x7d0

    .line 42
    .line 43
    cmp-long v0, p1, p4

    .line 44
    .line 45
    if-gez v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    iput-wide p1, p0, Lcom/join/mgps/ad/d;->i:J

    .line 52
    .line 53
    const-string p1, "\u89c6\u9891\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u5019..."

    .line 54
    .line 55
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    iput-wide p1, p0, Lcom/join/mgps/ad/d;->i:J

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/join/mgps/ad/d;->d(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u8054\u7f51\u91cd\u8bd5"

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p3, p2}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method protected t(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/ad/d;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
