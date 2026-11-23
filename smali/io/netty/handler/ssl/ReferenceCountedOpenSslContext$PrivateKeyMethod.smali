.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/internal/tcnative/SSLPrivateKeyMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivateKeyMethod"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 5
    .line 6
    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    .line 7
    .line 8
    return-void
.end method

.method private retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Could not find a "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-class v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 23
    .line 24
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " for sslPointer "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method private static verifyResult([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/security/SignatureException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method


# virtual methods
.method public decrypt(J[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    iget-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    .line 6
    .line 7
    invoke-interface {p2, p1, p3}, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->decrypt(Ljavax/net/ssl/SSLEngine;[B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->verifyResult([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p2

    .line 17
    invoke-virtual {p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw p2
.end method

.method public sign(JI[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    iget-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    .line 6
    .line 7
    invoke-interface {p2, p1, p3, p4}, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->sign(Ljavax/net/ssl/SSLEngine;I[B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->verifyResult([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p2

    .line 17
    invoke-virtual {p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw p2
.end method
