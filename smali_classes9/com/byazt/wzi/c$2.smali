.class public Lcom/byazt/wzi/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x678,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/wzi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wzi/c;


# direct methods
.method public constructor <init>(Lcom/byazt/wzi/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wzi/c$2;->c:Lcom/byazt/wzi/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    const-string v0, "MultiProcess"

    .line 2
    .line 3
    const-string v1, "binder died."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/wzi/c$2;->c:Lcom/byazt/wzi/c;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/wzi/c;->tt(Lcom/byazt/wzi/c;)Lcom/byazt/omf/da;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/byazt/wzi/c$2;->c:Lcom/byazt/wzi/c;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/byazt/wzi/c;->c(Lcom/byazt/wzi/c;)Landroid/os/IBinder$DeathRecipient;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/wzi/c$2;->c:Lcom/byazt/wzi/c;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Lcom/byazt/wzi/c;->c(Lcom/byazt/wzi/c;Lcom/byazt/omf/da;)Lcom/byazt/omf/da;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/wzi/c$2;->c:Lcom/byazt/wzi/c;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/wzi/c;->n(Lcom/byazt/wzi/c;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
