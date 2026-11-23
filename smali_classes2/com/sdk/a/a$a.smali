.class public Lcom/sdk/a/a$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/a/a;-><init>(Landroid/content/Context;Ljava/net/URL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/net/URL;

.field public final synthetic b:Lcom/sdk/a/a;


# direct methods
.method public constructor <init>(Lcom/sdk/a/a;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/a/a$a;->b:Lcom/sdk/a/a;

    iput-object p2, p0, Lcom/sdk/a/a$a;->a:Ljava/net/URL;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    sput-object p1, Lcom/sdk/a/a;->e:Landroid/net/Network;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/sdk/a/a$a;->b:Lcom/sdk/a/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/sdk/a/a$a;->a:Ljava/net/URL;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    iput-object p1, v0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    sget-object p1, Lcom/sdk/a/a;->c:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v0, "onAvailable: "

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/sdk/a/a$a;->b:Lcom/sdk/a/a;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
