.class Lcom/join/mgps/rpc/n$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/rpc/n;->a(Lcom/join/mgps/dto/PayGameDataRequest;Lcom/join/android/app/common/http/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/join/mgps/dto/PayGameDataRequest;",
        "Lcom/join/mgps/dto/CommentResponse<",
        "Lcom/join/mgps/dto/PaygameCheckResponse;",
        ">;",
        "Lcom/join/mgps/dto/CommentResponse<",
        "Lcom/join/mgps/dto/PaygameCheckResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/b;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/rpc/n$c;->a:Lcom/join/android/app/common/http/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/join/mgps/dto/PayGameDataRequest;)Lcom/join/mgps/dto/CommentResponse;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/join/mgps/dto/PayGameDataRequest;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/PaygameCheckResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/join/mgps/rpc/h;->y:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, "/payment/buy"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDataRequest;->getArgsCheck()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v1, v0, p1}, Lcom/join/mgps/Util/y0;->b(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/join/mgps/rpc/n$c$a;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/join/mgps/rpc/n$c$a;-><init>(Lcom/join/mgps/rpc/n$c;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/join/mgps/dto/CommentResponse;

    .line 45
    .line 46
    return-object p1
.end method

.method protected b(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 1
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
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/PaygameCheckResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/rpc/n$c;->a:Lcom/join/android/app/common/http/b;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/join/android/app/common/http/b;->onSuccess(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "requests"
        }
    .end annotation

    .line 1
    check-cast p1, [Lcom/join/mgps/dto/PayGameDataRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/n$c;->a([Lcom/join/mgps/dto/PayGameDataRequest;)Lcom/join/mgps/dto/CommentResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
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
    check-cast p1, Lcom/join/mgps/dto/CommentResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/n$c;->b(Lcom/join/mgps/dto/CommentResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
