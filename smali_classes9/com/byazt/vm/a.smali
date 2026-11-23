.class public Lcom/byazt/vm/a;
.super Lcom/byazt/vm/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/vm/ve<",
        "Lcom/byazt/fp/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "com.coolpad.deviceidsupport"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/vm/ve;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/vm/a;->c:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/vm/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/vm/a;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.coolpad.deviceidsupport"

    const-string v2, "com.coolpad.deviceidsupport.DeviceIdService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method

.method public c()Lcom/byazt/vm/zm$tt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/vm/zm$tt<",
            "Lcom/byazt/fp/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/byazt/vm/a$1;

    invoke-direct {v0, p0}, Lcom/byazt/vm/a$1;-><init>(Lcom/byazt/vm/a;)V

    return-object v0
.end method

.method public bridge synthetic tt(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/vm/ve;->tt(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public ve(Landroid/content/Context;)Lcom/byazt/vm/nu$c;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "coolos.oaid"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/byazt/vm/nu$c;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/byazt/vm/nu$c;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, v1, Lcom/byazt/vm/nu$c;->tt:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    return-object v1

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/vm/ve;->ve(Landroid/content/Context;)Lcom/byazt/vm/nu$c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method
