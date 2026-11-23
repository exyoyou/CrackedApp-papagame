.class public Lcom/byazt/dk/z$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hs/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x960
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dk/z$a;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/byazt/hs/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dk/yp$c;

.field public final synthetic tt:Lcom/byazt/dk/z$a;


# direct methods
.method public constructor <init>(Lcom/byazt/dk/z$a;Lcom/byazt/dk/yp$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dk/z$a$1;->tt:Lcom/byazt/dk/z$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dk/z$a$1;->c:Lcom/byazt/dk/yp$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/z$a$1;->c:Lcom/byazt/dk/yp$c;

    iget-object v0, v0, Lcom/byazt/dk/yp$c;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/dk/z$a$1;->c:Lcom/byazt/dk/yp$c;

    iget-object v0, v0, Lcom/byazt/dk/yp$c;->tt:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/z$a$1;->c:Lcom/byazt/dk/yp$c;

    .line 2
    .line 3
    iget v0, v0, Lcom/byazt/dk/yp$c;->ve:I

    .line 4
    .line 5
    return v0
.end method

.method public uj()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/dk/z$a$1;->c:Lcom/byazt/dk/yp$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/dk/yp$c;->uj:Ljava/net/HttpURLConnection;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public ve()V
    .locals 0

    return-void
.end method
