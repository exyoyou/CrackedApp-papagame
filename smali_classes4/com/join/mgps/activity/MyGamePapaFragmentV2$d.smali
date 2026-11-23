.class Lcom/join/mgps/activity/MyGamePapaFragmentV2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/d0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyGamePapaFragmentV2;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$d;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$d;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->i0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$d;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goDownloadSettingActivity(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
