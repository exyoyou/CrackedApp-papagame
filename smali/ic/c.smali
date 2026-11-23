.class public Lic/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/c$b;,
        Lic/c$a;,
        Lic/c$c;
    }
.end annotation


# instance fields
.field public a:Lic/c$c;

.field public final b:Lic/c$a;

.field public final c:Lic/c$b;

.field public final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lic/c$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lic/c$a;-><init>(Lic/c;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lic/c;->b:Lic/c$a;

    .line 10
    .line 11
    new-instance v0, Lic/c$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lic/c$b;-><init>(Lic/c;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lic/c;->c:Lic/c$b;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lic/c;->d:Ljava/util/concurrent/CountDownLatch;

    .line 25
    .line 26
    return-void
.end method

.method public static a(Lic/c;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lic/c;->d:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "doCountDown  error:  "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "HONORDeviceIDHelper"

    .line 30
    .line 31
    invoke-static {v0, p0}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
