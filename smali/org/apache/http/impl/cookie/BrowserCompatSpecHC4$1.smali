.class Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4$1;
.super Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4$1;->this$0:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    return-void
.end method
