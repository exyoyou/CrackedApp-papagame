.class public abstract Lcom/byazt/wt/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x61c,
        0x36
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Ljavax/net/ssl/X509TrustManager;)Lcom/byazt/wt/ve;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xb/n;->tt()Lcom/byazt/xb/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/xb/n;->c(Ljavax/net/ssl/X509TrustManager;)Lcom/byazt/wt/ve;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
