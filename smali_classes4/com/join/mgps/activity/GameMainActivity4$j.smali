.class Lcom/join/mgps/activity/GameMainActivity4$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/e2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity4;->ivChoose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity4;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity4;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$j;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameMainActivity4$j;->a:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$j;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    check-cast v0, Lcom/join/mgps/fragment/z5;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/v5;->U(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
