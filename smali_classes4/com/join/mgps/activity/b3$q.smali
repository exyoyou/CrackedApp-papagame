.class Lcom/join/mgps/activity/b3$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b3;->q1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field final synthetic b:Lcom/join/mgps/activity/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$modleFourBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/b3$q;->b:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/b3$q;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/b3$q;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-object v0
.end method
