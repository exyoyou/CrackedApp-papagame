.class Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;->_initHiltInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity$a;->a:Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onContextAvailable(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity$a;->a:Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/Hilt_HMCloudMainTestActivity;->inject()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
