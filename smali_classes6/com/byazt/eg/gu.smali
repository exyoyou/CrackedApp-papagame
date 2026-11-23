.class public Lcom/byazt/eg/gu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x11
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/eg/gu$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/gr;",
            ">;"
        }
    .end annotation
.end field

.field public static final tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/sl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/sl;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final da:Ljava/net/ProxySelector;

.field public final gr:Z

.field public final gt:Lcom/byazt/eg/tt;

.field public final gu:Z

.field public final h:I

.field public final i:Lcom/byazt/eg/m$c;

.field public final m:Lcom/byazt/wt/ve;

.field public final md:I

.field public final my:Lcom/byazt/eg/tt;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/gr;",
            ">;"
        }
    .end annotation
.end field

.field public final nu:Ljavax/net/ssl/HostnameVerifier;

.field public final p:I

.field public final qy:Lcom/byazt/eg/z;

.field public final rh:Lcom/byazt/eg/sp;

.field public final rl:Lcom/byazt/eg/da;

.field public final sl:Lcom/byazt/eg/u;

.field public final sp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/gt;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/byazt/eg/ve;

.field public final u:Lcom/byazt/umr/a;

.field public final uj:Ljava/net/Proxy;

.field public final ve:Lcom/byazt/eg/yp;

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/gt;",
            ">;"
        }
    .end annotation
.end field

.field public final yp:Ljavax/net/SocketFactory;

.field public final yv:I

.field public final z:Ljavax/net/ssl/SSLSocketFactory;

.field public final zm:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lcom/byazt/eg/gr;

    .line 3
    .line 4
    sget-object v2, Lcom/byazt/eg/gr;->uj:Lcom/byazt/eg/gr;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    sget-object v2, Lcom/byazt/eg/gr;->tt:Lcom/byazt/eg/gr;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v2, v1, v4

    .line 13
    .line 14
    invoke-static {v1}, Lcom/byazt/kh/ve;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/byazt/eg/gu;->c:Ljava/util/List;

    .line 19
    .line 20
    new-array v0, v0, [Lcom/byazt/eg/sl;

    .line 21
    .line 22
    sget-object v1, Lcom/byazt/eg/sl;->c:Lcom/byazt/eg/sl;

    .line 23
    .line 24
    aput-object v1, v0, v3

    .line 25
    .line 26
    sget-object v1, Lcom/byazt/eg/sl;->ve:Lcom/byazt/eg/sl;

    .line 27
    .line 28
    aput-object v1, v0, v4

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/kh/ve;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/byazt/eg/gu;->tt:Ljava/util/List;

    .line 35
    .line 36
    new-instance v0, Lcom/byazt/eg/gu$1;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/byazt/eg/gu$1;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/eg/gu$c;

    invoke-direct {v0}, Lcom/byazt/eg/gu$c;-><init>()V

    invoke-direct {p0, v0}, Lcom/byazt/eg/gu;-><init>(Lcom/byazt/eg/gu$c;)V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/eg/gu$c;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->c:Lcom/byazt/eg/yp;

    iput-object v0, p0, Lcom/byazt/eg/gu;->ve:Lcom/byazt/eg/yp;

    .line 4
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->tt:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/byazt/eg/gu;->uj:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->ve:Ljava/util/List;

    iput-object v0, p0, Lcom/byazt/eg/gu;->n:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->uj:Ljava/util/List;

    iput-object v0, p0, Lcom/byazt/eg/gu;->a:Ljava/util/List;

    .line 7
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->n:Ljava/util/List;

    invoke-static {v1}, Lcom/byazt/kh/ve;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/eg/gu;->sp:Ljava/util/List;

    .line 8
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/byazt/kh/ve;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/eg/gu;->x:Ljava/util/List;

    .line 9
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->sp:Lcom/byazt/eg/m$c;

    iput-object v1, p0, Lcom/byazt/eg/gu;->i:Lcom/byazt/eg/m$c;

    .line 10
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->x:Ljava/net/ProxySelector;

    iput-object v1, p0, Lcom/byazt/eg/gu;->da:Ljava/net/ProxySelector;

    .line 11
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->i:Lcom/byazt/eg/u;

    iput-object v1, p0, Lcom/byazt/eg/gu;->sl:Lcom/byazt/eg/u;

    .line 12
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->da:Lcom/byazt/eg/ve;

    iput-object v1, p0, Lcom/byazt/eg/gu;->t:Lcom/byazt/eg/ve;

    .line 13
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->sl:Lcom/byazt/umr/a;

    iput-object v1, p0, Lcom/byazt/eg/gu;->u:Lcom/byazt/umr/a;

    .line 14
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->t:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lcom/byazt/eg/gu;->yp:Ljavax/net/SocketFactory;

    .line 15
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->h:Ljava/util/Set;

    iput-object v1, p0, Lcom/byazt/eg/gu;->d:Ljava/util/Set;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/eg/sl;

    if-nez v2, :cond_1

    .line 17
    invoke-virtual {v3}, Lcom/byazt/eg/sl;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->u:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    invoke-direct {p0}, Lcom/byazt/eg/gu;->zm()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Lcom/byazt/eg/gu;->c(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/eg/gu;->z:Ljavax/net/ssl/SSLSocketFactory;

    .line 21
    invoke-static {v0}, Lcom/byazt/wt/ve;->c(Ljavax/net/ssl/X509TrustManager;)Lcom/byazt/wt/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/eg/gu;->m:Lcom/byazt/wt/ve;

    goto :goto_2

    .line 22
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/byazt/eg/gu;->z:Ljavax/net/ssl/SSLSocketFactory;

    .line 23
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->yp:Lcom/byazt/wt/ve;

    iput-object v0, p0, Lcom/byazt/eg/gu;->m:Lcom/byazt/wt/ve;

    .line 24
    :goto_2
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->z:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/byazt/eg/gu;->nu:Ljavax/net/ssl/HostnameVerifier;

    .line 25
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->m:Lcom/byazt/eg/sp;

    iget-object v1, p0, Lcom/byazt/eg/gu;->m:Lcom/byazt/wt/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/eg/sp;->c(Lcom/byazt/wt/ve;)Lcom/byazt/eg/sp;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/eg/gu;->rh:Lcom/byazt/eg/sp;

    .line 26
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->nu:Lcom/byazt/eg/tt;

    iput-object v0, p0, Lcom/byazt/eg/gu;->my:Lcom/byazt/eg/tt;

    .line 27
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->rh:Lcom/byazt/eg/tt;

    iput-object v0, p0, Lcom/byazt/eg/gu;->gt:Lcom/byazt/eg/tt;

    .line 28
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->my:Lcom/byazt/eg/da;

    iput-object v0, p0, Lcom/byazt/eg/gu;->rl:Lcom/byazt/eg/da;

    if-eqz v0, :cond_5

    .line 29
    iget-object v1, p1, Lcom/byazt/eg/gu$c;->md:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/byazt/eg/da;->c(Landroid/os/Bundle;)V

    .line 30
    :cond_5
    iget-object v0, p1, Lcom/byazt/eg/gu$c;->gt:Lcom/byazt/eg/z;

    iput-object v0, p0, Lcom/byazt/eg/gu;->qy:Lcom/byazt/eg/z;

    .line 31
    iget-boolean v0, p1, Lcom/byazt/eg/gu$c;->rl:Z

    iput-boolean v0, p0, Lcom/byazt/eg/gu;->gu:Z

    .line 32
    iget-boolean v0, p1, Lcom/byazt/eg/gu$c;->qy:Z

    iput-boolean v0, p0, Lcom/byazt/eg/gu;->gr:Z

    .line 33
    iget-boolean v0, p1, Lcom/byazt/eg/gu$c;->gu:Z

    iput-boolean v0, p0, Lcom/byazt/eg/gu;->zm:Z

    .line 34
    iget v0, p1, Lcom/byazt/eg/gu$c;->gr:I

    iput v0, p0, Lcom/byazt/eg/gu;->yv:I

    .line 35
    iget v0, p1, Lcom/byazt/eg/gu$c;->zm:I

    iput v0, p0, Lcom/byazt/eg/gu;->p:I

    .line 36
    iget v0, p1, Lcom/byazt/eg/gu$c;->yv:I

    iput v0, p0, Lcom/byazt/eg/gu;->md:I

    .line 37
    iget p1, p1, Lcom/byazt/eg/gu$c;->p:I

    iput p1, p0, Lcom/byazt/eg/gu;->h:I

    .line 38
    iget-object p1, p0, Lcom/byazt/eg/gu;->sp:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 39
    iget-object p1, p0, Lcom/byazt/eg/gu;->x:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 40
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null network interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/eg/gu;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/eg/gu;->sp:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    .line 1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "No System TLS"

    .line 4
    invoke-static {v0, p1}, Lcom/byazt/kh/ve;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private zm()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v1, v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aget-object v1, v0, v1

    .line 23
    .line 24
    instance-of v2, v1, Ljavax/net/ssl/X509TrustManager;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Unexpected default trust managers:"

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "No System TLS"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lcom/byazt/kh/ve;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    throw v0
.end method


# virtual methods
.method public a()Lcom/byazt/eg/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->sl:Lcom/byazt/eg/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/byazt/eg/gu;->yv:I

    return v0
.end method

.method public c(Lcom/byazt/eg/yv;)Lcom/byazt/eg/n;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lcom/byazt/eg/zm;->c(Lcom/byazt/eg/gu;Lcom/byazt/eg/yv;Z)Lcom/byazt/eg/zm;

    move-result-object p1

    return-object p1
.end method

.method public da()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->z:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public gr()Lcom/byazt/eg/m$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->i:Lcom/byazt/eg/m$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public gt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/eg/gr;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->n:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public gu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/eg/gt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->x:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->yp:Ljavax/net/SocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eg/gu;->gu:Z

    .line 2
    .line 3
    return v0
.end method

.method public my()Lcom/byazt/eg/yp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->ve:Lcom/byazt/eg/yp;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->da:Ljava/net/ProxySelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public nu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eg/gu;->gr:Z

    .line 2
    .line 3
    return v0
.end method

.method public qy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/eg/gt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->sp:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public rh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eg/gu;->zm:Z

    .line 2
    .line 3
    return v0
.end method

.method public rl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/eg/sl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->nu:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/umr/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->t:Lcom/byazt/eg/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/eg/ve;->c:Lcom/byazt/umr/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/eg/gu;->u:Lcom/byazt/umr/a;

    .line 9
    .line 10
    return-object v0
.end method

.method public t()Lcom/byazt/eg/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->rh:Lcom/byazt/eg/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eg/gu;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public u()Lcom/byazt/eg/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->gt:Lcom/byazt/eg/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->uj:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eg/gu;->md:I

    .line 2
    .line 3
    return v0
.end method

.method public x()Lcom/byazt/eg/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->qy:Lcom/byazt/eg/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public yp()Lcom/byazt/eg/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->my:Lcom/byazt/eg/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Lcom/byazt/eg/da;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu;->rl:Lcom/byazt/eg/da;

    .line 2
    .line 3
    return-object v0
.end method
