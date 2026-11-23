.class abstract Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;
.super Lio/netty/internal/tcnative/CertificateVerifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractCertificateVerifier"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/internal/tcnative/CertificateVerifier;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 5
    .line 6
    return-void
.end method

.method private static translateToError(Ljava/lang/Throwable;)I
    .locals 2
    .annotation build Lio/netty/util/internal/SuppressJava6Requirement;
        reason = "Usage guarded by java version check"
    .end annotation

    .line 1
    invoke-static {p0}, Lio/netty/handler/ssl/a0;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget p0, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_REVOKED:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    if-eqz p0, :cond_4

    .line 15
    .line 16
    instance-of v0, p0, Ljava/security/cert/CertPathValidatorException;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Ljava/security/cert/CertPathValidatorException;

    .line 22
    .line 23
    invoke-static {v0}, Lio/netty/handler/ssl/b0;->a(Ljava/security/cert/CertPathValidatorException;)Ljava/security/cert/CertPathValidatorException$Reason;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lio/netty/handler/ssl/c0;->a()Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    sget p0, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_HAS_EXPIRED:I

    .line 34
    .line 35
    return p0

    .line 36
    :cond_1
    invoke-static {}, Lio/netty/handler/ssl/d0;->a()Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    sget p0, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_NOT_YET_VALID:I

    .line 43
    .line 44
    return p0

    .line 45
    :cond_2
    invoke-static {}, Lio/netty/handler/ssl/e0;->a()Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-ne v0, v1, :cond_3

    .line 50
    .line 51
    sget p0, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_REVOKED:I

    .line 52
    .line 53
    return p0

    .line 54
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    sget p0, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_UNSPECIFIED:I

    .line 60
    .line 61
    return p0
.end method


# virtual methods
.method public final verify(J[[BLjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget p1, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_UNSPECIFIED:I

    return p1

    .line 3
    :cond_0
    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->certificates([[B)[Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;->verify(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 5
    sget p1, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_OK:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p2

    .line 6
    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p3

    const-string p4, "verification of certificate failed"

    invoke-interface {p3, p4, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    .line 8
    instance-of p1, p2, Lio/netty/handler/ssl/OpenSslCertificateException;

    if-eqz p1, :cond_1

    .line 9
    check-cast p2, Lio/netty/handler/ssl/OpenSslCertificateException;

    invoke-virtual {p2}, Lio/netty/handler/ssl/OpenSslCertificateException;->errorCode()I

    move-result p1

    return p1

    .line 10
    :cond_1
    instance-of p1, p2, Ljava/security/cert/CertificateExpiredException;

    if-eqz p1, :cond_2

    .line 11
    sget p1, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_HAS_EXPIRED:I

    return p1

    .line 12
    :cond_2
    instance-of p1, p2, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz p1, :cond_3

    .line 13
    sget p1, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_NOT_YET_VALID:I

    return p1

    .line 14
    :cond_3
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result p1

    const/4 p3, 0x7

    if-lt p1, p3, :cond_4

    .line 15
    invoke-static {p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;->translateToError(Ljava/lang/Throwable;)I

    move-result p1

    return p1

    .line 16
    :cond_4
    sget p1, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_UNSPECIFIED:I

    return p1
.end method

.method abstract verify(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
