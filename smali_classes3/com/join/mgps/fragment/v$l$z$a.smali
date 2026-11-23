.class Lcom/join/mgps/fragment/v$l$z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v$l$z;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/v$l$z;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v$l$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v$l$z$a;->a:Lcom/join/mgps/fragment/v$l$z;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "duration"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/v$l$z$a;->a:Lcom/join/mgps/fragment/v$l$z;

    iget-object p2, p1, Lcom/join/mgps/fragment/v$l$z;->c:Lcom/join/mgps/fragment/v$l;

    iget-object p2, p2, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    iget-object p1, p1, Lcom/join/mgps/fragment/v$l$z;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/join/mgps/fragment/v;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "duration",
            "buttonBean"
        }
    .end annotation

    .line 1
    return-void
.end method
