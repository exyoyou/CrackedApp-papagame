.class Lcom/join/mgps/helper/MGFightClientManager$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/MGFightClientManager;->afterApScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/helper/MGFightClientManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightClientManager;)V
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
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->b:Lcom/join/mgps/helper/MGFightClientManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->b:Lcom/join/mgps/helper/MGFightClientManager;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->b:Lcom/join/mgps/helper/MGFightClientManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->b:Lcom/join/mgps/helper/MGFightClientManager;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1300(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "12345678"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/WifiUtils;->connectToHotspot(Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$b;->b:Lcom/join/mgps/helper/MGFightClientManager;

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iput-wide v1, v0, Lcom/join/mgps/helper/MGFightClientManager;->lasConnectToHostspot:J

    .line 40
    .line 41
    return-void
.end method
