.class Lcom/join/mgps/activity/GameMainActivity3$j;
.super Lcom/join/mgps/socket/fight/arena/a$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$j;->b:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a$b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onErrorHint(IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "operation",
            "errorType",
            "value"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/socket/fight/arena/a$b0;->onErrorHint(IILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
