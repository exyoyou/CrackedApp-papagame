.class public Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/oauth/sdkbqt/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AuthInfo"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->c:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->d:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->e:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->f:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->g:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->j:Z

    const-string v0, "AuthInfo Constructor params context is null"

    .line 12
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AuthInfo Constructor params appKey is null"

    .line 13
    invoke-static {p2, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AuthInfo Constructor params redirectUrl is null"

    .line 14
    invoke-static {p3, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AuthInfo Constructor params scope is null"

    .line 15
    invoke-static {p4, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->b:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->c:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->d:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->e:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->f:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->h:Ljava/lang/String;

    .line 22
    iput-boolean p5, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->j:Z

    if-eqz p5, :cond_0

    .line 23
    invoke-static {p1, p2}, Lcom/baidu/oauth/sdkbqt/a/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->g:Ljava/lang/String;

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1, p2}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->g:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFindViewDelegate()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->i:Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDebug(Z)Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;
    .locals 2

    .line 1
    sput-boolean p1, Lcom/baidu/oauth/sdkbqt/a/d;->b:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "packageName:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " ,packSign= "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->g:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " ,useSha1= "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->j:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    aput-object v0, p1, v1

    .line 47
    .line 48
    const-string v0, "oauthAuthInfo"

    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object p0
.end method

.method public isUseSha1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public setEnv(I)Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/c;->a(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setFindViewDelegate(Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->i:Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;

    .line 2
    .line 3
    return-void
.end method

.method public setUseSha1(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->j:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->b:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->g:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->b:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->f:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->g:Ljava/lang/String;

    .line 25
    .line 26
    :goto_0
    return-void
.end method
