.class public Lcom/sigmob/sdk/downloader/core/connection/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/connection/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/Proxy;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/downloader/core/connection/c$a;)Ljava/net/Proxy;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/core/connection/c$a;->a:Ljava/net/Proxy;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/downloader/core/connection/c$a;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/core/connection/c$a;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c(Lcom/sigmob/sdk/downloader/core/connection/c$a;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/downloader/core/connection/c$a;->c:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/downloader/core/connection/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readTimeout"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/connection/c$a;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/net/Proxy;)Lcom/sigmob/sdk/downloader/core/connection/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proxy"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/connection/c$a;->a:Ljava/net/Proxy;

    return-object p0
.end method

.method public b(I)Lcom/sigmob/sdk/downloader/core/connection/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectTimeout"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/connection/c$a;->c:Ljava/lang/Integer;

    return-object p0
.end method
