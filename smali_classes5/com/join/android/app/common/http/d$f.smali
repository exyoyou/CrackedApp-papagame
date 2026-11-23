.class Lcom/join/android/app/common/http/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/d;->T(Lokhttp3/Request;Ljava/lang/Exception;Lcom/join/android/app/common/http/d$p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/http/d$p;

.field final synthetic c:Lokhttp3/Request;

.field final synthetic d:Ljava/lang/Exception;

.field final synthetic e:Lcom/join/android/app/common/http/d;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$request",
            "val$e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$f;->e:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/http/d$f;->b:Lcom/join/android/app/common/http/d$p;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/android/app/common/http/d$f;->c:Lokhttp3/Request;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/android/app/common/http/d$f;->d:Ljava/lang/Exception;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$f;->b:Lcom/join/android/app/common/http/d$p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/http/d$f;->c:Lokhttp3/Request;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/android/app/common/http/d$f;->d:Ljava/lang/Exception;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/http/d$p;->d(Lokhttp3/Request;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/common/http/d$f;->b:Lcom/join/android/app/common/http/d$p;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/android/app/common/http/d$p;->b()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
