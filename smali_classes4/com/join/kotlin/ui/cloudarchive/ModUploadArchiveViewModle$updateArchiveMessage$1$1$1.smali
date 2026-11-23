.class public final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001J,\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u00062\u0010\u0010\u0007\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0008H\u0016J\"\u0010\t\u001a\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "t"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/join/mgps/dto/ResponseModel;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    .line 14
    .line 15
    .line 16
    const/16 p2, 0x1f4

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    .line 19
    .line 20
    .line 21
    const-string p2, "\u5f02\u5e38"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setMessage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/16 p2, 0xc8

    .line 33
    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 43
    .line 44
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 47
    .line 48
    const/16 v1, 0xa

    .line 49
    .line 50
    invoke-direct {p2, v1, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Lcom/join/mgps/dto/ResponseModel;

    .line 58
    .line 59
    invoke-direct {p1}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    .line 60
    .line 61
    .line 62
    const/16 p2, 0x1f4

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    .line 65
    .line 66
    .line 67
    const-string p2, "\u5f02\u5e38"

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ResponseModel;->setMessage(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_0
    return-void
.end method
