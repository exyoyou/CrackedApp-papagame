.class Lcom/join/mgps/rpc/n$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/rpc/n;->f(Lcom/join/mgps/dto/PayCenterOrderRequest;Lcom/join/android/app/common/http/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/join/mgps/dto/PayCenterOrderRequest;",
        "Ljava/lang/Object;",
        "Lcom/join/mgps/dto/PayCenterOrderResponse;",
        ">;"
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
    iput-object p1, p0, Lcom/join/mgps/rpc/n$a;->a:Lcom/join/android/app/common/http/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/join/mgps/dto/PayCenterOrderRequest;)Lcom/join/mgps/dto/PayCenterOrderResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requests"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    invoke-static {p1}, Lcom/join/mgps/rpc/n;->d(Lcom/join/mgps/dto/PayCenterOrderRequest;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1, v0}, Lcom/join/mgps/Util/y0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/join/mgps/dto/PayCenterOrderResponse;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v1, v0, p1}, Lcom/join/mgps/dto/PayCenterOrderResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method protected b(Lcom/join/mgps/dto/PayCenterOrderResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/rpc/n$a;->a:Lcom/join/android/app/common/http/b;

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
    check-cast p1, [Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/n$a;->a([Lcom/join/mgps/dto/PayCenterOrderRequest;)Lcom/join/mgps/dto/PayCenterOrderResponse;

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
    check-cast p1, Lcom/join/mgps/dto/PayCenterOrderResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/n$a;->b(Lcom/join/mgps/dto/PayCenterOrderResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
