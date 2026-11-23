.class Lcom/join/mgps/activity/t8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/t8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/t8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/t8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/t8$a;->b:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/t8$a;->b:Lcom/join/mgps/activity/t8;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->O(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/t8$a;->b:Lcom/join/mgps/activity/t8;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->O(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeCloudActiveBean;->endAll()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/t8$a;->b:Lcom/join/mgps/activity/t8;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->P(Lcom/join/mgps/activity/t8;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/t8$a;->b:Lcom/join/mgps/activity/t8;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->O(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeCloudActiveBean;->calcTime()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/t8$a;->b:Lcom/join/mgps/activity/t8;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/mgps/activity/t8;->W(Lcom/join/mgps/activity/t8;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return p1
.end method
