.class public Lcom/kwad/sdk/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/f/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private volatile aGi:Lokhttp3/OkHttpClient;

.field private aGm:Lokhttp3/OkHttpClient$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/kwad/sdk/l;->Gp()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/l$a;->aGm:Lokhttp3/OkHttpClient$Builder;

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/l;->Gq()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/l$a;->aGm:Lokhttp3/OkHttpClient$Builder;

    return-void
.end method


# virtual methods
.method public final bX(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/l$a;->aGi:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v0, Lcom/kwad/sdk/l$a;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/l$a;->aGi:Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/sdk/l$a;->aGm:Lokhttp3/OkHttpClient$Builder;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 22
    .line 23
    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 24
    .line 25
    .line 26
    :goto_0
    iput-object v1, p0, Lcom/kwad/sdk/l$a;->aGi:Lokhttp3/OkHttpClient;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/kwad/sdk/l$a;->aGm:Lokhttp3/OkHttpClient$Builder;

    .line 30
    .line 31
    :cond_1
    monitor-exit v0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1

    .line 36
    :cond_2
    :goto_1
    new-instance v0, Lcom/kwad/sdk/l;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/kwad/sdk/l$a;->aGi:Lokhttp3/OkHttpClient;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v0, p1, v1, v2}, Lcom/kwad/sdk/l;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;B)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method
