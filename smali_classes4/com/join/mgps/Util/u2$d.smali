.class Lcom/join/mgps/Util/u2$d;
.super Lcom/papa/sim/statistic/http/b$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/u2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa/sim/statistic/http/b$p<",
        "Lcom/join/mgps/dto/PaMgrBean$Response<",
        "Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/Util/u2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/u2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$filePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/u2$d;->c:Lcom/join/mgps/Util/u2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/u2$d;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/papa/sim/statistic/http/b$p;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "e"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/u2$d;->c:Lcom/join/mgps/Util/u2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/u2;->a(Lcom/join/mgps/Util/u2;)Lcom/join/mgps/Util/u2$e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/Util/u2$d;->c:Lcom/join/mgps/Util/u2;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/u2;->a(Lcom/join/mgps/Util/u2;)Lcom/join/mgps/Util/u2$e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, -0x1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, p2, v0}, Lcom/join/mgps/Util/u2$e;->onUploadResult(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/dto/PaMgrBean$Response;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/u2$d;->f(Lcom/join/mgps/dto/PaMgrBean$Response;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lcom/join/mgps/dto/PaMgrBean$Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/PaMgrBean$Response<",
            "Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response;->getError()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->getAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->getSignature()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->getBucket()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->getUploadDir()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v0, p0, Lcom/join/mgps/Util/u2$d;->c:Lcom/join/mgps/Util/u2;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/Util/u2$d;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/u2;->c(Lcom/join/mgps/Util/u2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1, p1}, Lcom/join/mgps/Util/u2$d;->d(Lokhttp3/Request;Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
