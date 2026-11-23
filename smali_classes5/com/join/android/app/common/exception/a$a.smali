.class Lcom/join/android/app/common/exception/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/exception/a;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/join/android/app/common/exception/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/exception/a;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ex"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/exception/a$a;->c:Lcom/join/android/app/common/exception/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/common/exception/a$a;->b:Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/common/exception/a$a;->c:Lcom/join/android/app/common/exception/a;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/android/app/common/exception/a$a;->b:Ljava/lang/Throwable;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/join/android/app/common/exception/a;->a(Lcom/join/android/app/common/exception/a;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/common/exception/a$a;->c:Lcom/join/android/app/common/exception/a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/android/app/common/exception/a$a;->b:Ljava/lang/Throwable;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/join/android/app/common/exception/a;->b(Lcom/join/android/app/common/exception/a;Ljava/lang/Throwable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
