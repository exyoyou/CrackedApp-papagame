.class Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1$1;
.super Lio/netty/handler/ssl/ExtendedOpenSslSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1;->getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1;

.field final synthetic val$extendedOpenSslSession:Lio/netty/handler/ssl/ExtendedOpenSslSession;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1;Lio/netty/handler/ssl/OpenSslSession;Lio/netty/handler/ssl/ExtendedOpenSslSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1$1;->this$0:Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1;

    .line 2
    .line 3
    iput-object p3, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1$1;->val$extendedOpenSslSession:Lio/netty/handler/ssl/ExtendedOpenSslSession;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/ExtendedOpenSslSession;-><init>(Lio/netty/handler/ssl/OpenSslSession;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1$1;->val$extendedOpenSslSession:Lio/netty/handler/ssl/ExtendedOpenSslSession;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/handler/ssl/w;->a(Lio/netty/handler/ssl/ExtendedOpenSslSession;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    const-string v0, "TLSv1.2"

    return-object v0
.end method

.method public getRequestedServerNames()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager$1$1;->val$extendedOpenSslSession:Lio/netty/handler/ssl/ExtendedOpenSslSession;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/handler/ssl/ExtendedOpenSslSession;->getRequestedServerNames()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
