.class Lcom/join/android/app/common/http/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/d;->U(Ljava/lang/Object;Lcom/join/android/app/common/http/d$p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/http/d$p;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/join/android/app/common/http/d;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$g;->d:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/http/d$g;->b:Lcom/join/android/app/common/http/d$p;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/android/app/common/http/d$g;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$g;->b:Lcom/join/android/app/common/http/d$p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/http/d$g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/http/d$p;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/android/app/common/http/d$g;->b:Lcom/join/android/app/common/http/d$p;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/android/app/common/http/d$p;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
