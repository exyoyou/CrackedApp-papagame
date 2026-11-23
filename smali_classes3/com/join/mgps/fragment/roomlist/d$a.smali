.class Lcom/join/mgps/fragment/roomlist/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/roomlist/d;->F0(Lcom/papa91/battle/protocol/SimpleRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa91/battle/protocol/SimpleRoom;

.field final synthetic c:Lcom/join/mgps/fragment/roomlist/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/d;Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$simpleRoom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/d$a;->c:Lcom/join/mgps/fragment/roomlist/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/roomlist/d$a;->b:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/d$a;->c:Lcom/join/mgps/fragment/roomlist/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/d$a;->b:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/roomlist/d;->X0(Lcom/join/mgps/fragment/roomlist/d;Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
