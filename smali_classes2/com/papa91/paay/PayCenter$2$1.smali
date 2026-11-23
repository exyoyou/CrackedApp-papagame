.class Lcom/papa91/paay/PayCenter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/paay/NetWorkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/paay/PayCenter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/paay/PayCenter$2;


# direct methods
.method constructor <init>(Lcom/papa91/paay/PayCenter$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/PayCenter$2$1;->this$0:Lcom/papa91/paay/PayCenter$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/paay/PayResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/paay/PayResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/papa91/paay/PayResponseData;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/papa91/paay/PayResponseData;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/papa91/paay/PayResponseData;->setBuy_error_message(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/papa91/paay/PayResponse;->setData(Lcom/papa91/paay/PayResponseData;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    invoke-virtual {v0, p1}, Lcom/papa91/paay/PayResponse;->setError(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa91/paay/PayCenter;->access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$300()Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$200()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/papa91/paay/PayResponse;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/papa91/paay/PayResponse;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/papa91/paay/PayCenter;->access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$300()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
