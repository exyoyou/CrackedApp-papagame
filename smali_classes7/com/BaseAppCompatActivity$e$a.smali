.class Lcom/BaseAppCompatActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity$e;->onClickCancle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/BaseAppCompatActivity$e;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$e$a;->b:Lcom/BaseAppCompatActivity$e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/BaseAppCompatActivity$e$a;->b:Lcom/BaseAppCompatActivity$e;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/BaseAppCompatActivity$e;->a:Lcom/BaseAppCompatActivity$t;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/BaseAppCompatActivity$t;->b:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p1, Lcom/BaseAppCompatActivity$e;->b:Lcom/BaseAppCompatActivity;

    .line 20
    .line 21
    iput-object v0, v1, Lcom/BaseAppCompatActivity;->fialePath:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    iget-object p1, p1, Lcom/BaseAppCompatActivity$e;->b:Lcom/BaseAppCompatActivity;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/BaseAppCompatActivity;->access$100(Lcom/BaseAppCompatActivity;)Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity$e$a;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
