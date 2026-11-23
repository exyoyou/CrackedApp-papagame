.class public Lcom/join/mgps/service/UpdateLodingService$c;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/UpdateLodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/service/UpdateLodingService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/UpdateLodingService;)V
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
    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getService()Lcom/join/mgps/service/UpdateLodingService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDownData(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "dType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/service/UpdateLodingService;->f(Lcom/join/mgps/service/UpdateLodingService;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    .line 8
    .line 9
    invoke-static {v0, p2}, Lcom/join/mgps/service/UpdateLodingService;->b(Lcom/join/mgps/service/UpdateLodingService;I)I

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/join/mgps/service/UpdateLodingService;->i(Lcom/join/mgps/service/UpdateLodingService;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
