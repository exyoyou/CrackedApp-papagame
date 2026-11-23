.class public Lorg/apache/http/impl/auth/NTLMSchemeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;
.implements Lorg/apache/http/auth/AuthSchemeProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
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


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .locals 0

    .line 1
    new-instance p1, Lorg/apache/http/impl/auth/NTLMSchemeHC4;

    .line 2
    .line 3
    invoke-direct {p1}, Lorg/apache/http/impl/auth/NTLMSchemeHC4;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 0

    .line 1
    new-instance p1, Lorg/apache/http/impl/auth/NTLMSchemeHC4;

    .line 2
    .line 3
    invoke-direct {p1}, Lorg/apache/http/impl/auth/NTLMSchemeHC4;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
