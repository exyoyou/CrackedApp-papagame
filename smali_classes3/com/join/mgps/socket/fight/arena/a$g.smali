.class Lcom/join/mgps/socket/fight/arena/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a;->r([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/BattleChallengeConfig;

.field final synthetic c:Lcom/join/mgps/socket/fight/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a;Lcom/join/mgps/dto/BattleChallengeConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$g;->c:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/socket/fight/arena/a$g;->b:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$g;->c:Lcom/join/mgps/socket/fight/arena/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$g;->b:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/BattleChallengeConfig;->getBattleChallengeCopper()[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$y;->onChallengeGoldSet(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$g;->c:Lcom/join/mgps/socket/fight/arena/a;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
