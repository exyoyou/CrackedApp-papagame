.class public final Lcom/byazt/vm/qy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vm/nu;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0x6e
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/vm/nu;

.field public tt:Lcom/byazt/vm/tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/vm/tt<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/byazt/vm/qy;-><init>(Lcom/byazt/vm/nu;)V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/vm/nu;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/byazt/vm/qy$1;

    invoke-direct {v0, p0}, Lcom/byazt/vm/qy$1;-><init>(Lcom/byazt/vm/qy;)V

    iput-object v0, p0, Lcom/byazt/vm/qy;->tt:Lcom/byazt/vm/tt;

    .line 4
    iput-object p1, p0, Lcom/byazt/vm/qy;->c:Lcom/byazt/vm/nu;

    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/yv/da;->c(Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    array-length v1, p1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 6
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    :try_start_1
    const-string v2, "SHA1"

    .line 7
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_1

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/byazt/yv/da;->c(Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/vm/qy;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/vm/qy;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public tt(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/byazt/vm/qy;->tt:Lcom/byazt/vm/tt;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    aput-object p1, v2, v0

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/byazt/vm/tt;->tt([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/vm/qy;->c:Lcom/byazt/vm/nu;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/vm/qy;->c:Lcom/byazt/vm/nu;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/byazt/vm/nu;->tt(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public ve(Landroid/content/Context;)Lcom/byazt/vm/nu$c;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/vm/qy;->c:Lcom/byazt/vm/nu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/vm/qy;->tt:Lcom/byazt/vm/tt;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/vm/tt;->tt([Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/vm/qy;->c:Lcom/byazt/vm/nu;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/byazt/vm/nu;->ve(Landroid/content/Context;)Lcom/byazt/vm/nu$c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/content/ComponentName;

    .line 35
    .line 36
    const-string v2, "com.heytap.openid"

    .line 37
    .line 38
    const-string v3, "com.heytap.openid.IdentifyService"

    .line 39
    .line 40
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/byazt/vm/zm;

    .line 52
    .line 53
    new-instance v2, Lcom/byazt/vm/qy$2;

    .line 54
    .line 55
    invoke-direct {v2, p0, p1}, Lcom/byazt/vm/qy$2;-><init>(Lcom/byazt/vm/qy;Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p1, v0, v2}, Lcom/byazt/vm/zm;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/vm/zm$tt;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/byazt/vm/zm;->c()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/String;

    .line 66
    .line 67
    new-instance v0, Lcom/byazt/vm/nu$c;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/byazt/vm/nu$c;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, v0, Lcom/byazt/vm/nu$c;->tt:Ljava/lang/String;

    .line 73
    .line 74
    return-object v0
.end method
