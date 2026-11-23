.class Lcom/xinzhu/overmind/client/service/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/service/a;->b(Landroid/content/Intent;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/os/IBinder;

.field final synthetic c:Landroid/content/Intent$FilterComparison;

.field final synthetic d:Lcom/xinzhu/overmind/client/service/a;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/service/a;Landroid/os/IBinder;Landroid/content/Intent$FilterComparison;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/service/a$a;->d:Lcom/xinzhu/overmind/client/service/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/client/service/a$a;->b:Landroid/os/IBinder;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/xinzhu/overmind/client/service/a$a;->c:Landroid/content/Intent$FilterComparison;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a$a;->b:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/xinzhu/overmind/client/service/a$a;->d:Lcom/xinzhu/overmind/client/service/a;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/xinzhu/overmind/client/service/a;->a(Lcom/xinzhu/overmind/client/service/a;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/xinzhu/overmind/client/service/a$a;->c:Landroid/content/Intent$FilterComparison;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method
