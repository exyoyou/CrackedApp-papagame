.class Lcom/join/android/app/common/http/h$a;
.super Lcom/join/android/app/common/http/d$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/h;->h(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;Lcom/join/android/app/common/http/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/android/app/common/http/d$p<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/http/b;

.field final synthetic c:Lcom/join/android/app/common/http/h;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/h;Lcom/join/android/app/common/http/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/h$a;->c:Lcom/join/android/app/common/http/h;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/http/h$a;->b:Lcom/join/android/app/common/http/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/android/app/common/http/d$p;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0
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
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/android/app/common/http/h$a;->b:Lcom/join/android/app/common/http/b;

    .line 5
    .line 6
    invoke-interface {p1, p2}, Lcom/join/android/app/common/http/b;->a(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "rs"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/http/h$a;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/h$a;->b:Lcom/join/android/app/common/http/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/join/android/app/common/http/b;->onSuccess(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
