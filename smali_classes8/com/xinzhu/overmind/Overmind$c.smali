.class Lcom/xinzhu/overmind/Overmind$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/Overmind;->doAttachBaseContext(Landroid/content/Context;Lcom/xinzhu/overmind/client/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xinzhu/overmind/Overmind;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/Overmind;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind$c;->b:Lcom/xinzhu/overmind/Overmind;

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
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ":mind process dead, finish this process."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
