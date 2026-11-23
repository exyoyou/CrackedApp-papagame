.class Lcom/xinzhu/overmind/server/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/h;->a(Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/os/IBinder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xinzhu/overmind/server/ProcessRecord;

.field final synthetic c:Landroid/os/IBinder;

.field final synthetic d:Lcom/xinzhu/overmind/server/h;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/h;Lcom/xinzhu/overmind/server/ProcessRecord;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/h$a;->d:Lcom/xinzhu/overmind/server/h;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/server/h$a;->b:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/xinzhu/overmind/server/h$a;->c:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Client Died: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/xinzhu/overmind/server/h$a;->b:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->processName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h$a;->c:Landroid/os/IBinder;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/xinzhu/overmind/server/h$a;->d:Lcom/xinzhu/overmind/server/h;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/xinzhu/overmind/server/h$a;->b:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/server/h;->m(Lcom/xinzhu/overmind/server/ProcessRecord;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
