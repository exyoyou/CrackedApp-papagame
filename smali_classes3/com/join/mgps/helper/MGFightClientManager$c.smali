.class Lcom/join/mgps/helper/MGFightClientManager$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/MGFightClientManager;->afterApScan(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/helper/MGFightClientManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightClientManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ssid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->c:Lcom/join/mgps/helper/MGFightClientManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->c:Lcom/join/mgps/helper/MGFightClientManager;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->c:Lcom/join/mgps/helper/MGFightClientManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$c;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "12345678"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/WifiUtils;->connectToHotspot(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
