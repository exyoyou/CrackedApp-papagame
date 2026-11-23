.class public Lcom/byazt/vm/qy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vm/zm$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0x7b6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vm/qy;->ve(Landroid/content/Context;)Lcom/byazt/vm/nu$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/vm/zm$tt<",
        "Lcom/byazt/fp/n;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/vm/qy;


# direct methods
.method public constructor <init>(Lcom/byazt/vm/qy;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vm/qy$2;->tt:Lcom/byazt/vm/qy;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/vm/qy$2;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/os/IBinder;)Lcom/byazt/fp/n;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/byazt/fp/n$c;->c(Landroid/os/IBinder;)Lcom/byazt/fp/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/byazt/fp/n;

    invoke-virtual {p0, p1}, Lcom/byazt/vm/qy$2;->c(Lcom/byazt/fp/n;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/fp/n;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/byazt/vm/qy$2;->tt:Lcom/byazt/vm/qy;

    iget-object v2, p0, Lcom/byazt/vm/qy$2;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/byazt/vm/qy;->c(Lcom/byazt/vm/qy;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/vm/qy$2;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OUID"

    invoke-interface {p1, v0, v1, v2}, Lcom/byazt/fp/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public synthetic tt(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/vm/qy$2;->c(Landroid/os/IBinder;)Lcom/byazt/fp/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
